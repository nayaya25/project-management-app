class MthreadsController < ApplicationController
    before_action :set_project
    before_action :set_mthread, only: [:show, :edit, :update, :destroy]

    def index
        
    end

    def new
        
    end

    def create
        @mthread = @project.mthreads.build(mthread_params)
        
        if @mthread.save
          redirect_to(request.referrer, success: "Added thread")
        else
            p @mthread.errors
            redirect_to(request.referrer, danger: "Unable to add thread")
        end
    end

    def show
        @thread = Mthread.find(params[:thread_id])
        @messages = @thread.messages.where(:message_id => nil).order("created_at desc")
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    def destroy
        mThread = Mthread.find(params[:thread_id])
        mThread.destroy
        redirect_to(request.referrer, success: "Thread Deleted")
    end

    private
    def set_project
        @project = Project.find(params[:project_id])
    end

    def set_mthread
        @mthread = @project.mthreads.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mthread_params
    params.permit(:title, :user_id, :project_id)
    end
end
