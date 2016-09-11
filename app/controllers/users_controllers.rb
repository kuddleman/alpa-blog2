class UsersController <ApplicationController
    def new
       @user = User.new 
        
    def create
        @user = User.new(user_params)  
        
    end
    
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    
end