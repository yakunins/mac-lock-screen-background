dir="$HOME/Pictures/Wallpapers/"
lockScreenImg="lock-screen.png"

cd $dir
screencapture $lockScreenImg

Scale=$(( 7 ))
DivPercent=$(( 100 / $Scale ))
MulPercent=$(( 100 * $Scale ))

# blurred image
#convert -resize "$DivPercent%" $lockScreenImg $lockScreenImg
#convert -resize "$MulPercent%" $lockScreenImg $lockScreenImg

# pixelated image
convert -scale "$DivPercent%" $lockScreenImg $lockScreenImg
convert -scale "$MulPercent%" $lockScreenImg $lockScreenImg

