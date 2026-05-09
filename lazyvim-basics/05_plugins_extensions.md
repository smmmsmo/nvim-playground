# Lesson 5: Plugins, Extensions, Mason, And LazyExtras

Plugins extend Neovim.

LazyVim uses `lazy.nvim` to manage plugins.

Open plugin manager:

```vim
:Lazy
```

Common actions inside Lazy:

```text
u    update
s    sync
c    check
l    log
q    quit
```

You can also run:

```vim
:Lazy sync
:Lazy update
:Lazy check
```

## What Is A Plugin Spec?

A plugin spec is Lua data that tells lazy.nvim what to install and configure.

Example:

```lua
return {
  "tpope/vim-surround",
}
```

A bigger example:

```lua
return {
  {
    "folke/todo-comments.nvim",
    opts = {
      signs = true,
    },
  },
}
```

These files usually live in:

```text
~/.config/nvim/lua/plugins/
```

## LazyVim Extras

LazyVim Extras are prebuilt plugin/config bundles.

Open extras:

```vim
:LazyExtras
```

Examples you may see:

```text
lang.typescript
lang.python
lang.go
formatting.prettier
linting.eslint
editor.mini-files
ui.mini-animate
```

Use extras when LazyVim already has a good bundle for what you need.

## Mason Is Different

`:Lazy` manages Neovim plugins.

`:Mason` manages external tools:

```text
language servers
formatters
linters
debug adapters
```

Examples:

```text
lua-language-server
typescript-language-server
prettier
stylua
eslint_d
pyright
ruff
```

Open Mason:

```vim
:Mason
```

## Simple Difference

```text
Plugin needed?             :Lazy
Language tool needed?      :Mason
LazyVim preset wanted?     :LazyExtras
LSP attached or not?       :LspInfo
Health check?              :checkhealth
```

## Beginner Plugin Rules

- Add one plugin at a time.
- Read the plugin README.
- Prefer LazyVim extras before custom setup.
- Restart Neovim after plugin changes.
- If something breaks, inspect `:messages`.
- Keep plugin files small and named clearly.

Good file names:

```text
colorscheme.lua
editing.lua
git.lua
markdown.lua
ui.lua
```

## Practice Without Installing Anything

Open:

```vim
:Lazy
```

Look for:

```text
LazyVim
telescope or snacks
which-key
nvim-treesitter
mason
conform
```

Then open:

```vim
:Mason
```

Look for installed language tools.

Then run:

```vim
:LspInfo
```

Inside a JavaScript, Lua, Python, or Markdown file, this shows whether an LSP is
attached.

## Checkpoint

- I know `:Lazy` is for plugins.
- I know `:Mason` is for external language tools.
- I know `:LazyExtras` enables LazyVim bundles.
- I know plugin specs usually live in `lua/plugins/`.
- I know to add plugins slowly.

Next:

```vim
:e lazyvim-basics/06_shortcuts_leader.md
```

