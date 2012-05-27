class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    begin
      @note = Note.create! params[:note]
      render :json => @note
    rescue
      render :json => @note, :status => :unprocessable_entity
    end
  end

end
