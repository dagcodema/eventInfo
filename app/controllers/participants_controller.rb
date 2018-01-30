class ParticipantsController < ApplicationController

	def index
    @participants = Participant.all
    @event = Event.all
   end
   
   def new
    @participant = Participant.new
	  @event = Event.all
    @overview = Overview.new
   end
   
   def create  
    @event = Event.find_by_name(@event)
    @participant = Participant.new(params[:participant].permit(:first_name, :last_name, :email, :tlfnr, :event_ids)) 
     if @participant.save
      flash[:notice] = 'Du er tilmeldt'  
      redirect_to @participant
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
       @participant = Participant.find(params[:participant].permit(:first_name, :last_name, :email, :tlfnr, :event_ids)) 
   end
end
