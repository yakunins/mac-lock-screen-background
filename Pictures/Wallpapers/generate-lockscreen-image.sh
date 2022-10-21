dir="$HOME/Pictures/Wallpapers/"
lockScreenImg="lock-screen.png"

cd $dir
screencapture $lockScreenImg

# blurred image
#convert -resize 10% $lockScreenImg $lockScreenImg
#convert -resize 1000% $lockScreenImg $lockScreenImg

# pixelated image
convert -scale 5% $lockScreenImg $lockScreenImg
convert -scale 2000% $lockScreenImg $lockScreenImg

