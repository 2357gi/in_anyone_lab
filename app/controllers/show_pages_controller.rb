class ShowPagesController < ApplicationController
  def show
    @students = Existence.only_enter
  end

  def help
  end

  def about
  end
end
