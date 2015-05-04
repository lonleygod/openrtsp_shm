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






void ShmFileSink::afterGettingFrame(unsigned frameSize,
                             unsigned numTruncatedBytes,
                                              struct timeval presentationTime) {
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
