local lsp_zero_ok, lsp_zero = pcall(require, "lsp-zero")
if not lsp_zero_ok then
  return
end
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.preset('recommended')
lsp_zero.setup()
