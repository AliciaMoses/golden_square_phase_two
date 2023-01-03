class TodoList
    def initialize
        @todolist = []
    end
  
    def add(todo)
      @todolist << todo
    end
  
    def incomplete
      @todolist.select do |todo| 
        todo.status == 'incomplete' end
    end
  
    def complete
        @todolist.select do |todo| 
          todo.status == 'complete' end
    end
  
    def give_up!
      @todolist.each(&:mark_done!)
    end

    def show_todos
        return @todolist
    end 

end