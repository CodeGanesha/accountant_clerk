OfficeClerk::Engine.routes.draw do
  match '/accountant/report' => 'accountant#report' , 
                      :as => "admin_reports",  :via  => [:get, :post]
end

