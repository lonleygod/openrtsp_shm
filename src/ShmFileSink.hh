#ifndef _SHM_FILE_SINK_HH
#define _SHM_FILE_SINK_HH

#ifndef _FILE_SINK_HH
#include "FileSink.hh"
#endif

class ShmFileSink: public FileSink {
    public:
          static ShmFileSink* createNew(UsageEnvironment& env, char const* fileName,unsigned bufferSize = 100000,Boolean oneFilePerFrame = False);
                // See "FileSink.hh" for a description of these parameters.

          void addData(unsigned char const* data, unsigned dataSize,
                                                 struct timeval presentationTime);
          
          void afterGettingFrame(unsigned frameSize,
                 unsigned numTruncatedBytes,
                 struct timeval presentationTime);
    protected:
            ShmFileSink(UsageEnvironment& env, FILE* fid,
                                                unsigned bufferSize, char const* perFrameFileNamePrefix);
                  // called only by createNew()
              virtual ~ShmFileSink();
};

#endif
