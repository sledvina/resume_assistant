class WorkEntriesController < ApplicationController
  before_action :set_work_entry, only: [:show, :edit, :update, :destroy]

  # GET /work_entries
  # GET /work_entries.json
  def index
    @work_entries = WorkEntry.all
  end

  # GET /work_entries/1
  # GET /work_entries/1.json
  def show
    #Get Resume and user this entry belongs to
      @tempResume = Resume.find_by id: @work_entry.resume_id
      @currentResume = @tempResume.id
      @user = User.find_by id: @tempResume.user_id

  end

  # GET /work_entries/new
  def new
    @work_entry = WorkEntry.new
  end

  # GET /work_entries/1/edit
  def edit
    #Get Resume and user this entry belongs to
    @tempResume = Resume.find_by id: @work_entry.resume_id
    @currentResume = @tempResume.id
    @user = User.find_by id: @tempResume.user_id
  end

  # POST /work_entries
  # POST /work_entries.json
  def create
    @work_entry = WorkEntry.new(work_entry_params)

    respond_to do |format|
      if @work_entry.save
        format.html { redirect_to @work_entry, notice: 'Work entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @work_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @work_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_entries/1
  # PATCH/PUT /work_entries/1.json
  def update
    respond_to do |format|
      if @work_entry.update(work_entry_params)
        format.html { redirect_to @work_entry, notice: 'Work entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @work_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_entries/1
  # DELETE /work_entries/1.json
  def destroy
    @work_entry.destroy
    respond_to do |format|
      format.html { redirect_to work_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_entry
      @work_entry = WorkEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_entry_params
      params.require(:work_entry).permit(:Position, :Company, :start_date, :end_date, :description, :resume_id,)
    end
end
