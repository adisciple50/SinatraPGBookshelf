require 'warden'
require 'pg'

conn = PG.connect(:dbname => 'bookshelf-api',:user => 'rubymine' ,:password => 'ruby')


Warden::Strategies.add(:password) do
  def valid?
    u = params['username']
    conn.exec "set schema authentication;select #{u} from users where"
    return true
  end
  def authenticate!

  end
end