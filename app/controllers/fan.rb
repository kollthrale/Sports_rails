
class fanController < ApplicationController
  def index
  	# grabbing all the people out of the database
  	# GET
  	@fan = Fan.all 
  	render :index 
  end

def show
  #grabs a single person out the database
  #GET 
 @fan = Fan.find(params[:id])
 render :show 
end
  
  def new
  	#creates a new instance of a person
  	# renders the new person
  	# GET
  	@fan = Fan.new
  end

  def create
  	#creates the user in the database
  	# POST
  	

  	@fan = Fan.new(fan_params)
 	if @person.save 
 	# successful save in our database
 	redirect_to  person_path(@person)
 	else
 	# unsuccessful save in our database
 	  render :new
 	end 
end

  def edit
  	#edit form for a existing user
  	#GET
  	@fan = Fan.find(params[:id])
  end

  def update
  	# updates the user in the database
  	# GET
  	@fan = Fan.find(params[:id])
  	if @fan.update(fan_params)
  	#Successful update in the database
  	redirect_to fan_path(@fan)
  	else
  		# unsuccessful update in the databae
  		render :edit
  	end
  end

  def destroy
  	# finds a person and destroys them in the datatbase
  	# DELETE
  	@fan = Fan.find(params[:id])
  	@fan.destroy 
  	redirect_to fan_path
	end



	private
    #strong params
   #security for our Data coming into the controllers
	def fan_params
	#binding.pry
	params.require(:fans).permit(:nation, :crazy, :loud_or_not, :gold_medals_country_won, :population)
	end
end



