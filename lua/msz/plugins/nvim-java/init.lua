return {
  'nvim-java/nvim-java',
  setup = function()
    local java = require('java')

    java.setup()
  end
}
