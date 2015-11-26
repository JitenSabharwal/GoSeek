class TestsController < ApplicationController
  def index
  	@test_all=Test.all
  end
  def new
  	@test=Test.new
  end

  def show
      @test=Test.find(params[:id])
  end
  def edit
  	 @test=Test.find(params[:id])		
  end
  def update
  	 @test=Test.update(test_param)
     redirect_to(:controller=>"Tests",:action=>"index")	
  end
  def create
  	@test=Test.new(test_param)
  		
  		if @test.save
  			redirect_to @test
  		else
  			flash[:note]="Error Occured"
  			render 'new'
        end	
  end
  private 
  	def test_param
  		params.require(:test).permit(:question,:option1,:option2,:option3,:option4,:answer)
  	end	
end
