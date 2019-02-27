class HomeController < ApplicationController
  def index 
    if user_signed_in? 
      @docs = current_user.docs.order("uploaded_file_file_name desc")       
    end
  end
end
