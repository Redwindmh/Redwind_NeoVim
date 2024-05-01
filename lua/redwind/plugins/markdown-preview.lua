return {
  {
    {
      "iamcco/markdown-preview.nvim",
      ft = "markdown",
      -- build = "cd app && yarn install",
      build = ":call mkdp#util#install()",
    },
  },
}

-- Commands:
--   :MarkdownPreview - Get 'er up
--   :MarkdownPreviewStop - Set 'er down
