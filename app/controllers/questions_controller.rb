class QuestionsController < ApplicationController
  def ask; end

  def answer
    @questions = params[:answer]
    @answer = if @questions == 'I am going to work right now'
                'GREAT'
              elsif @questions.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
