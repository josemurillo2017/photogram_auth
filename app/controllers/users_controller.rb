class UsersController < ApplicationController
  def index
    @users = User.all
    render("user/index.html.erb")
  end

  def show
    @searched_user = User.find(params[:id])
    @photos_of_searched_user = @searched_user.photos.all
    render("user/show.html.erb")
  end
  def likes
    @liked_photos= current_user.liked_photos.all
    render("user/likes.html.erb")
  end
end
