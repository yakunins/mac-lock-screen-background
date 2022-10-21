# Requirements:
# > brew install imagemagick
# > brew install karabiner
# > brew install --cask keepingyouawake
# permissions for karabiner_elemets to capture screen

echo "Custom lockscreen script started."

# Needed to zsh have an access to homebrew's packages
PATH=$PATH:/opt/homebrew/bin:/opt/homebrew/sbin:

#echo $SHELL
#echo $PATH

cd $HOME/Pictures/Wallpapers/

# generate lock screen image
source ./generate-lockscreen-image.sh

# set lockscreen image
source ./set-lockscreen.sh

# lock
source ./just-lock.sh

function screenIsLocked { [ "$(/usr/libexec/PlistBuddy -c "print :IOConsoleUsers:0:CGSSessionScreenIsLocked" /dev/stdin 2>/dev/null <<< "$(ioreg -n Root -d1 -a)")" = "true" ] && return 0 || return 1; }
function screenIsUnlocked { [ "$(/usr/libexec/PlistBuddy -c "print :IOConsoleUsers:0:CGSSessionScreenIsLocked" /dev/stdin 2>/dev/null <<< "$(ioreg -n Root -d1 -a)")" != "true" ] && return 0 || return 1; }
  
# hour = 3600 seconds
# day = 86400 seconds 
for ((i=1; i<=86400; i=i+1))
do 
  sleep 1
  if screenIsLocked; then
    echo "Screen locked..."
  fi

  if screenIsUnlocked; then
    echo "Screen unlocked, exiting loop, setting wallpaper back..."
    i=1000000
  fi
done

# set wallpaper back
source ./set-default-wallpaper.sh
