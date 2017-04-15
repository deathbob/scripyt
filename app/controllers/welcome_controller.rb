class WelcomeController < ApplicationController

  def index
    @example = Example.new
  end

end
