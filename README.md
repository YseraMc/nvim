# nvim

## Install

### Install Neovim
Install Neovim latest.

### Install Plugins
execute `:PackerInstall` in Neovim cmdline.

## Formatter

### stylua

Install [stylua](https://github.com/JohnnyMorganz/StyLua).

If you have not Rust, you need to install it.
```bash
asdf plugin add rust
asdf install rust latest
asdf global rust latest
```

Install stylua.
```bash
cargo install stylua
```

## VSCode

[VSCode-neovim](https://github.com/vscode-neovim/vscode-neovim)拡張機能をインストールする。

`keybindings.json`に以下を設定する。

```json
[
    {
        "key":"Ctrl+t",
        "command": "workbench.action.terminal.toggleTerminal",
        "when":""
    },
    {
        "key": "v b",
        "command": "workbench.action.navigateBack",
        "when": "neovim.mode == normal && editorTextFocus",
    },
]
```

`workbench.action.navigateBack`は`init.lua`内で設定すると動作しなかったので、VSCode側で設定した。
