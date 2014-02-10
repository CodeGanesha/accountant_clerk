OfficeClerk::Application.routes.draw do
  match 'accountant' => 'accountant#simple' , 
                      :as => "accountant",  :via  => [:get, :post]
end

