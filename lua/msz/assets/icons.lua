local M = {}

M.Action = {
  Modify = "●",
  ModifyAlt = " ",
  Close = "",
  CloseAlt = " ",
  Check = " ",
  Select = " ",
}

M.Arrow = {
  Left = " ",
  Right = " ",
}

M.Common = {
  Airplane = "✈",
  Block = "▊",
  BookMark = " ",
  Bug = " ",
  Calendar = " ",
  Code = " ",
  Cog = "⚙ ",
  Comment = " ",
  Dashboard = " ",
  Envelope = "✉ ",
  Evil = " ",
  File = " ",
  Fire = " ",
  Flag = "⚐ ",
  FlagFilled = "⚑ ",
  Gear = " ",
  Gears = " ",
  History = " ",
  List = " ",
  Lock = " ",
  NewFile = " ",
  Note = " ",
  Package = " ",
  Pencil = "  ",
  Pencil2 = "✎ ",
  Project = " ",
  Scissors = "✂ ",
  Search = " ",
  SignIn = " ",
  Snowflake = "❄ ",
  Star = "☆ ",
  StarFilled = "★ ",
  Symlink = " ",
  SymlinkArrow = "➛ ",
  Table = " ",
  Void = '⣿ ',
  Coffee = "☕ ",
}

M.Chevron = {
  Left = "<",
  LeftBig = "",
  LeftBigFilled = "",
  Right = ">",
  RightBig = "",
  RightBigFilled = "",
}

M.Circle = {
  Tiny = "",
  Big = " ",
  BigOutline = " ",
  LeftHalf = "",
  RightHalf = "",
}

M.Diagnostics = {
  Error = " ",
  Hint = "󰌵",
  Info = " ",
  Warn = " ",
}

M.Folder = {
  ArrowClosed = " ",
  ArrowOpened = " ",
  Default = " ",
  Opened = " ",
  Empty = " ",
  EmptyOpened = " ",
  Symlink = " ",
  SymlinkOpened = " ",
}

M.Git = {
  Add = "|",
  Change = "|",
  ChangeDeleted = "~",
  Deleted = "-",
  TopDeleted = "‾",
  BottomDeleted = "_",
  BranchAlt = "",
  Unmerged = "",
  Untracked = "󰄱",
  UntrackedFilled = "",
  Staged = "+",
  Unstaged = "!",
  Ignored = "",
  Modified = "",
  Renamed = "",
}

M.KindIcons = {
  Array = " ",
  Boolean = "◩ ",
  Class = " ",
  Color = " ",
  Constant = " ",
  Constructor = " ",
  Enum = " ",
  EnumMember = " ",
  Event = " ",
  Field = " ",
  File = " ",
  Folder = " ",
  Function = " ",
  Interface = " ",
  Keyword = " ",
  Method = " ",
  Module = " ",
  Namespace = " ",
  Null = "ﳠ ",
  Number = " ",
  Object = " ",
  Operator = " ",
  Package = " ",
  Property = " ",
  Reference = " ",
  Snippet = "﬌ ",
  String = " ",
  Struct = " ",
  Text = " ",
  TypeParameter = " ",
  Unit = " ",
  Value = " ",
  Variable = " ",
}

M.Lsp = {
  server_installed = "✓ ",
  server_pending = "➜ ",
  server_uninstalled = "✗ ",
}

M.Misc = {
  Horse = "♞ ",
  Lightbulb = " ",
  Squirrel = " ",
  Telescope = " ",
  YinYang = "☯ ",
  Vim = " ",
}

M.SpinnerFrames = {
  "⠋ ",
  "⠙ ",
  "⠹ ",
  "⠸ ",
  "⠼ ",
  "⠴ ",
  "⠦ ",
  "⠧ ",
  "⠇ ",
  "⠏ ",
}

M.SpinnerFramesAlt = {
  "🌑 ",
  "🌒 ",
  "🌓 ",
  "🌔 ",
  "🌕 ",
  "🌖 ",
  "🌗 ",
  "🌘 ",
}

M.WebDevIcons = {
  ["guard.ts"] = {
    icon = " ",
    color = "#0beb64",
    name = "AngularGuard",
  },
  ["service.ts"] = {
    icon = " ",
    color = "#ebba0b",
    name = "AngularService",
  },
  ["component.ts"] = {
    icon = " ",
    color = "#549FDD",
    name = "AngularComponent",
  },
  ["module.ts"] = {
    icon = " ",
    color = "#d52f2f",
    name = "AngularModule",
  },
  ["routes.ts"] = {
    icon = " ",
    color = "#6DD390",
    name = "AngularRoutes",
  },
  ["pipe.ts"] = {
    icon = " ",
    color = "#6DD390",
    name = "AngularPipe",
  },
  ["interface.ts"] = {
    icon = "ﯤ ",
    color = "#038b52",
    name = "TypeScriptInterface",
  },
  ["namespace.ts"] = {
    icon = " ",
    color = "#038b52",
    name = "TypeScriptNamespace",
  },
  ["facade.ts"] = {
    icon = " ",
    color = "#eb7c0b",
    name = "AngularFacadeService",
  },
  ["store.ts"] = {
    icon = " ",
    color = "#C678DD",
    name = "AngularStore",
  },
  ["angular.json"] = {
    icon = " ",
    color = "#d52f2f",
    name = "AngularJson",
  },
}

return M
