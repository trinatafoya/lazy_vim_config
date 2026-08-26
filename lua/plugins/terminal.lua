return {
  -- Dock the terminal at the bottom instead of floating, so the existing
  -- <C-h/j/k/l> window-nav keymaps work to move in/out of it.
  -- <C-j> (go to lower window) enters it; <C-k> (go to upper window, wired
  -- up for terminal mode by LazyVim's snacks terminal nav keys) exits it.
  {
    "snacks.nvim",
    opts = {
      styles = {
        terminal = {
          position = "bottom",
          height = 0.3,
        },
      },
    },
  },
}
