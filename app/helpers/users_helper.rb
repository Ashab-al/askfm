module UsersHelper
    def declination_by_numbers(number, version_1, version_2, version_3)
        return version_3 if (11..14).include?(number)
      
        case number % 10
        when 1
          version_1
        when 2..4
          version_2
        when 5..9, 0
          version_3
        else
          "Что-то пошло не так в users_helper"
        end
      end
      
end
