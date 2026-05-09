# Lesson 4: Themes And UI Basics

Themes are called colorschemes in Vim.

Try a colorscheme live:

```vim
:colorscheme habamax
```

Another built-in one:

```vim
:colorscheme desert
```

If LazyVim installed extra themes, you may have names like:

```vim
:colorscheme tokyonight
:colorscheme catppuccin
:colorscheme gruvbox
```

If a theme is not installed, Neovim will tell you.

## See Available Colorschemes

Type:

```vim
:colorscheme 
```

Then press `Tab`.

Neovim will complete available names.

## LazyVim Theme Config

LazyVim often sets theme through plugin specs.

A common file:

```text
~/.config/nvim/lua/plugins/colorscheme.lua
```

Example:

```lua
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
```

Another example with Catppuccin:

```lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
```

## Do Not Install Ten Themes At Once

Beginner-safe approach:

1. Pick one theme.
2. Add one plugin file.
3. Run `:Lazy sync`.
4. Restart Neovim.
5. If it works, keep it.

Small config changes are easier to debug.

## Statusline, Bufferline, And UI Pieces

LazyVim usually includes UI plugins for:

```text
statusline     bottom information bar
bufferline     open buffer tabs near top
notifications  popup messages
dashboard      startup screen
which-key      shortcut menu
```

Useful commands:

```vim
:Lazy
:LazyExtras
:checkhealth
```

## Font And Icons

If icons look broken, your terminal font may not support Nerd Font symbols.

Fix:

1. Install a Nerd Font.
2. Set your terminal font to that Nerd Font.
3. Restart terminal and Neovim.

Good common choices:

```text
JetBrainsMono Nerd Font
FiraCode Nerd Font
Hack Nerd Font
```

## Practice

Try built-in themes:

```vim
:colorscheme habamax
:colorscheme desert
:colorscheme default
```

Try completion:

```vim
:colorscheme <Tab>
```

Open Lazy UI:

```vim
:Lazy
```

Close windows/panels:

```text
q
```

or:

```vim
:q
```

## Checkpoint

- I know themes are called colorschemes.
- I can try a theme with `:colorscheme name`.
- I can use Tab completion for colorscheme names.
- I know permanent theme config usually belongs in `lua/plugins/`.
- I know broken icons usually mean terminal font issue.

Next:

```vim
:e lazyvim-basics/05_plugins_extensions.md
```

