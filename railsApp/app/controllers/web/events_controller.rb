class Web::EventsController < ApplicationController
  def calandar
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @events = Event.where(eventstart: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def show
  end
end
