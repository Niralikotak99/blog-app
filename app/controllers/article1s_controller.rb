class Article1sController < ApplicationController
  def index
  	@article1s = Article1.all
  end
  def show
    @article1 = Article1.find(params[:id])
  end
end
