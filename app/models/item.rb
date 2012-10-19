class Item < ActiveRecord::Base
  attr_accessible :name
  default_scope :order => :name

  def image_name
    file_name = "#{name.underscore}.jpeg"

    if File.exists?(Rails.root.join('app', 'assets', 'images', file_name))
      file_name
    else
      'placeholder_item.jpeg'
    end
  end

  def to_s
    name
  end
end
