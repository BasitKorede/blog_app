<<<<<<< HEAD
class CommentsController < ApplicationController
    def new
      @comment = Comment.new
    end
    def create
      params_comment = params.require(:comment).permit(:text)
      @comment = Comment.new(text: params_comment[:text], author_id: current_user.id, post_id: params[:post_id])
      respond_to do |format|
        format.html do
          if @comment.save
            flash[:success] = 'Comment was successfully created.'
            redirect_to user_post_path(current_user.id, params[:post_id])
          else
            render :new, locals: { comment: @comment }
          end
        end
      end
    end
  end
=======
class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    params_comment = params.require(:comment).permit(:text)
    @comment = Comment.new(text: params_comment[:text], author_id: current_user.id, post_id: params[:post_id])
    respond_to do |format|
      format.html do
        if @comment.save
          flash[:success] = 'Comment was successfully created.'
          redirect_to user_post_path(current_user.id, params[:post_id])
        else
          render :new, locals: { comment: @comment }
        end
      end
    end
  end
end
>>>>>>> de34e15494ab08865e5a718149d40b90898346b9
