class Article < ApplicationRecord
  has_many :comments,dependent: :destroy#通过dependent选项来关联，当该条记录删除时，相应的所有子项也同时删除掉
  validates :title,presence: true,length: {minimum: 5}

end
