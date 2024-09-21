return {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup {
        font = "Victor Mono=34;Noto Color Emoji=34",
        theme = "Catppuccin-mocha",
        background = "#1e1e2e",
        window_title = function() return vim.fn.fnamemodify(vim.fn.expand "%", ":p:.") end,
        output = function() return "~/Pictures/Screenshots/Code/" .. os.date "!%Y-%m-%dT%H-%M-%S" .. "_code.png" end,
      }
    end,
  },
}
