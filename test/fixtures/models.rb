require 'active_record'
require 'database_cleaner'

ActiveRecord::Base.establish_connection adapter:  :sqlite3,
                                        database: 'memory'

DatabaseCleaner.strategy = :transaction

# == Models
Brick = Class.new(ActiveRecord::Base)
