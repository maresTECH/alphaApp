class EntryController < ApplicationController
  def index
    @entry = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to root_path
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :name, :detail)
    end
end
