class MembersController < ApplicationController
	def new 
		@member = Member.all
	end

	def signup
		
          @member = Member.create(params[:member])

        if@member.save
          flash[:notice] = "Signup successfully"
           flash[:color]= "valid"
            redirect_to index_path, :notice => "Login!"


        else
          flash[:error] = "form in invalid"
          flash[:color]= "invalid"
         render "signup"

	
        end 

     end

		

	def destroy
	  member[:user_id] = nil
	  redirect_to :action => 'login'
	end



    
end
