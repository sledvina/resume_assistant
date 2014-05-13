class ActivityEntriesController < ApplicationController
  before_action :set_activity_entry, only: [:show, :edit, :update, :destroy]

  # GET /activity_entries
  # GET /activity_entries.json
  def index
    @activity_entries = ActivityEntry.all
  end

  # GET /activity_entries/1
  # GET /activity_entries/1.json
  def show
    #Get Resume and user this entry belongs to
    @tempResume = Resume.find_by id: @activity_entry.resume_id
    @currentResume = @tempResume.id
    @user = User.find_by id: @tempResume.user_id
  end

  # GET /activity_entries/new
  def new
    @activity_entry = ActivityEntry.new
  end

  # GET /activity_entries/1/edit
  def edit
    #Get Resume and user this entry belongs to
    @tempResume = Resume.find_by id: @activity_entry.resume_id
    @currentResume = @tempResume.id
    @user = User.find_by id: @tempResume.user_id
  end

  # POST /activity_entries
  # POST /activity_entries.json
  def create
    @activity_entry = ActivityEntry.new(activity_entry_params)

    respond_to do |format|
      if @activity_entry.save
        format.html { redirect_to @activity_entry, notice: 'Activity entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_entries/1
  # PATCH/PUT /activity_entries/1.json
  def update
    respond_to do |format|
      if @activity_entry.update(activity_entry_params)
        format.html { redirect_to @activity_entry, notice: 'Activity entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_entries/1
  # DELETE /activity_entries/1.json
  def destroy
    @activity_entry.destroy
    respond_to do |format|
      format.html { redirect_to activity_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_entry
      @activity_entry = ActivityEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_entry_params
      params.require(:activity_entry).permit(:position, :organization, :start_date, :end_date, :description, :resume_id)
    end
end
