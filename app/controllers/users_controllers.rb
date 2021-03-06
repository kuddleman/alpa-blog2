class UsersController <ApplicationController
    def new
       @user = User.new 
        
    def create
        @user = User.new(user_params) 
        if @user.save
           flash(:success) = "Welcome to Alpa Blog2 #{@user.username}"
           redirect_to articles_path
            
        else
          render 'new'  
        end
    end
    
    def edit
        @user = User.find(param[:id])   
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            
        else
            render 'edit'
        end
            
        
    end
    
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    
end
