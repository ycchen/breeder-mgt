class ShowEntriesController < ApplicationController
  before_action :set_show_entry, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /show_entries
  # GET /show_entries.json
  def index
    @show_entries = ShowEntry.all.order("show_date")
  end

  # GET /show_entries/1
  # GET /show_entries/1.json
  def show
  end

  # GET /show_entries/new
  def new
    @show_entry = ShowEntry.new
  end

  # GET /show_entries/1/edit
  def edit
  end

  # POST /show_entries
  # POST /show_entries.json
  def create
    @show_entry = ShowEntry.new(show_entry_params)

    respond_to do |format|
      if @show_entry.save
        format.html { redirect_to @show_entry, notice: 'Show entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @show_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @show_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /show_entries/1
  # PATCH/PUT /show_entries/1.json
  def update
    respond_to do |format|
      if @show_entry.update(show_entry_params)
        format.html { redirect_to @show_entry, notice: 'Show entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @show_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /show_entries/1
  # DELETE /show_entries/1.json
  def destroy
    @show_entry.destroy
    respond_to do |format|
      format.html { redirect_to show_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show_entry
      @show_entry = ShowEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_entry_params
      params.require(:show_entry).permit(:dog_id, :show_id, :entry_fee, :handling_fee, :points, :title, :show_date, :expense, :reg_class, :judge, :pictures_attributes => [:id, :file, '_destroy'])
    end
end
