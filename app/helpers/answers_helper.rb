module AnswersHelper
    # 文字列の"true"とfalse"をブーリアン型にして返す
    def true_or_false?(order)
        return true if order == "true"
        return false if order == "false"
    end

    def answer_list(answers, order)
        return answers.reverse if true_or_false?(order) # trueの場合は古い順
        return answers
    end
end
