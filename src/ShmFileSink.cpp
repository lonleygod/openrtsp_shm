#include "ShmFileSink.hh"
#include "OutputFile.hh"
ShmFileSink
::ShmFileSink(UsageEnvironment& env, FILE* fid,unsigned bufferSize, char const* perFrameFileNamePrefix)
:FileSink(env,fid,bufferSize,perFrameFileNamePrefix)
{

}

ShmFileSink:: ~ShmFileSink(){
}



ShmFileSink* ShmFileSink::createNew(UsageEnvironment& env, char const* fileName,
                  unsigned bufferSize, Boolean oneFilePerFrame) {
  do {
    FILE* fid;
    char const* perFrameFileNamePrefix;
    if (oneFilePerFrame) {
      // Create the fid for each frame
      fid = NULL;
      perFrameFileNamePrefix = fileName;
    } else {
      // Normal case: create the fid once
      fid = OpenOutputFile(env, fileName);
      if (fid == NULL) break;
      perFrameFileNamePrefix = NULL;
    }

    return new ShmFileSink(env, fid, bufferSize, perFrameFileNamePrefix);
  } while (0);

  return NULL;
}


void ShmFileSink::addData(unsigned char const* data, unsigned dataSize,
                           struct timeval presentationTime) {
 printf("hello buaa!\n");
     if (fPerFrameFileNameBuffer != NULL && fOutFid == NULL) {
              // Special case: Open a new file on-the-fly for this frame
              if (presentationTime.tv_usec == fPrevPresentationTime.tv_usec &&
                              presentationTime.tv_sec == fPrevPresentationTime.tv_sec) {
                        // The presentation time is unchanged from the previous frame, so we add a 'counter'
                        // suffix to the file name, to distinguish them:
                        sprintf(fPerFrameFileNameBuffer, "%s-%lu.%06lu-%u", fPerFrameFileNamePrefix,
                                              presentationTime.tv_sec, presentationTime.tv_usec, ++fSamePresentationTimeCounter);
                            } else {
                                      sprintf(fPerFrameFileNameBuffer, "%s-%lu.%06lu", fPerFrameFileNamePrefix,
                                                            presentationTime.tv_sec, presentationTime.tv_usec);
                                            fPrevPresentationTime = presentationTime; // for next time
                                                  fSamePresentationTimeCounter = 0; // for next time
                                                      }
                  fOutFid = OpenOutputFile(envir(), fPerFrameFileNameBuffer);
                    }

        // Write to our file:
#ifdef TEST_LOSS
        static unsigned const framesPerPacket = 10;
          static unsigned const frameCount = 0;
            static Boolean const packetIsLost;
              if ((frameCount++)%framesPerPacket == 0) {
                      packetIsLost = (our_random()%10 == 0); // simulate 10% packet loss #####
                        }

                if (!packetIsLost)
#endif
                    if (fOutFid != NULL && data != NULL) {
                            fwrite(data, 1, dataSize, fOutFid);
                              }
}



void ShmFileSink::afterGettingFrame(unsigned frameSize,
                             unsigned numTruncatedBytes,
                                              struct timeval presentationTime)
{

    printf("welcome to beijing!!!!\n");
    if (numTruncatedBytes > 0) 
      {
              envir() << "FileSink::afterGettingFrame(): The input frame data was too large for our buffer size ("
                          << fBufferSize << ").  "
                                      << numTruncatedBytes << " bytes of trailing data was dropped!  Correct this by increasing the \"bufferSize\" parameter in the \"createNew()\" call to at least "
                                                  << fBufferSize + numTruncatedBytes << "\n";
    }
        addData(fBuffer, frameSize, presentationTime);

          if (fOutFid == NULL || fflush(fOutFid) == EOF) {
                  // The output file has closed.  Handle this the same way as if the input source had closed:
                  if (fSource != NULL) fSource->stopGettingFrames();
                      onSourceClosure();
                          return;
                            }

            if (fPerFrameFileNameBuffer != NULL) {
                    if (fOutFid != NULL) { fclose(fOutFid); fOutFid = NULL; }
                      }

              // Then try getting the next frame:
              continuePlaying();
}
