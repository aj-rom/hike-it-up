require './config/environment'

ActiveRecord::Base.establish_connection

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use TrailsController
use UsersController
run ApplicationController