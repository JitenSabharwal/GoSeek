class WelcomesController < ApplicationController
  before_filter :save_login_state, :only=>[:index]  
  def index
 	@user=User.new
  end
  def new
  	@user=User.new
  end
  def create
  	@user=User.new(user_param)
  	if @user.save
  		flash[:note]="Registered Successfully"
  	else
  		flash[:note]="Registration Unsuccessful"
  	end
    respond_to do|format|
      format.html {redirect_to(:controller=>"welcomes",:action=>"index")}
      format.js   
    end	
  end
  private
  	def user_param
  		params.require(:user).permit(:name,:email,:gender,:dob,:contact,:password)
  	end
end
