# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create Subjects
subject1 = Subject.create(name: 'Math')
subject2 = Subject.create(name: 'Science')

# Create Questions for Subject 1
question1 = subject1.questions.create(content: 'What is 2 + 2?')
question2 = subject1.questions.create(content: 'What is the capital of France?')

# Create Answers for Question 1
answer1_q1 = question1.answers.create(content: '3', correct: false)
answer2_q1 = question1.answers.create(content: '4', correct: true)
answer3_q1 = question1.answers.create(content: '5', correct: false)
answer4_q1 = question1.answers.create(content: '6', correct: false)

# Create Answers for Question 2
answer1_q2 = question2.answers.create(content: 'Paris', correct: true)
answer2_q2 = question2.answers.create(content: 'London', correct: false)
answer3_q2 = question2.answers.create(content: 'Berlin', correct: false)
answer4_q2 = question2.answers.create(content: 'Madrid', correct: false)

# Create Questions for Subject 2
question3 = subject2.questions.create(content: 'What is the chemical symbol for water?')
question4 = subject2.questions.create(content: 'Who discovered penicillin?')

# Create Answers for Question 3
answer1_q3 = question3.answers.create(content: 'H2O', correct: true)
answer2_q3 = question3.answers.create(content: 'CO2', correct: false)
answer3_q3 = question3.answers.create(content: 'O2', correct: false)
answer4_q3 = question3.answers.create(content: 'NaCl', correct: false)

# Create Answers for Question 4
answer1_q4 = question4.answers.create(content: 'Marie Curie', correct: false)
answer2_q4 = question4.answers.create(content: 'Isaac Newton', correct: false)
answer3_q4 = question4.answers.create(content: 'Alexander Fleming', correct: true)
answer4_q4 = question4.answers.create(content: 'Albert Einstein', correct: false)
