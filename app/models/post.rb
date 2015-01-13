require 'tag_tinter'

class Post < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tags
  after_save :update_tints, if: :tag_list_changed?

  private

  def update_tints
    TagTinter.new('black', 'white').update_tints
  end
end
