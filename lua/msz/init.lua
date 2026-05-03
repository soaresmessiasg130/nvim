-- Load core
require('msz.core')

-- Load functions
require('msz.functions.folders')
require('msz.functions.maps')
require('msz.functions.dotnet')

-- Load components
require('msz.components.bpytop')
require('msz.components.lazygit')
require('msz.components.terminal')
require('msz.components.notify')

-- Load mappings (LSP and CMP are now lazy-loaded in their plugin specs)
require('msz.configs.maps')
