require "todolist"

RSpec.describe "TodoList" do 
    it "initialises with an empty list" do 
        todolist_1 = TodoList.new
        expect(todolist_1.show_todos).to eq []
    end
end 