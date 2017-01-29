ActiveAdmin.register Job do

  permit_params :exclusive, :employer_id, :job_category_id, :job_type_id, :title, :content, :location, :apply_date, :apply_info, :published_at

  scope :all
  scope :published
  scope :unpublished

  action_item :view, only: :show do
    link_to 'View on site', job_path(job) if job.published_at?
  end

  action_item :publish, only: :show do
    link_to "Publish", publish_admin_job_path(job), method: :put if !job.published_at?
  end

  action_item :unpublish, only: :show do
    link_to "Unpublish", unpublish_admin_job_path(job), method: :put if job.published_at?
  end

  member_action :publish, method: :put do
    job = Job.find(params[:id])
    job.update(published_at: Time.zone.now)
    redirect_to admin_job_path(job)
  end

  member_action :unpublish, method: :put do
    job = Job.find(params[:id])
    job.update(published_at: nil)
    redirect_to admin_job_path(job)
  end

  show do |t|
      attributes_table do
        row :exclusive
        row :employer
        row :job_category
        row :job_type
        row :title
        row :content, as: :html_editor
        row :location
        row :latitude
        row :longitude
        row :apply_date
        row :apply_info, as: :html_editor
        row :published_at
      end
    end

    form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs do
        f.input :exclusive
        f.input :employer
        f.input :job_category
        f.input :job_type
        f.input :title
        f.input :content, as: :html_editor
        f.input :location
        f.input :apply_date
        f.input :apply_info, as: :html_editor
      end
      f.actions
    end


end
