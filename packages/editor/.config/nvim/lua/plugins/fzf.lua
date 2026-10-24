return {
  "ibhagwan/fzf-lua",
  opts = {
    files = {
      rg_opts = [[--color=never --files -g "!.git" -g "!.jj" -g "!**/graft/**"]],
      fd_opts = "--color=never --type f --type l --exclude .git --exclude .jj --exclude graft",
    },
    grep = {
      follow = true,
      rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --glob '!**/graft/**'",
    },
  },
  keys = function(_, keys)
    table.insert(keys, {
      "<leader>sx",
      function()
        require("fzf-lua").live_grep({
          rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --glob '!**/graft/**' -F -e",
        })
      end,
      desc = "Grep fi[X]ed-strings)",
    })
    return keys
  end,
}
