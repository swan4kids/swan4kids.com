::Refinery::Application.routes.draw do
  match 'staff' => 'staff_members#index', :as => :staff_members
  match 'staff/:id' => 'staff_members#show', :as => :staff_member

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :staff_members, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
