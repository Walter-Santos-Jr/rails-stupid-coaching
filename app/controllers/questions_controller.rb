class QuestionsController < ApplicationController
  def ask
  end

  def answer
    ask = params[:question]

    if ask.present?

      if ask.downcase == 'i am going to work'
        return @answer = 'Great!'
      elsif ask.downcase.end_with?('?')
        return @answer = 'Silly question, get dressed and go to work!'
      else
        return @answer = 'I dont care, get dressed and go to work!'
      end
    end
  end
end
