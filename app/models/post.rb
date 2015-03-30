class Post < ActiveRecord::Base
	default_scope { order('created_at DESC') }
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates_presence_of [:title,:body]
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
