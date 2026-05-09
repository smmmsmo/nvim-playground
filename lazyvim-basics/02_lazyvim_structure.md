# Lesson 2: How LazyVim Is Structured

LazyVim is not one giant config file. It is a starter setup built on top of
Neovim and lazy.nvim.

Think of it like this:

```text
Neovim
  -> lazy.nvim plugin manager
    -> LazyVim base config
      -> your personal config files
```

## Where Your Config Usually Lives

On macOS/Linux:

```text
~/.config/nvim/
```

Common LazyVim files:

```text
~/.config/nvim/init.lua
~/.config/nvim/lua/config/options.lua
~/.config/nvim/lua/config/keymaps.lua
~/.config/nvim/lua/config/autocmds.lua
~/.config/nvim/lua/plugins/
```

## What Each File Is For

```text
init.lua
```

Starts your config. In LazyVim, this usually loads the LazyVim setup.

```text
lua/config/options.lua
```

Editor options:

```lua
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
```

```text
lua/config/keymaps.lua
```

Your custom shortcuts:

```lua
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
```

```text
lua/config/autocmds.lua
```

Automatic actions. Example: highlight text after yanking.

```text
lua/plugins/
```

Your plugin specs. One file can add one plugin or many plugins.

## LazyVim Commands You Should Know

```vim
:Lazy
```

Open the plugin manager UI.

```vim
:Lazy sync
```

Install/update plugins based on your config.

```vim
:Lazy health
```

Check plugin health.

```vim
:LazyExtras
```

Enable or disable LazyVim extras.

```vim
:Mason
```

Install language servers, formatters, linters, and debuggers.

```vim
:LspInfo
```

See which language servers are attached to the current buffer.

## The Mental Model

Use this rule:

```text
Changing editor behavior?       options.lua
Changing your shortcuts?        keymaps.lua
Changing automatic events?      autocmds.lua
Adding plugins/extensions?      lua/plugins/
Adding language tools?          :Mason or LazyVim extras
```

## Safe Beginner Habit

Before changing config, open it with LazyVim:

```text
<leader>ff
```

Search:

```text
options.lua
keymaps.lua
plugins
```

Then make small changes, save, and restart Neovim.

## Practice

Inside Neovim, run:

```vim
:pwd
```

Now open your real config directory if it exists:

```vim
:e ~/.config/nvim/
```

Look around. Do not edit yet. Just learn the map.

Find:

```text
options.lua
keymaps.lua
plugins/
```

If a file is missing, that is okay. LazyVim versions and personal setups differ.

## Checkpoint

- I know LazyVim builds on Neovim plus lazy.nvim.
- I know `options.lua` is for editor settings.
- I know `keymaps.lua` is for custom shortcuts.
- I know plugins usually live in `lua/plugins/`.
- I know `:Lazy`, `:LazyExtras`, `:Mason`, and `:LspInfo`.

Next:

```vim
:e lazyvim-basics/03_options_numbers.md
```

