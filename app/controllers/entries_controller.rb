class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end


  def create
  @entry = Entry.new
  @entry.word = params[:entry][:word]
  @entry.definition = params[:entry][:definition]
  @entry.language = params[:entry][:language]

  if @entry.save
    redirect_to entries_url
  else
    redirect_to new_entry_url
  end


  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entry_url(@entry)
    else
      redirect_to entry_url(@entry)
    end

  end


end
