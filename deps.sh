apt-get install -y alsa-utils libasound2-dev

echo "#!/bin/bash" > /usr/bin/sound_start
echo "amixer cset numid=3 1" >> /usr/bin/sound_start
echo "amixer -c 3 set PCM 1dB+" >> /usr/bin/sound_start
chmod a+x /usr/bin/sound_start
