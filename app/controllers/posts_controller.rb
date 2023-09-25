class PostsController < ApplicationController
  def index 
    @posts = Post.all
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_back fallback_location: root_path, notice: "Вопрос успешно добавлен"
    else
      render 'new'
    end
  end
  private

  def post_params
    params.require(:post).permit(:user_id, :text, :title)
  end
end
