# custom background for lock screen (MacOS Monterey)

Simple script that:
- generates pixelized image of screenshot,
- sets it as desktop wallpaper,
- locks Mac,
- start waiting for unlock, then...
- sets default-wallpaper.pngback to the desktop.

Based on Hund's recommendations, see https://hund.tty1.se/2018/09/04/use-a-pixelated-version-of-your-desktop-as-your-lockscreen-with-i3lock.html

# Installation
1. Put contents into $HOME folder
2. Open terminal
3. Run installation of required tools:
```bash
# makes pixelazed image
brew install imagemagick

# to create shortcut for launching lock.sh
brew install karabiner

# prevents lock screen from turning display off
brew install --cask keepingyouawake
```
4. perform test run:
```bash
cd ~/.config/
lock.sh
```
5. it should lock your Mac with pixelized screenshot
6. attach script to the key with karabiner, modify rules section of `~/.config/karabiner/karabiner.json` with:
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

Cheers!


