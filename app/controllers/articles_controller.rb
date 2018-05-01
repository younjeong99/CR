class ArticlesController < ApplicationController
    def new
    end
    
    def create
        params.permit!
        @article = Article.new(params[:article])
        @article.save()
        redirect_to @article
    end
    
    def index
        @articles = Article.all
    end
    
    def show
        @article=Article.find(params[:id])
    end
    
    def destroy
        article = Article.find(params[:id])
        article.destroy
        
        redirect_to articles_path
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        params.permit!
        @article = Article.find(params[:id])
        @article.update(params[:article])
        
        redirect_to @article
    end
end
