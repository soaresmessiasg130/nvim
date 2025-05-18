local icons = require("msz.assets.icons")

local fullName = "Messias Soares"
local githubProfile = "soaresmessiasg130"

local M = {}

M.Me = {
  FullName = fullName,
  Tag = "@" .. githubProfile .. " " .. icons.Common.Coffee,
  GithubProfile = githubProfile,
  GithubProfileLink = "https://github.com/" .. githubProfile,
}

return M
