class HomeController < ApplicationController
  def index
  end

  def reload
    Foo.reload!
    #redirect_to "index"
    render :index
  end
end
