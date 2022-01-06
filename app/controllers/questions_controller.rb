class QuestionsController < ApplicationController

  # reads question from params & computes 
  # an instance variable @answer for the view to display
  def ask
  end

  def answer
  # puts all variable needed and display all html
    question = params[:answer]

    # @ when we pass variable to view
    # pass @answer to view
    answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if question.nil?
      @answer = "I can't hear you"
    elsif question.end_with?("?")
      @answer = answers[1]
    elsif question == ""
      @answer = answers[2]
    else
     @answer = answers[0]
    end
    # return @answer to be passed to the view
    @answer
  end
end
