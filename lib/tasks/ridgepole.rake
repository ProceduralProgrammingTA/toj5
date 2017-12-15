rails_env = ENV.fetch('RAILS_ENV', 'development')

namespace :ridgepole do
  desc 'Export database schema from database'
  task :export do
  end

  desc 'Show difference .schema between current database'
  task :'dry-run' do
  end

  desc 'Apply difference between .schema and database into database'
  task :apply do
  end

end
