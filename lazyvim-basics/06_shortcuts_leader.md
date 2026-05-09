# Lesson 6: Shortcuts, Leader, And Which-Key

LazyVim shortcuts are organized around the leader key.

Most LazyVim setups use:

```text
Space
```

as `<leader>`.

So this:

```text
<leader>ff
```

means:

```text
Space f f
```

## Which-Key

Press `Space` and wait.

You should see a shortcut menu.

Try:

```text
Space
Space f
Space s
Space c
Space b
Space g
```

Do not rush. Which-key is there to teach you.

## Common LazyVim Shortcut Groups

These may vary by LazyVim version, but the pattern is common.

```text
<leader>f    find/files
<leader>s    search
<leader>b    buffers
<leader>c    code
<leader>g    git
<leader>u    UI toggles
<leader>x    diagnostics/trouble
```

## Daily Shortcuts

```text
<leader>ff    find files
<leader>fr    recent files
<leader>fg    grep/search text in project
<leader>e     explorer
<leader>bb    buffer picker
<leader>bd    close/delete buffer
<leader>ca    code action
<leader>cr    rename symbol
<leader>cf    format
```

Buffer movement:

```text
Shift+h       previous buffer
Shift+l       next buffer
Ctrl+^        alternate buffer
```

Window movement:

```text
Ctrl+w h      left window
Ctrl+w j      lower window
Ctrl+w k      upper window
Ctrl+w l      right window
Ctrl+w w      next window
```

## Custom Keymaps

Custom mappings usually go here:

```text
~/.config/nvim/lua/config/keymaps.lua
```

Example:

```lua
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
```

Breakdown:

```text
vim.keymap.set       create a mapping
"n"                  normal mode
"<leader>w"          keys you press
"<cmd>w<cr>"         command that runs
desc                 description for which-key
```

Modes:

```text
n    normal
i    insert
v    visual
x    visual selection
t    terminal
```

## Safe Custom Mappings

Good beginner mappings:

```lua
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit window" })
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
```

Avoid remapping core keys like:

```text
h j k l
d
c
y
:
/
```

Learn Vim's language first.

## Practice

1. Press `Space` and wait.
2. Press `f` and wait.
3. Press `Esc`.
4. Press `Space s` and wait.
5. Press `Esc`.
6. Press `Space b` and wait.
7. Press `Esc`.

Now write down five mappings you discovered:

```text
1.
2.
3.
4.
5.
```

## Checkpoint

- I know `<leader>` usually means Space.
- I can discover mappings with which-key.
- I know common groups: files, search, buffers, code, git.
- I know custom mappings usually go in `keymaps.lua`.
- I understand the basic `vim.keymap.set` shape.

Next:

```vim
:e lazyvim-basics/07_command_practice.md
```

