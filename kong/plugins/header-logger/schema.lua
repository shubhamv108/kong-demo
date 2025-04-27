local typedefs = require "kong.db.schema.typedefs"

local PLUGIN_NAME = "header-logger"

local schema = {
  name = PLUGIN_NAME,
  fields = {
    {
      config = {
        type = "record",
        fields = {
          {
            response_header_name = typedefs.header_name {
              required = false,
              default = "X-HeaderLogger-PluginVersion"
            }
          },
        },
      },
    },
  },
}

return schema
