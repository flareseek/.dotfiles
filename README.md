# install
```bash
$ ./setup.sh -e tmux # exclude tmux
```
no arguments: setup all <br>
argument: setup configs <br>
-e: exclude <br>
-r: unlink <br>

## config list
`tmux` `wezterm` `nvim`

----
### tmux

<img width="3024" height="1888" alt="image" src="https://github.com/user-attachments/assets/c752ab44-373b-4423-973a-e9d36bf9f7e3" />

prefix: `ctrl-g`

## Window

| Shortcut                  | Action           |
|---------------------------|------------------|
| **prefix + n**            | new-window       |
| **prefix + tab**          | next-window      |
| **prefix + shift+tab**    | previous-window  |
| **prefix + q**            | kill-window      |
| **prefix + w**            | choose-window    |
| **prefix + S**            | choose-session   |

## Pane

| Shortcut                      | Action                               |
|-------------------------------|--------------------------------------|
| **prefix + x**                | close-pane                           |
| **prefix + s**                | new-pane (vertical)                  |
| **prefix + v**                | new-pane (horizontal)                |
| **prefix + Space**            | next-layout                          |
| **alt + w + h / j / k / l**       | select-pane (left / down / up / right) |
| **alt + H / J / K / L**       | resize-pane (left / down / up / right) |
| **alt + 1 … 0**               | select-pane by number                |
| **alt + s + 1 … 0**           | swap-pane by number                  |

## Copy
| Shortcut                      | Action                               |
|-------------------------------|--------------------------------------|
| **prefix + [**                | copy-mode                          |
| **prefix + ]**                | paste                              |
| **y**                         | copy                               |
| **q**                         | escape                             |
