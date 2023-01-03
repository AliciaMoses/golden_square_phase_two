require 'todo'
require 'todolist'

RSpec.describe "Todo task and list integration" do 
    it "adds tasks to the todolist" do 
        task_1 = Todo.new("post a letter")
        task_list = TodoList.new
        task_list.add(task_1)
        expect(task_list.show_todos).to eq [task_1]
    end
    it "returns tasks according to their status" do
        task_1 = Todo.new("post a letter")
        task_2 = Todo.new("wash car")
        task_3 = Todo.new("schedule appointment")
        task_list = TodoList.new
        task_list.add(task_1)
        task_list.add(task_2)
        task_list.add(task_3) 
        expect(task_list.incomplete).to eq [task_1, task_2, task_3]
    end
    it "returns tasks according to their status" do
        task_1 = Todo.new("post a letter")
        task_2 = Todo.new("wash car")
        task_3 = Todo.new("schedule appointment")
        task_list = TodoList.new
        task_list.add(task_1)
        task_list.add(task_2)
        task_list.add(task_3) 
        task_2.mark_done!
        expect(task_list.incomplete).to eq [task_1, task_3]
    end
    it "mark all done" do
        task_1 = Todo.new("post a letter")
        task_2 = Todo.new("wash car")
        task_3 = Todo.new("schedule appointment")
        task_list = TodoList.new
        task_list.add(task_1)
        task_list.add(task_2)
        task_list.add(task_3) 
        task_list.give_up!
        expect(task_list.incomplete).to eq []
    end
end 