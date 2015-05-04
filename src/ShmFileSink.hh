#ifndef _SHM_FILE_SINK_HH
#define _SHM_FILE_SINK_HH

#ifndef _FILE_SINK_HH
#include "FileSink.hh"
#endif

class ShmFileSink: public FileSink {
    public:
          static ShmFileSink* createNew(UsageEnvironment& env, char const* fileName,unsigned bufferSize = 100000,Boolean oneFilePerFrame = False);
                // See "FileSink.hh" for a description of these parameters.

    protected:
            ShmFileSink(UsageEnvironment& env, FILE* fid,
                                                unsigned bufferSize, char const* perFrameFileNamePrefix);
                  // called only by createNew()
              virtual ~ShmFileSink();
};

#endif
