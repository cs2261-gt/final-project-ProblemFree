SOUND soundA;
SOUND soundB;

#define SOUND_FREQ 11025

void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();

void pauseSoundA();
void unpauseSoundA();
void stopSoundA();

void pauseSoundB();
void unpauseSoundB();
void stopSoundB();
