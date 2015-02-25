class Menu < ActiveRecord::Base
  attr_accessible :title, :position

  default_scope order('position ASC')
end
