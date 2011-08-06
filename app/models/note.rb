class Note < ActiveRecord::Base
  has_many :replies
  def prev
    self.class.where('id<?',self.id).order('id DESC').first
  end
  
  def next
    self.class.where('id>?',self.id).order('id').first
  end
end
