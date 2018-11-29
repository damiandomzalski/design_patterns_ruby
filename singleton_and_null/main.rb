require 'singleton'

class MissingUser
  include Singleton

  def first_name
    "Missing first name"
  end

  def last_name
    "Missing last name"
  end

  def age
    "Missing age"
  end
end
