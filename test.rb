require "minitest/autorun"

conn = PG.connect(:dbname => 'bookshelf-api',:user => 'rubymine' ,:password => 'ruby')

class Dbtest < Minitest::Test
  def assert_that_db_can_connect
    result = conn.exec("set schema 'authentication' ; select * from users;").to_h

# insert into users test
# cleanup users.
  end
end