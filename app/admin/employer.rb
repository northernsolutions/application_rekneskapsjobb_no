ActiveAdmin.register Employer do
  permit_params :profile, :name, :summary, :about, :vision, :website_link, :facebook_link, :twitter_link, :youtube_link, :instagram_link, :google_plus_link, :linkedin_link, :published_at, :employer_header_image, :employer_logo_image

  scope :all
  scope :published
  scope :unpublished

  action_item :view, only: :show do
    link_to 'View on site', employer_path(employer) if employer.published_at?
  end

  action_item :publish, only: :show do
    link_to "Publish", publish_admin_employer_path(employer), method: :put if !employer.published_at?
  end

  action_item :unpublish, only: :show do
    link_to "Unpublish", unpublish_admin_employer_path(employer), method: :put if employer.published_at?
  end

  member_action :publish, method: :put do
    employer = Employer.find(params[:id])
    employer.update(published_at: Time.zone.now)
    redirect_to admin_employer_path(employer)
  end

  member_action :unpublish, method: :put do
    employer = Employer.find(params[:id])
    employer.update(published_at: nil)
    redirect_to admin_employer_path(employer)
  end

  show do |t|
    attributes_table do
      row :profile
      row :name
      row :summary
      row :about
      row :vision
      row :website_link
      row :facebook_link
      row :twitter_link
      row :youtube_link
      row :instagram_link
      row :linkedin_link
      row :published_at
      row :employer_header_image do
        employer.employer_header_image? ? image_tag(employer.employer_header_image.url, height:'100') : content_tag(:span, "No image yet")
      end
      row :employer_logo_image do
        employer.employer_logo_image? ? image_tag(employer.employer_logo_image.url, height:'100') : content_tag(:span, "No image yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :profile
      f.input :name
      f.input :summary
      f.input :about, as: :html_editor
      f.input :vision, as: :html_editor
      f.input :website_link
      f.input :facebook_link
      f.input :twitter_link
      f.input :linkedin_link
      f.input :youtube_link
      f.input :instagram_link
      f.input :employer_header_image, hint: f.employer.employer_header_image? ? image_tag(employer.employer_header_image.url, height:'100') : content_tag(:span, "Upload image")
      f.input :employer_logo_image, hint: f.employer.employer_logo_image? ? image_tag(employer.employer_logo_image.url, height:'100') : content_tag(:span, "Upload image")
    end
    f.actions
  end
end
