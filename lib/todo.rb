class Todo
    def initialize(task, status = "incomplete") 
      @task = task
      @status = status # unit test 1
    end
  
    def task
      @task
    end
    
    def status 
        return @status
    end

    def mark_done!
      @status = 'complete'
    end
  
    def done?
      @status == 'complete'
    end
  end