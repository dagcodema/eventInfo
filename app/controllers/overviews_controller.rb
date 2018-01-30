class OverviewsController < ApplicationController

	def index
     @overviews = Overview.all
   end
   
   def new
     @event = Event.all
     @participant = Participant.all
     @overview = Overview.new(params[:overview].permit(:event_id], [:participant_id]))
   end
   
   def create
     event = Event.find_by_name(@event)
     @overview = Overview.create(event: @event, participant: @participant)
     flash[:success] = "#{@overview} Er tilmeldt"
     redirect_to root_path
   end 

   def show
     @overview = Overview.find(params[:id])
   end

end
