class Challenge < ActiveRecord::Base
	acts_as_taggable

	#has_many :vids, dependent: :destroy

	validates :title, presence: true
end
