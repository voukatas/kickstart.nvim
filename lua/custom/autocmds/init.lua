vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  command = 'setlocal spell spelllang=en_us',
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.asm', '*.nasm', '*.inc' },
  callback = function()
    vim.bo.filetype = 'asm'
  end,
})

local asm_lsp_group = vim.api.nvim_create_augroup('AsmLspAutoRestart', { clear = true })

vim.api.nvim_create_autocmd('BufWritePost', {
  group = asm_lsp_group,
  pattern = { '*.asm', '*.nasm', '*.inc' },
  callback = function()
    vim.defer_fn(function()
      pcall(function()
        vim.cmd 'LspRestart asm_lsp'
      end)
    end, 100)
  end,
})
