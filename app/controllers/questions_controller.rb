class QuestionsController < ApplicationController
  def ask
    # raise
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = 'Please ask a question!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
