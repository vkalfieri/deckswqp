class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  after_filter :store_action

   def store_action
     return unless request.get?
     if (request.path != "/users/sign_in" &&
         request.path != "/users/sign_up" &&
         request.path != "/users/password/new" &&
         request.path != "/users/password/edit" &&
         request.path != "/users/confirmation" &&
         request.path != "/users/sign_out" &&
         !request.xhr?) # don't store ajax calls
       store_location_for(:user, request.fullpath)
     end
   end


  def after_sign_out_path_for(resource_or_scope)
   'pages#home'
  end
end
