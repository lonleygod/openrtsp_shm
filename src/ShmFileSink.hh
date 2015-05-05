#ifndef _SHM_FILE_SINK_HH
#define _SHM_FILE_SINK_HH

#include "FileSink.hh"


#include <sys/shm.h>

#define BUFFER_LEN  (1*1024*1024 - 12)
#define SHARED_BUFFER_LEN (BUFFER_LEN + 12)
#define TRUE 1
#define FALSE 0
#pragma pack(push) //保存对齐状态

 #pragma pack(4)//设定为4字节对齐
 typedef struct {
  unsigned int readIndex;
  unsigned int writeIndex;
  unsigned int allowWrite;
  char buffer[BUFFER_LEN];
}circleBuffer;
#pragma pack(pop)


#define VIDEO_CHANNEL_COUNT 1






class ShmFileSink: public FileSink {
    public:
          static ShmFileSink* createNew(UsageEnvironment& env, char const* fileName,unsigned bufferSize = 100000,Boolean oneFilePerFrame = False);
                // See "FileSink.hh" for a description of these parameters.
          unsigned int writeBuffer(circleBuffer* circleBuf,unsigned char const* data,unsigned int length);
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
    private:
            int shmid[VIDEO_CHANNEL_COUNT],ret;  
            circleBuffer* circleBufferArray[VIDEO_CHANNEL_COUNT];
            void* membuff[VIDEO_CHANNEL_COUNT];
            int VIDEO_SHM_ID[VIDEO_CHANNEL_COUNT];
           
};

#endif
