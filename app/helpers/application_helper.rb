require 'digest/md5'
module ApplicationHelper
  def position
    "#{params[:controller]}_#{params[:action]}"
  end
  def get_title
    @title ||= 'OF P.S.V.R'
    @title
  end
  def gravatar_url(email)
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=32&d=mm"  
  end
end
