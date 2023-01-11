Rails.application.routes.draw do
  
  resources :employyes do 
    collection  do
      put "/:id/update_enabled", to: "employyes#update_enabled" do
      end 
    end
  end

  resources :enterprises do
    collection do
      put "/:id/update_enabled", to: "enterprises#update_enabled" do
      end
    end
  end

  resources :tags do
    collection do
      put "/:id/update_enabled", to: "tags#update_enabled" do
      end
    end
  end

end