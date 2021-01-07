class CategoriesController < ApplicationController

    def show
        @category = Category.find(params[:id])
        @categories = Category.all
        @posts = Post.all
    end

end
