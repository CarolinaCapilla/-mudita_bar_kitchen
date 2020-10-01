module MetaTagsHelper
  def meta_title
    if content_for?(:meta_title)
      content_for(:meta_title)
    else
      DEFAULT_META['meta_title']
    end
  end

  def meta_description
    if content_for?(:meta_description)
      content_for(:meta_description)
    else
      DEFAULT_META['meta_description']
    end
  end

  def meta_image
    meta_image =
      (
        if content_for?(:meta_image)
          content_for(:meta_image)
        else
          DEFAULT_META['meta_image']
        end
      )
    # little twist to make it work equally with an asset or a url
    meta_image.starts_with?('http') ? meta_image : image_url(meta_image)
  end
end
