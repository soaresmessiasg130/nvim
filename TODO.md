# TODO

## Things Todo

- add rounded borders at floating windows;
- add a markdown preview plugin;


## AI Suggestions

### Architectural Cleanup
   
* Decouple Plugin Specs from Logic: You are loading configurations via msz.configs.* and
msz.plugins.*. Ensure all plugin declarations are actually contained within lazy.nvim
definitions (in msz/core/lazy.lua or your plugins/ directory). Loading configs
separately via require in msz/init.lua can cause them to execute before the plugins
are loaded by Lazy, which is often an anti-pattern.
* Standardize Directory Structure: Your msz/configs and msz/plugins directories seem to
overlap in purpose. I recommend merging them into a single plugins/ directory where
each file exports a table representing its lazy.nvim specification.

### Modernizing Defaults

* Lazy Loading: Ensure your plugins are fully leveraging Lazy's keys, cmd, event, and ft
 attributes. Your current structure loads everything during startup, which can be
 optimized.

