class QuestionsController < ApplicationController
  def ask
    # render 'ask.html.erb'
  end

  def answer
    @ask = params[:ask]
    @answer = ""
    if @answer.blank?
      @answer = "Awaiting input!"
    elsif @ask == "I am going to work"
     @answer = "Great!"
    elsif @ask.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
