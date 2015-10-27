class Question < ActiveRecord::Base

  questions = Question.create([{ name: "Would you rather...", id: 100 }])
  questions = Question.create([{ name: "Would you rather date...", id: 200 }])
  questions = Question.create([{ name: "Would you rather have no one show up to...", id: 300 }])
  questions = Question.create([{ name: "Would you rather be able to...", id: 400 }])
  questions = Question.create([{ name: "Would you rather know...", id: 500 }])

end

class Condition < ActiveRecord::Base

  conditions = Condition.create([{ description: "Try and climb Mount Everest in flip flops", question_id: 100 }])
  conditions = Condition.create([{ description: "Cut off your big toe", question_id: 100 }])

  conditions = Condition.create([{ description: "A celebrity of your choice", question_id: 200 }])
  conditions = Condition.create([{ description: "Your real life crush", question_id: 200 }])

  conditions = Condition.create([{ description: "Your wedding", question_id: 300 }])
  conditions = Condition.create([{ description: "Your funeral", question_id: 300 }])

  conditions = Condition.create([{ description: "Fly", question_id: 400 }])
  conditions = Condition.create([{ description: "Read minds", question_id: 400 }])

  conditions = Condition.create([{ description: "The date of your death", question_id: 500 }])
  conditions = Condition.create([{ description: "The cause of your death", question_id: 500 }])

end
