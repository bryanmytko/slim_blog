ActiveAdmin.register Post do
  permit_params :title, :content
  controller do
      defaults :finder => :find_by_id
  end
end
