class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  #has_many :resumes

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    #Get Resume this entry belongs to
    @Resumes = Resume.all
    @UsersResumes = Array.new
    @EducationEntries = Array.new
    @ActivityEntries = Array.new
    @WorkEntries = Array.new
    
    @Resumes.each do |resume|
      if resume.user_id == @user.id
       @UsersResumes.push(resume)
      
      
      #Get Education Entries
      @Educations = EducationEntry.all
      @Educations.each do |education|
        if education.resume_id == resume.id
    
          @EducationEntries.push(education)
        end
      end 
  
      #Get Work Entries
      @Works = WorkEntry.all
      @Works.each do |work|
        if work.resume_id == resume.id
    
          @WorkEntries.push(work)
        end
      end 
  
      #Get Work Entries
      @Activities = ActivityEntry.all
      @Activities.each do |activity|
        if activity.resume_id == resume.id
          @ActivityEntries.push(activity)
        end
      end 
    end # if resume.user_id = @user.id
    end #end loop
    
    
  end
  
  #Desired Functionality
  # GET /users/1/resumes
  # def resumes
#     #Get Resume this entry belongs to
#     @Resumes = Resume.all
#     @UsersResumes = Array.new
#     @Resumes.each do |resume|
#       if resume.user_id == @user.id
#     
#        @UsersResumes.push(resume)
#       end
#     end 
#   end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
