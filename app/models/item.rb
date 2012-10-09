class Item < ActiveRecord::Base
  attr_accessible :name

  def image_name
    "#{name.underscore}.jpeg"
  end

  def to_s
    name
  end
end
