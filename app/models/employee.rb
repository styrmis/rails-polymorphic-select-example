class Employee < ActiveRecord::Base
  def presentation_name
    name
  end
end
