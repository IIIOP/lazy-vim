return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          root_dir = function(fname)
            return vim.fs.dirname(vim.fs.find({ "compile_commands.json" }, { path = fname, upward = true })[1])
          end,
        },
      },
    },
  },
}
