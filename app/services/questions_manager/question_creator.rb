module QuestionManager
  # class QuestionCreator < ApplicationService
  #   def initialize(:text, :author_name, :user_id, :author_id)
  #     @text = text
  #     @author_name = author_name
  #     @user_id = user_id
  #     @author_id = author_id
  #   end

  #   def call
  #     return redirect_to root_path, alert: 'Доступ запрещён' if check_author_id == false
  #     return redirect_back fallback_location: root_path, notice: "Поля должны быть заполнены" if checking_for_nil_text_author_name == false
      
  #     Question.new(@text, @author_name, @user_id, @author_id)
  #   end

  #   private

  #   def check_author_id
  #     if @author_id.present? && (current_user.id != @author_id)
  #       false
  #     end
  #   end
    
  #   def checking_for_nil_text_author_name
  #     unless @text.present? || @author_name.present?
  #       false
  #     end
  #   end
  # end
end
