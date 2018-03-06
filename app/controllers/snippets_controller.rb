class SnippetsController < ApplicationController

  def new
    @snippet = Snippet.new
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
  end

  private

    def snippet_params
      params.require(:snippet).permit(:content)
    end

end
