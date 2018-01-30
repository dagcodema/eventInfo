class EventsController < ApplicationController

	def index
      @events = Event.all
   end

   def new
      @event = Event.new
   end
   
   def create
      @event = Event.new(params[:event].permit(:name, :description, :image_url, :start_date, :start_time))
    if @event.save
      flash[:notice] = 'Dit Arrangement er oprettet'  
      redirect_to @event
    else
      render 'new'
    end
   end

   def show
	   @event = Event.find(params[:id])
	   @participants = @event.participants() 	   
   end

   def edit
       @event = Event.find(params[:id])
   end
   def update
       @event = Event.find(params[:id])
   end
   
end
