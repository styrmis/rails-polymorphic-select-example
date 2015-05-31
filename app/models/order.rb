class Order < ActiveRecord::Base
  def presentation_name
    reference
  end
end
