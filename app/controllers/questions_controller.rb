class QuestionsController < ApplicationController
  def ask
    @question = params[:question_to_coach]
  end

  def answer
    @question = params[:question_to_coach]
    @coach_reply = ""

    if @question == 'I am going to work'
      @coach_reply = 'Great!'
    elsif @question[-1] == '?'
      @coach_reply = 'Silly question, get dressed and go to work!.'
    else
      @coach_reply = "I don't care, get dressed and go to work!"
    end
  end

  def home
  end

end


