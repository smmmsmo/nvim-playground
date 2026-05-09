# Lesson 7: Simple Command Practice

This lesson is a small gym. Do the reps.

## Round 1: Save, Quit, Edit

Commands:

```vim
:w
:q
:wq
:q!
:e filename
```

Practice:

```vim
:e lazyvim-basics/scratch_01.txt
```

Type anything.

Save:

```vim
:w
```

Open another scratch:

```vim
:e lazyvim-basics/scratch_02.txt
```

Go back to previous buffer:

```text
Ctrl+^
```

## Round 2: Numbers

Turn on hybrid line numbers:

```vim
:set number relativenumber
```

Move:

```text
5j
5k
10j
10k
```

Ask values:

```vim
:set number?
:set relativenumber?
```

Turn relative numbers off:

```vim
:set norelativenumber
```

Turn them back on:

```vim
:set relativenumber
```

## Round 3: Search

Use this block:

```text
red blue green yellow
blue green yellow red
green yellow red blue
yellow red blue green
```

Search:

```vim
/green
```

Move through results:

```text
n
N
```

Clear highlight:

```vim
:noh
```

## Round 4: Replace

Use this block:

```text
old old old
old value here
keep this old thing
```

Replace on one line:

```vim
:s/old/new/g
```

Replace in whole file:

```vim
:%s/old/new/g
```

Replace with confirmation:

```vim
:%s/old/new/gc
```

Confirmation keys:

```text
y    yes
n    no
a    all
q    quit
```

## Round 5: Buffers

Open three files:

```vim
:e 01_modes.txt
:e 02_moving_around.txt
:e lazyvim-basics/07_command_practice.md
```

List buffers:

```vim
:ls
```

Switch by name:

```vim
:b 01_modes
```

Next and previous:

```vim
:bn
:bp
```

Alternate:

```text
Ctrl+^
```

## Round 6: Windows

Split:

```vim
:vsp lazyvim-basics/03_options_numbers.md
```

Move:

```text
Ctrl+w h
Ctrl+w l
Ctrl+w w
```

Equalize:

```text
Ctrl+w =
```

Close other windows:

```text
Ctrl+w o
```

## Round 7: LazyVim Shortcuts

Find file:

```text
<leader>ff
```

Search project:

```text
<leader>fg
```

Open explorer:

```text
<leader>e
```

Open recent files:

```text
<leader>fr
```

## Scorecard

Mark what you can do without notes:

```text
[ ] Save with :w
[ ] Quit with :q
[ ] Force quit with :q!
[ ] Open a file with :e
[ ] Turn on line numbers
[ ] Turn on relative numbers
[ ] Search with /
[ ] Replace with :s
[ ] List buffers with :ls
[ ] Split with :vsp
[ ] Move windows with Ctrl+w
[ ] Find files with <leader>ff
[ ] Search project with <leader>fg
```

Next:

```vim
:e lazyvim-basics/08_deeper_next.md
```

