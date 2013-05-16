class Post < ActiveRecord::Base
  attr_accessible :body, :created, :title
end
