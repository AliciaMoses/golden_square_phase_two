class GrammarStats
    def initialize
        @log = { check_count: 0, passed_checks: 0}
    end
  
    def check(text) 
       
        # return error if text is empty
        fail "No text to check!" if text.empty?
        
        # count the number of checks 
        @log[:check_count] += 1

        # tests conditions then updates hash values
        (text[0] =~ /[A-Z]/ && text[-1] =~ /[?.!]/) ? @log[:passed_checks] += 1 : false
       
        # tests conditions again for implicit return of bools
        (text[0] =~ /[A-Z]/ && text[-1] =~ /[?.!]/) ? true : false
       
    end
  
    def percentage_good 
    
        def calculate_percentage
            x =  @log[:passed_checks] * 100
            y =  @log[:check_count]
            pass_percentage = x / y
            return pass_percentage
        end
        
        @log[:check_count] == 0 ? "No checks have been made yet" : calculate_percentage # percentage_good is not executed when :check_count is zero
                                                                                        # when :check_count is zero return a user prompt 
    end
end