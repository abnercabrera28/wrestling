require "./config/environment"

use Rack::MethodOverride

use UsersController
use WrestlersController
run ApplicationController