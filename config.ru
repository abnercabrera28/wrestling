require "./config/environment"

use Rack::MethodOverride

use UserController
use WrestlerController
run ApplicationController