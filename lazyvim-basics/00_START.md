# LazyVim Basics Mini-Course

This folder is a second learning track inside `nvim-playground`.

Use it when you want to understand:

- how LazyVim is structured
- how Vim commands are built
- how line numbers and relative numbers work
- how to change themes
- how plugins/extensions are added
- how leader shortcuts work
- how to move from basic commands into advanced editing

## How To Open This Course

From the repo root:

```vim
:e lazyvim-basics/00_START.md
```

Or with LazyVim:

```text
<leader>ff
```

Then search for:

```text
lazyvim-basics
```

In LazyVim, `<leader>` usually means `Space`.

## Lesson Order

1. `01_command_language.md`
   Learn the basic shape of Vim commands.

2. `02_lazyvim_structure.md`
   Learn where LazyVim config files live and what they do.

3. `03_options_numbers.md`
   Learn line numbers, relative numbers, tabs, wrap, cursorline, and options.

4. `04_themes_ui.md`
   Learn colorschemes, transparency basics, statusline, and UI commands.

5. `05_plugins_extensions.md`
   Learn plugins, extras, Mason, Lazy, and safe plugin habits.

6. `06_shortcuts_leader.md`
   Learn leader keys, which-key, common LazyVim shortcuts, and custom mappings.

7. `07_command_practice.md`
   Practice basic commands until they feel normal.

8. `08_deeper_next.md`
   Move into text objects, macros, LSP, diagnostics, and real workflows.

## Daily Routine

Open one lesson in a split beside a practice file:

```vim
:vsp lazyvim-basics/01_command_language.md
```

Then move between windows:

```text
Ctrl+w h
Ctrl+w l
```

Do not try to memorize everything in one day. Neovim gets easier when commands
become tiny physical habits.

## Tiny Rule

When confused:

```vim
:help thing
```

Examples:

```vim
:help number
:help relativenumber
:help mapleader
:help usr_toc
```

