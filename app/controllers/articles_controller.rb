class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "xwj", password: "123456", except: [:index, :show]

  def index
    @articles=Article.all
  end
  def new
    @article=Article.new

  end

  def edit
    @article=Article.find(params[:id])
  end

  def create
    @article=Article.new(article_parms)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end

  def update
    @article=Article.find(params[:id])
    if @article.update(article_parms)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def show
    @article=Article.find(params[:id])
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_parms
    params.require(:article).permit(:title,:text)
  end



end
