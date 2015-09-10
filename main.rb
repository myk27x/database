require_relative "add"
require_relative "search"
require_relative "delete"
require_relative "online"
require_relative "person"
require_relative "employee"
require_relative "student"
require_relative "run"
require_relative "list"

run = Run.new
run.run_database
