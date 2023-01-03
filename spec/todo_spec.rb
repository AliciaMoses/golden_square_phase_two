require "todo"

RSpec.describe "Todo" do 
    it "constructs" do 
    todo_1 = Todo.new("post a letter")
    expect(todo_1.task).to eq "post a letter"
    expect(todo_1.status).to eq "incomplete"
    end
    it "updates the status of a given task to complete" do
        todo_1 = Todo.new("post a letter")
        expect(todo_1.status).to eq "incomplete"
        result = todo_1.mark_done!
        expect(result).to eq "complete"
    end
        context "if given a task with incomplete status" do
            it "returns false to denote task not done" do
                todo_1 = Todo.new("post a letter")
                expect(todo_1.status).to eq "incomplete"
                result = todo_1.done?
                expect(result).to eq false
            end
        end
        context "if given a task with complete status" do
            it "returns false to denote task not done" do
                todo_1 = Todo.new("post a letter")
                todo_1.mark_done!
                expect(todo_1.status).to eq "complete"
                result = todo_1.done?
                expect(result).to eq true
            end
        end
    
        
end