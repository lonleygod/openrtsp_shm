#include "ShmFileSink.hh"

ShmFileSink
::ShmFileSink(UsageEnvironment& env, FILE* fid,unsigned bufferSize, char const* perFrameFileNamePrefix)
:FileSink(env,fid,bufferSize,perFrameFileNamePrefix)
{

}

ShmFileSink:: ~ShmFileSink(){
}
ShmFileSink* ShmFileSink::createNew(UsageEnvironment& env, char const* fileName,unsigned bufferSize,Boolean oneFilePerFrame)
{
        printf("\n\n\n$$$$$$$$$$$$$$$\n my filesink\n$$$$$$$$$$$$\n\n\n");
    do{
    FILE* fid;
    char const* perFrameFileNamePrefix;
    if (1) {
      // Create the fid for each frame
      fid = NULL;
      perFrameFileNamePrefix = fileName;
    } else {
      // Normal case: create the fid once
//      fid = OpenOutputFile(env, fileName);
      if (fid == NULL) break;
      perFrameFileNamePrefix = NULL;
    }

    return new ShmFileSink(env, fid, bufferSize, perFrameFileNamePrefix);
  } while (0);

  return NULL;

            //return new ShmFileSink(env, NULL, bufferSize, fileName);
}

