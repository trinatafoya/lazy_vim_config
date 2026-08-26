# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim), configured for Swift development.
Refer to the [documentation](https://lazyvim.github.io/installation) for the full LazyVim docs.

## Installation

1. Install Neovim (and ripgrep, used for fuzzy/grep search):

   ```
   brew install neovim ripgrep
   ```

2. Back up your existing nvim config, if you have one:

   ```
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

3. Clone this repo into place:

   ```
   git clone https://github.com/trinatafoya/lazy_vim_config.git ~/.config/nvim
   ```

4. Launch nvim. LazyVim will bootstrap itself and install all plugins automatically on first run — just wait for it to finish:

   ```
   nvim
   ```

5. For Swift projects: make sure Xcode Command Line Tools are installed (provides `sourcekit-lsp`):

   ```
   xcode-select --install
   ```

## Usage

The leader key is **Space**. Most custom commands start by pressing `<Space>` and then a mnemonic sequence (e.g. `s` for "search", `c` for "code").

### Jumping around code (works once an LSP is attached, e.g. opening a `.swift` file)

| Key | Action |
| --- | --- |
| `gd` | Go to definition |
| `gr` | Show references |
| `K` | Hover docs for symbol under cursor |
| `<leader>ca` | Code actions |
| `<leader>cr` | Rename symbol |

### Searching

| Key | Action |
| --- | --- |
| `<leader>sg` | Grep search across the project (requires `ripgrep`) |
| `<leader><space>` | Find files |

### Swift

Swift files are handled by `sourcekit-lsp` (ships with Xcode Command Line Tools, no install needed via Mason). Formatting is intentionally left to `pl-swiftformatting` rather than sourcekit-lsp.
