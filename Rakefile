require "pg"

desc "create connection"
task :createconnection do
  puts "What is the username?"
  username = STDIN.gets
  puts "What is the password?"
  password = STDIN.gets
  js = JSON.generate({"username" => username,"password" => password})
  puts js
  File.open "credentials.json","w" do |credentials|
    credentials.write js.to_s
  end

end

desc "delete connection"
task :deleteconnection do
  File.delete 'credentials.json'
end

desc "setup db"
task :setupdb do

end

desc "delete db"
task :deletedb do

end