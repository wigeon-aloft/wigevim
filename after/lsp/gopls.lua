return {
    cmd = { 'gopls' },
    filetypes = { 'go' },
    settings = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
  },
}
