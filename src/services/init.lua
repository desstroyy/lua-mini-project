local operations = require("src.services.operations")
local io_service = require("src.services.io_service")

local services = {
    operations = operations,
    io_service = io_service
}

return services
