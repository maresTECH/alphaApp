class EntryController < ApplicationController
  def index
    @entry = Entry.all
  end

  def new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save

    redirect_to @entry
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :name, :detail)
  end
end
