class QuestionsController < ApplicationController

	def create
		question = Question.create({text: (post_params[:text_field] + 'taglist: ' + post_params[:tag_list] )})
		redirect_to question_path(question)
	end

	def index
		@questions = Question.all		
	end

	def new
		@question = Question.new
	end

	def show
		@question = Question.find(params[:id])
	end

	private

  def post_params
    params.require(:question).permit(:text_field, :tag_list)
  end

end
