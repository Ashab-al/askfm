class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    
  end

  def edit
  end

  def destroy

  end

  def show
  end

  def update
    @question = Question.find(params[:id])
  
    if @question.update(question_update_params)
      # Обновление прошло успешно
      #redirect_to @question, notice: "Вопрос успешно обновлен"
      redirect_back fallback_location: root_path, notice: "Вопрос успешно обновлен"
    else
      # Обновление не удалось
      render 'edit'
    end
  end
  

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_back fallback_location: root_path, notice: "Вопрос успешно добавлен"
    else
      render 'new'
    end
  end
  

  private

  def question_params
    params.require(:question).permit(:text, :author_name, :user_id, :author_id)
  end

  def question_update_params
    params.require(:question).permit(:answer, :text)
  end
end
