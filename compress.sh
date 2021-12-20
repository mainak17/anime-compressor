# both input and output format of the file is .mkv
# input.mkv is the input file prefferably in 1080p
# output.mkv will be generated based on that input file
# change "input.mkv" to the input video name Eg. "[SubsPlease] Mushoku Tensei - 23 (1080p) [63077C59].mkv"
# change "output.mkv" to the output video name Eg. "Mushoku Tensei - 23 (1080p).mkv"
# This program will compress the video to 1080p so even you provide lesser quality input.mkv it will take the same time. read README.md for more info.
# Steps to use:
# Install ffmpeg
# add ffmpeg to the path
# open cmd and navigate to where the input file is located
# edit the input and output video names in the command below(line 14) according to your files
# paste the updated command on the cmd and wait for the program to compress your file
# Enjoy!
ffmpeg -i "input.mkv" -map 0:v -map 0:a -b:a 192k -c:a aac -c:v libx265 -color_primaries 1 -color_range 1 -color_trc 1 -colorspace 1 -crf 24.2 -map 0:s? -pix_fmt yuv420p -preset slow -profile:v main -vf smartblur=1.5:-0.35:-3.5:0.65:0.25:2.0,scale=1920:1080:spline16+accurate_rnd+full_chroma_int -x265-params me=2:rd=4:subme=7:aq-mode=3:aq-strength=1:deblock=1,1:psy-rd=1:psy-rdoq=1:rdoq-level=2:merange=57:bframes=8:b-adapt=2:limit-sao=1:frame-threads=3:no-info=1 "output.mkv" -y