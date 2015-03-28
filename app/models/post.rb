class Post < ActiveRecord::Base
	default_scope { order('created_at DESC') }
	has_many :comments, dependent: :destroy
	validates_presence_of [:title,:body]
end
