
task :default => ["my_namespace:all"]
namespace :my_namespace do
  desc "TODO"
  task my_task1: :environment do
  	puts 'weon tonto 1'
  end

  desc "TODO"
  task my_task2: :environment do
  	rand = Random.new(2)
  	puts rand.rand
  	if rand.rand >1
  		puts 'pase'
  	else
  		puts 'cague'
  	end
  end

task :all => ["my_namespace:my_task1", "my_namespace:my_task2"]

end

