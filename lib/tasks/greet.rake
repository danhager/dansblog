desc "Greet the entire world"
task :greet do
  puts "Hello World"
  system 'bundle install'
end

task :ask => :greet do
  puts "How are you?"
end

task :testbundleinstall do
  system bundle install
end
