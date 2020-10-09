class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]

    if @ask.blank?
      @answer = "I can't hear you!"
    elsif @ask.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @ask.downcase.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
