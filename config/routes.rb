OfficeClerk::Application.routes.draw do
  match '/reports/simple' => 'reports#simple' , 
                      :as => "admin_reports",  :via  => [:get, :post]
end

