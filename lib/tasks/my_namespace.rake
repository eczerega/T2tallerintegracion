
task :default => ["my_namespace:all"]
namespace :my_namespace do
  desc "TODO"
  task my_task1: :environment do
  	puts 'Pruebas realizadas'
  end


  desc "UPDATE VERSION"
  task update_version: :environment do
    puts 'Actualizando versión'
    puts 'Ambiente actual: '+Rails.env.to_s
    if Rails.env.development?
      puts 'soy develop'
    end
    if Rails.env.test?
      puts 'soy testing'
    end
  end


  desc "TODO"
  task my_task2: :environment do
  	rand = Random.new(2)
  	puts rand.rand
  	if rand.rand >1
  		puts ' '
  	else
  		puts ' '
  	end
  end

task :all => ["my_namespace:my_task1", "my_namespace:my_task2"]

end

