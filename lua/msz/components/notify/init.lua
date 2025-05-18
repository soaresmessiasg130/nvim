local notify = require('notify')

function NotifyComponent(props)
  notify(props.content, props.type, {
    title = props.title
  })
end
