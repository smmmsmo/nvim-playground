# Neovim Practice Playground

A beginner tutor — read it, do it, repeat it.
Every lesson is its own file. Work through them in order.

---

## How to use this playground

1. Open nvim from this folder:

   ```
   nvim .
   ```

   The `.` opens nvim's file explorer.

2. Navigate to a file and press `ENTER` to open it.

3. Each file has three sections:

   - **LEARN** — read the theory
   - **PRACTICE** — try it yourself
   - **CHECKPOINT** — self-test before moving on

---

## The lessons (do them in order)

| File | Topic |
| --- | --- |
| `01_modes.txt` | Normal, Insert, Visual, Command mode |
| `02_moving_around.txt` | Motion keys: `hjkl`, `w`, `b`, `e`, `0`, `$`, `gg`, `G` |
| `03_editing.txt` | `d`, `c`, `y`, `p`, `u`, `Ctrl+r` |
| `04_search.txt` | `/`, `?`, `n`, `N`, `*`, `#` |
| `05_buffers.txt` | Opening & switching between files |
| `06_windows.txt` | Splitting the screen |
| `07_files_nav.txt` | `:e`, `:Ex`, netrw, finding files |
| `08_quick_ref.txt` | Cheat sheet for everything above |
| `09_challenges.txt` | Mixed beginner challenges |
| `10_lazyvim_keys.txt` | LazyVim file picker, buffers, search, diagnostics |
| `11_text_objects.txt` | `ciw`, `ci"`, `da(`, visual selections, repeatable edits |
| `12_macros.txt` | Record and replay edits with `q`, `@`, `@@` |
| `13_lsp_code_actions.txt` | Rename, definition, hover, diagnostics, code actions |
| `14_real_world_drills.txt` | Longer editing workouts across many files |
| `15_code_fixing_drills.txt` | Code-focused drills: Python, HTML, YAML, shell |

### Practice data

- `practice/` — intentionally messy files for real editing drills

### Extra beginner track

- `lazyvim-basics/` — LazyVim structure, options, themes, plugins, shortcuts

---

## Golden rule

**Your hands stay on the home row.** Resist the arrow keys and the mouse.

---

## LazyVim note

LazyVim adds excellent shortcuts on top of normal nvim. This playground teaches both:

- **Vim language** keys that work everywhere: `d`, `c`, `y`, `/`, `%`, `.`, `q`
- **LazyVim workflow** keys: `<leader>ff`, `<leader>fg`, `<leader>e`, `gr`, `gd`, `K`

In LazyVim, `<leader>` is usually `SPACE`.
So `<leader>ff` means: press `SPACE`, then `f`, then `f`.

---

## Daily route

| Day | Lessons |
| --- | --- |
| Day 1 | `01`, `02`, `03` |
| Day 2 | `04`, `05`, `06`, `07` |
| Day 3 | `08` review + `09` challenges |
| Day 4 | `10`, `11` |
| Day 5 | `12`, `13` |
| Day 6 | `15` (code-fixing drills) |
| Day 7+ | repeat `14_real_world_drills.txt` until the motions feel boring |

**Tip:** keep `08_quick_ref.txt` open in a vertical split every day:

```
:vsp 08_quick_ref.txt
```

It is your cheat sheet — re-read it whenever a key feels rusty.

---

## Progress tracking

Each lesson ends with a `CHECKPOINT` block of `[ ]` items.
Mark them `[x]` only when you can do the action **without looking**.
That is your real signal you are done with the lesson.

You may also mark `[x]` next to specific keys inside a lesson body to track which motions you have actually drilled — useful for spotting which keys you keep avoiding.

---

## Ready?

Open `01_modes.txt` now:

```
:e 01_modes.txt
```

If you want simpler LazyVim setup lessons first, open:

```
:e lazyvim-basics/00_START.md
```
