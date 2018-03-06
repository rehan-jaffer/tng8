class SnippetsController < ApplicationController

  def new
    @snippet = Snippet.new
    render :new
  end

  def show
    @snippet = Snippet.find(params[:id])
    render :show
  end 
 
  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      redirect_to snippet_path(@snippet)
    else
      render :new
    end
  end

  def index
    @snippets = Snippet.all
    render :index
  end

  private

    def snippet_params
      params.require(:snippet).permit(:content)
    end

end
