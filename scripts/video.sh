# convert AC3 audio to mp3
ffmpeg -i input.mkv -vcodec copy -acodec libmp3lame -ab 128k output.mkv
