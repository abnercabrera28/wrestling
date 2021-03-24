require "./config/environment"

use Rack::MethodOverride

use SessionsController
use UsersController
use WrestlersController
run ApplicationController