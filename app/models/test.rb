class Test < ActiveRecord::Base
has_many :result
 validates :question ,:option1 ,:option2 ,:option3 ,:option4 ,:answer ,presence:true
 validates :question , uniqueness:true  	
end
