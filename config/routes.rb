OfficeClerk::Engine.routes.draw do
  match '/manage/report' => 'manage#report' , 
                      :as => "manage_reports",  :via  => [:get, :post]
end

