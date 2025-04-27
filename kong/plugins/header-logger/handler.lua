local kong = kong

local HeaderLoggerHandler = {
    PRIORITY = 10,
    VERSION = "0.0.1",
}

function HeaderLoggerHandler:access(conf)
  -- Log request headers
  kong.log.info("[Request Headers]")
  for k, v in pairs(kong.request.get_headers()) do
    kong.log.info(k .. ": " .. v)
  end
end

function HeaderLoggerHandler:response(conf)
    kong.response.set_header(conf.response_header_name, HeaderLoggerHandler.VERSION)
     kong.log.info("[Response Headers]")
     for k, v in pairs(kong.response.get_headers()) do
       kong.log.info(k .. ": " .. v)
     end
end

--function HeaderLoggerHandler:header_filter(conf)
--  -- Log response headers
--  kong.log.info("[Response Headers]")
--  for k, v in pairs(kong.response.get_headers()) do
--    kong.log.info(k .. ": " .. v)
--  end
--    kong.response.set_header("X-HeaderLogger-PluginVersion", HeaderLoggerHandler.VERSION)
--end

return HeaderLoggerHandler
