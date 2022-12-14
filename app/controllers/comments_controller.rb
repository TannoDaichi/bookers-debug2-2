class CommentsController < ApplicationController
    
    def create
        @book = Book.find(params[:book_id])
        comment = current_user.comments.new(comment_params)
        comment.book_id = @book.id
        comment.save
        # render :comments
        redirect_to book_path(@book)
    end
    
    def destroy
        Comment.find(params[:id]).destroy
        @book = Book.find(params[:book_id])  
        # render :comments
        redirect_to book_path(params[:book_id])
    end

    private

    def comment_params
        params.require(:comment).permit(:comment)
    end
end
