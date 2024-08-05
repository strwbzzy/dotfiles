# hi there
![preview](https://github.com/strwbzzy/dotfiles/blob/caf62dca415ee6a7b732eb3887193687a6ca8bdc/image/preview.png)
- bar: [sketchybar](https://github.com/FelixKratz/SketchyBar)
- wm: [amethyst](https://ianyh.com/amethyst/)
- terminal: [iterm2](https://iterm2.com/) ([zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) x [starship](https://starship.rs/))
- other: [jankyborders](https://github.com/FelixKratz/JankyBorders), [cmatrix](https://github.com/abishekvashok/cmatrix)
## sketchybar
![original bar](.config/sketchybar/screenshot.png)
based on [slano-ls' dots](https://github.com/slano-ls/SketchyBar), with screenshot of the original bar above.
### how to
1. sketchybar
```bash
brew tap FelixKratz/formulae
brew install sketchybar
```
2. font
```bash
brew install --cask font-sf-pro
```
3. clone my config
```bash
git clone https://github.com/strwbzzy/dotfiles
```
4. move files 
```bash
cd dotfiles/.config 
mv .config/sketchybar ~/.config/
```