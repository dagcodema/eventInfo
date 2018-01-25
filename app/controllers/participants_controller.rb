class ParticipantsController < ApplicationController

	def index
    @participants = Participant.all
   end
   
   def new
    @participant = Participant.new
	  @event = Event.all
   end
   
   def create  
     @event = Event.find_by_name(params[:name])
     @participant = Participant.new(params[:participant].permit(:first_name, :last_name, :email, :tlfnr)) 
   if @participant.save
      @participant.overviews.new(params[participant: @participant])
      flash[:notice] = 'Du er tilmeldt'  
     redirect_to @participant
   else
   render :new
   end
   end

   def show
       @participant = Participant.find(params[:id])
	   @events = @participant.events()
   end
   def edit
       @participant = Participant.find(params[:id])
   end
   def update
       @participant = Participant.find(params[:id])
   end
end
