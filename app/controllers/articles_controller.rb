class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    if @article.save
      redirect_to article_path
    else
      render :new
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(title: params[:article][:title], body: params[:article][:body])
      redirect_to update_article_path
    else
      render :edit
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end
  
  private
    def article_params
    	#params[:article][:title]
    	#params[:article][:body]
      #params.require(:article).permit(:title, :body)
    end
end
