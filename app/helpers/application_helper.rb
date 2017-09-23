module ApplicationHelper

  def profile_img(user)
    return image_tag(user.avatar, :size => "45x45", alt: user.name) if user.avatar?
    img_url = 'no_image.png'
    image_tag(img_url, :size => "45x45", alt: user.name)
  end

end
