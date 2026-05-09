# Lesson 8: Going Deeper

Once the basics feel normal, go deeper in this order.

## 1. Text Objects

Text objects let you edit things by meaning.

```text
ciw     change inner word
ci"     change inside quotes
ca"     change around quotes
ci(     change inside parentheses
da(     delete around parentheses
vip     select inner paragraph
```

Practice:

```text
name = "wrong value"
send_email(old_user, old_subject, old_body)
```

Try:

```text
ci"
ci(
```

Then open:

```vim
:e 11_text_objects.txt
```

## 2. Dot Repeat

`.` repeats your last change.

Example:

```text
TODO one
TODO two
TODO three
```

Do:

```text
/TODO
cwDONE<Esc>
n.
n.
```

This is one of the biggest speed boosts in Vim.

## 3. Macros

Macros record and replay edits.

```text
qa      record into register a
q       stop recording
@a      replay macro a
@@      replay last macro
5@a     replay five times
```

Then open:

```vim
:e 12_macros.txt
```

## 4. LSP

LSP turns Neovim into a code-aware editor.

Useful keys:

```text
K             hover docs
gd            go to definition
gr            references
<leader>cr    rename
<leader>ca    code action
<leader>cf    format
[d            previous diagnostic
]d            next diagnostic
```

Useful commands:

```vim
:LspInfo
:Mason
:checkhealth
```

Then open:

```vim
:e 13_lsp_code_actions.txt
```

## 5. Help System

Neovim's help is excellent.

```vim
:help number
:help relativenumber
:help motion.txt
:help text-objects
:help usr_toc
```

Inside help:

```text
Ctrl+]     jump into help tag
Ctrl+o     jump back
q          close help window
```

## 6. Your First Config Edits

Start small.

In:

```text
~/.config/nvim/lua/config/options.lua
```

Try:

```lua
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.cursorline = true
```

In:

```text
~/.config/nvim/lua/config/keymaps.lua
```

Try:

```lua
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
```

Restart Neovim after config changes.

## Beginner To Advanced Map

```text
Stage 1: modes, movement, save/open/quit
Stage 2: search, replace, buffers, splits
Stage 3: LazyVim picker, explorer, grep, which-key
Stage 4: text objects, dot repeat, registers
Stage 5: macros, project-wide edits
Stage 6: LSP, diagnostics, rename, code actions
Stage 7: plugins, extras, custom config
```

## Final Drill

Open these in order:

```vim
:e lazyvim-basics/03_options_numbers.md
:vsp lazyvim-basics/06_shortcuts_leader.md
:sp 08_quick_ref.txt
```

Now practice:

```text
Ctrl+w h
Ctrl+w l
Ctrl+w j
Ctrl+w k
Ctrl+w =
Ctrl+w o
```

If you can move around that layout without panic, you are getting comfortable.

