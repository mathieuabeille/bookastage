module ApplicationHelper
  def photo_url_for(stage)
    if stage.photo.present?
      cl_image_path stage.photo,  crop: :fill
    else
      'http://unsplash.it/200/200'
    end
  end
end
