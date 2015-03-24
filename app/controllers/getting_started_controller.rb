class GettingStartedController < ApplicationController
  def index
	if params[:q1a1] !=nil
	  if params[:q1a1] == %Q|"(.*?)"|
		@answer1 = "That is correct!"
	  else
		@answer1 = "Oops! That's not right"
	  end
	else
	  @answer1 = nil
	end
	if params[:q2a1] !=nil and params[:q2a2] !=nil
	  if params[:q2a1].eql? %Q"(\\d+)" and params[:q2a2].eql? %Q"(\\d+)"
		@answer2 = "That is correct!"
	  elsif params[:q2a2].eql?"(\\d+)"
		@answer2 = "You got one right."
	  elsif params[:q2a1].eql?"(\\d+)"
		@answer2 = "You got one right."
	  else
		@answer2 = "Oops! That's not right #{params[:q2a1]} #{params[:q2a2]}"
	  end
	else
	  @answer2 = nil
	end
  end
end
