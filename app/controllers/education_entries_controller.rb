class EducationEntriesController < ApplicationController
  before_action :set_education_entry, only: [:show, :show_formatted, :edit, :update, :destroy]

  # GET /education_entries
  # GET /education_entries.json
  def index
    @education_entries = EducationEntry.all
  end

  # GET /education_entries/1
  # GET /education_entries/1.json
  def show
    #Get Resume and user this entry belongs to
      @tempResume = Resume.find_by id: @education_entry.resume_id
      @currentResume = @tempResume.id
      @user = User.find_by id: @tempResume.user_id
  end
  
  def show_formatted
    @tempResume = Resume.find_by id: @education_entry.resume_id
    @currentResume = @tempResume.id
    @user = User.find_by id: @tempResume.user_id
  end

  # GET /education_entries/new
  def new
    @education_entry = EducationEntry.new
  end

  # GET /education_entries/1/edit
  def edit
    #Get Resume and user this entry belongs to
      @tempResume = Resume.find_by id: @education_entry.resume_id
      @currentResume = @tempResume.id
      @user = User.find_by id: @tempResume.user_id
  end

  # POST /education_entries
  # POST /education_entries.json
  def create
    @education_entry = EducationEntry.new(education_entry_params)

    respond_to do |format|
      if @education_entry.save
        format.html { redirect_to @education_entry, notice: 'Education entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @education_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @education_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_entries/1
  # PATCH/PUT /education_entries/1.json
  def update
    respond_to do |format|
      if @education_entry.update(education_entry_params)
        format.html { redirect_to @education_entry, notice: 'Education entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @education_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_entries/1
  # DELETE /education_entries/1.json
  def destroy
    @education_entry.destroy
    respond_to do |format|
      format.html { redirect_to education_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_entry
      @education_entry = EducationEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_entry_params
      params.require(:education_entry).permit(:school, :graduation_date, :degree, :major, :gpa, :accolades, :resume_id)
    end
end
