class PagesController < ApplicationController
  def new
  	@page = Page.all
  
  end


def home
    
    user = Member.find_by_email(params[:email])
    if user and member.authenticate(params[:password])
      pages[:user_id] = user.id
      redirect_to member_url

    else
      render "home"
     end







#     @member = Member.find(id=10)
#     if 1==1
#      p "#{@member}"
#      p"@@@@@@@@@@@@@@@@@@@@@@"
#     end
    
end

def login

    @member = Member.all
    if member && member.authenticate(params[:email].params[:password]).downcase
      session[:user_id] = user.id

       #redirect_to destroy_path, notice: 'Logged in!'  
    else
      flash[:error] = "form is invalid"
      flash[:color]= "invalid"

      render "login"
    end
end

# def login(username, pass)
#   												# do the usual authentication stuff and get user
#   if logedin
#     session[:user_id] = user.id
#      flash[:notice] = "login successfully"
#            flash[:color]= "valid"
#             redirect_to logout_path, :notice => "Log out!"
#    else
#    		flash[:error] = "form in invalid"
#         flash[:color]= "invalid"
#         render "signup"

#   end
# end 



end


