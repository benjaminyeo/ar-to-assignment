require_relative '../config/application'
require_relative '../app/models/task'
require 'faker'

#populate database with "to-do task"
5.times do 
	Task.create(
		task: Faker::Lorem.sentence,
		done: rand(0..1)
		)
	end