require('tabnine').setup({
  disable_auto_comment=true,
  -- set a new keymap for tabnine
  --accept_keymap="<C-[>",
  accept_keymap="<C-Right>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt"}
})

