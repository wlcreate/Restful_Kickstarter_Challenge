class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        project_params = params.require(:project).permit(:name, :description)
        @project = Project.create(project_params)
        redirect_to project_path(@project) #show the newly created project
    end

    def show
        @project = Project.find(params[:id])
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        project_params = params.require(:project).permit(:name, :description)
        @project.update(project_params)
        redirect_to project_path(@project) #show the updated project page
    end

    def destroy
        @project = Project.find(params[:id])
        Project.destroy(params[:id])
        redirect_to projects_path
    end

end
