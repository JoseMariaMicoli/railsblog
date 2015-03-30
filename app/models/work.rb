class Work < ActiveRecord::Base
	acts_as_votable
	default_scope { order('created_at DESC') }
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	belongs_to :user
end
