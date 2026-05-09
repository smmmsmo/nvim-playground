# Lesson 3: Options, Line Numbers, And Relative Numbers

Options change how Neovim behaves.

You can test options live with `:set`, then make them permanent in
`~/.config/nvim/lua/config/options.lua`.

## Normal Line Numbers

Show absolute line numbers:

```vim
:set number
```

Short version:

```vim
:set nu
```

Hide line numbers:

```vim
:set nonumber
```

Short version:

```vim
:set nonu
```

## Relative Line Numbers

Relative numbers show distance from your cursor.

Turn them on:

```vim
:set relativenumber
```

Short version:

```vim
:set rnu
```

Turn them off:

```vim
:set norelativenumber
```

Short version:

```vim
:set nornu
```

## Why Relative Numbers Are Useful

Look at a line 7 rows below you.

Instead of pressing `j` seven times, press:

```text
7j
```

Want to delete 4 lines below?

```text
4dd
```

Want to yank 6 lines?

```text
6yy
```

Relative numbers are not decoration. They are a measuring tool.

## Hybrid Numbers

Many Vim users like both:

```vim
:set number relativenumber
```

This shows:

- current line: real line number
- other lines: relative distance

Permanent LazyVim config:

```lua
-- ~/.config/nvim/lua/config/options.lua
vim.opt.number = true
vim.opt.relativenumber = true
```

## Other Beginner Options

Line wrap:

```vim
:set wrap
:set nowrap
```

Cursor line:

```vim
:set cursorline
:set nocursorline
```

Show invisible characters:

```vim
:set list
:set nolist
```

Tabs and spaces:

```vim
:set tabstop=2
:set shiftwidth=2
:set expandtab
```

Search behavior:

```vim
:set ignorecase
:set smartcase
:set hlsearch
:set incsearch
```

## Toggle Style

Options that are on/off often use this pattern:

```vim
:set option
:set nooption
```

Examples:

```vim
:set number
:set nonumber

:set wrap
:set nowrap

:set cursorline
:set nocursorline
```

## Practice: Number Gym

Turn on hybrid numbers:

```vim
:set number relativenumber
```

Move around:

```text
5j
5k
10j
10k
3dd
u
4yy
p
u
```

Use this block:

```text
line 01: apples
line 02: bananas
line 03: cherries
line 04: dates
line 05: elderberries
line 06: figs
line 07: grapes
line 08: honeydew
line 09: ita palm
line 10: jackfruit
line 11: kiwi
line 12: lemon
line 13: mango
line 14: nectarine
line 15: orange
```

Challenge:

- Jump from line 01 to line 09 using one movement.
- Delete exactly three fruit lines, then undo.
- Yank five lines, paste them below, then undo.

## Check Current Option Values

Ask Neovim what an option is set to:

```vim
:set number?
:set relativenumber?
:set wrap?
:set tabstop?
```

## Checkpoint

- I can turn line numbers on/off.
- I can turn relative numbers on/off.
- I understand why relative numbers help with counts.
- I know temporary settings use `:set`.
- I know permanent LazyVim options go in `options.lua`.

Next:

```vim
:e lazyvim-basics/04_themes_ui.md
```

