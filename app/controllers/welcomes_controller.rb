class WelcomesController < ApplicationController
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
  		redirect_to(:controller=>"welcomes",:action=>"new")
  	end	
  end
  private
  	def user_param
  		params.require(:user).permit(:name,:email,:gender,:dob,:contact,:password)
  	end
end
