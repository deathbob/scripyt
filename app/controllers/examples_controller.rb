class ExamplesController < ApplicationController

  def create
    @example = Example.new(example_params)
    name = @example.name
    script_path = File.join(Rails.root, "scripts", "example.py")
    puts script_path
    python_response = `python #{script_path} #{name}`
    puts python_response
    redirect_to :root, notice: python_response
  end

  def example_params
    params.require(:example).permit(:name)
  end

end
