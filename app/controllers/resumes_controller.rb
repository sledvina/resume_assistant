class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]

  # GET /resumes
  # GET /resumes.json
  def index
    @resumes = Resume.all
  end

  # GET /resumes/1
  # GET /resumes/1.json
  def show
  # entries 
  # for EducationEntry.All do |entry| 
  #    if entry.resume_id == @resume.resume_id
  #      entries.add(entry)
  #    end  
  #  end  
  
  #Get Education Entries
  @Educations = EducationEntry.all
  @EducationPosts = Array.new
  @Educations.each do |education|
    if education.resume_id == @resume.id
    
      @EducationPosts.push(education)
    end
  end 
  
  #Get Work Entries
  @Works = WorkEntry.all
  @WorkPosts = Array.new
  @Works.each do |work|
    if work.resume_id == @resume.id
    
      @WorkPosts.push(work)
    end
  end 
  
  #Get Work Entries
  @Activities = ActivityEntry.all
  @ActivityPosts = Array.new
  @Activities.each do |activity|
    if activity.resume_id == @resume.id
    
      @ActivityPosts.push(activity)
    end
  end 
  
  @user = User.find_by id: @resume.user_id
  end

  # GET /resumes/new
  def new
    @resume = Resume.new
  end

  # GET /resumes/1/edit
  def edit
    @user = User.find_by id: @resume.user_id
  end

  # POST /resumes
  # POST /resumes.json
  def create
    @resume = Resume.new(resume_params)

    respond_to do |format|
      if @resume.save
        format.html { redirect_to @resume, notice: 'Resume was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resume }
      else
        format.html { render action: 'new' }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resumes/1
  # PATCH/PUT /resumes/1.json
  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumes/1
  # DELETE /resumes/1.json
  def destroy
    @resume.destroy
    respond_to do |format|
      format.html { redirect_to resumes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_params
      params.require(:resume).permit(:user_name, :resume_name, :date_created, :email, :phone, :address, :user_id)
    end
end
