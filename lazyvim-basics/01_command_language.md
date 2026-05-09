# Lesson 1: The Shape Of Vim Commands

Vim feels strange at first because it is not just an editor. It is a small
editing language.

The basic grammar is:

```text
verb + motion
```

Examples:

```text
d w    delete word
c w    change word
y y    yank line
d d    delete line
g g    go top
```

You are not pressing random shortcuts. You are giving tiny instructions.

## The Three Big Verbs

```text
d    delete
c    change
y    yank/copy
```

Try these in a practice file:

```text
dw   delete word
cw   change word
yy   copy current line
dd   delete current line
```

## Motions

Motions tell Vim where the verb should act.

```text
w    next word
b    previous word
e    end of word
0    start of line
$    end of line
gg   top of file
G    bottom of file
}
     next paragraph
{
     previous paragraph
```

So:

```text
d$   delete to end of line
yG   copy from here to end of file
c0   change back to start of line
```

## Counts

A number repeats the thing after it.

```text
5j    move down 5 lines
3w    jump forward 3 words
2dd   delete 2 lines
4yy   copy 4 lines
```

Mini-game:

Put cursor on START and land on TARGET using one command.

```text
START one two three four TARGET six seven
```

Answer:

```text
5w
```

## Commands That Start With Colon

When you press `:`, you enter command-line mode.

Common commands:

```vim
:w        save
:q        quit window
:wq       save and quit
:q!       quit without saving
:e file   edit/open file
:ls       list buffers
:help x   open help for x
```

The colon area is like Neovim's command terminal.

## Bang Means Force

In many commands, `!` means "force it".

```vim
:q!       quit and discard changes
:w!       force write if possible
```

Use `!` carefully. It is powerful.

## Practice Block

Open a scratch file:

```vim
:e lazyvim-basics/scratch_command_language.txt
```

Type these lines:

```text
apple banana cherry date
delete this whole line
keep this line but remove the ending garbage garbage garbage
change WRONG into RIGHT
```

Practice:

```text
dw       delete one word
dd       delete one line
d$       delete to end of line
cw       change one word
u        undo
Ctrl+r   redo
.        repeat last change
```

## Checkpoint

- I understand `verb + motion`.
- I can use `d`, `c`, and `y`.
- I can use counts like `3w` and `2dd`.
- I know that `:` opens command-line mode.

Next:

```vim
:e lazyvim-basics/02_lazyvim_structure.md
```

