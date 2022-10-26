# Custom background for lock screen (MacOS Monterey)

Simple script that:
- generates pixelized image of current screen,
- puts `lock-screen.png` into `~/Pictures/Wallpapers/`,
- sets it as desktop wallpaper,
- locks Mac,
- start waiting for unlock, then...
- ...sets `default-wallpaper.png` back as a desktop wallpaper.

Based on Hund's recommendations, see https://hund.tty1.se/2018/09/04/use-a-pixelated-version-of-your-desktop-as-your-lockscreen-with-i3lock.html

# Installation
1. Put repo's content into `$HOME` folder
2. Open terminal
3. Install required tools:
```bash
# makes pixelazed image with `convert` command
brew install imagemagick

# to create shortcut for launching ~/.config/lock.sh
brew install karabiner

# prevents lock screen from turning display off
brew install --cask keepingyouawake
```
4. perform test run:
```bash
cd ~/.config/
lock.sh
```
5. it should lock your Mac with pixelized screenshot,  
and on unlock set back `~/Pictures/Wallpapers/default-wallpaper.png`
6. attach script to the key `scroll_lock` with karabiner,  
e.g. modify `rules` section of `~/.config/karabiner/karabiner.json` with:
```json
"manipulators": [
    {
        "description": "scroll_lock to run ~/.config/lock.sh",
        "from": {
            "key_code": "scroll_lock",
            "modifiers": {
                "optional": [
                    "any"
                ]
            }
        },
        "to": [
            {
		"shell_command": "/bin/zsh ~/.config/lock.sh"
            }
        ],
        "type": "basic"
    }
]
```

# Configuration
1. replace `~/Pictures/Wallpapers/default-wallpaper.png` with your own wallpaper image
2. setup other than `scroll_lock` key in karabiner to lock your Mac
3. set your own lock screen picture, by commentin out a two lines inside `generate-lockscreen-image.sh` which generates pixelated screenshot

# Troubleshooting
1. set permissions for all the scripts
2. set permissions for karabiner

Cheers! 

<summary>
<h1> 🍻 💝 </h1>  
<h1>  </h1>   
<h1> 🍻 💝 </h1>  
</summary>





