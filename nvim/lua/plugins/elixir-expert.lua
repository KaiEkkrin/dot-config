return {
  -- Have Mason install expert automatically on new machines
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "expert" } },
  },
  -- Disable elixirls (which lang.elixir enables by default), add expert
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixirls = { enabled = false },
        expert = {
          cmd = { "expert", "--stdio" },
          filetypes = { "elixir", "eelixir", "heex" },
          root_markers = { "mix.exs", ".git" },
        },
      },
    },
  },
}
