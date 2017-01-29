ActiveAdmin.register Banner do
  permit_params :left_banner_image, :right_banner_image

  show do |t|
    attributes_table do
      row :left_banner_image do
        banner.left_banner_image? ? image_tag(banner.left_banner_image.url, height:'100') : content_tag(:span, "No image yet")
      end
      row :right_banner_image do
        banner.right_banner_image? ? image_tag(banner.right_banner_image.url, height:'100') : content_tag(:span, "No image yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :left_banner_image, hint: f.banner.left_banner_image? ? image_tag(banner.left_banner_image.url, height:'100') : content_tag(:span, "Upload image")
      f.input :right_banner_image, hint: f.banner.right_banner_image? ? image_tag(banner.right_banner_image.url, height:'100') : content_tag(:span, "Upload image")
    end
    f.actions
  end
end
