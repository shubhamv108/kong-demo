local kong = kong

local HeaderFilterLoggerHandler = {
    PRIORITY = 11,
    VERSION = "0.0.1",
}

function HeaderFilterLoggerHandler:header_filter(conf)
  -- Log response headers
  kong.log.info("[HeaderFilterLoggerHandler:header_filter]")
  kong.response.set_header("X-COMMON_HEADER", kong.response.get_header("X-COMMON_HEADER") .. "-HeaderFilterLoggerHandler")
  for k, v in pairs(kong.response.get_headers()) do
    kong.log.info(k .. ": " .. v)
  end
  kong.response.set_header("X-HeaderFilterLogger-PluginVersion", HeaderFilterLoggerHandler.VERSION)
end

return HeaderFilterLoggerHandler
