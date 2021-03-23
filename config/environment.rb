require "bundler/setup"
Bundler.require
require 'dotenv/load'

ActiveRecord::Base.establish_connection({
    :adapter => "sqlite3",
    :database => "db/development.sqlite3"
})

require_all 'app'