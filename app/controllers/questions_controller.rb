class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''

    if params[:question] == 'I am going to work right now!'
      @answer = 'Great!'
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question].include?('!')
      @answer = "I don't care, get dressed and go to work!"
    elsif params[:question] != 'I am going to work right now!'
      @answer = 'bla bla bla 🤫'
    end

    @answer
  end
end
