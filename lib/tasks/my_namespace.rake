
task :default => ["my_namespace:my_task1"]
namespace :my_namespace do
  desc "TODO"
  task my_task1: :environment do
  	puts 'weon tonto 1'
  end

  desc "TODO"
  task my_task2: :environment do
  	'weon tonto 2'
  end

task :all => ["my_namespace:my_task1", "my_namespace:my_task2"]

end

