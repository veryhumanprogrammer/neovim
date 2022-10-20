require "lsp_signature".setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  floating_window = true,
  floating_window_above_cur_line = true,
  use_lspsaga = true,
  handler_opts = {
    border = "single"
  }
})
