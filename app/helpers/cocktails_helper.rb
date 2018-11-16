module CocktailsHelper
  def photo_path_for(cocktail)
    if cocktail.photo.present?
      cl_image_path cocktail.photo, height: 300, width: 400, crop: :fill
    else
      "http://unsplash.it/200/200"
    end
  end
end
