module Enumerable
    
    def my_each
        list = self
        for element in list
            yield(element)
        end
    end

    def my_each_with_index
        list = self
        i = 0
        while i < self.length
            yield(self[i], i)
            i+=1
        end
    end

    def my_select
        list = self
        for element in list
            if yield(element)
                element
            end
        end
    end

    def my_all?
        list = self
        bool = []
        for element in list
            if (yield(element))
                bool.push(true)
            else
                bool.push(false)
            end
        end
        !(bool.include?(false))
    end

    def my_any?
        list = self
        for element in list
            if yield(element)
                return true
            end
        end
        false
    end

    def my_none?
        list = self
        for element in list
            if yield(element)
                return false
            end
        end
        true
    end

    def my_count
        list = self
        count = 0
        for element in self
            if yield(element)
                count += 1
            end
        end
        count
    end

    def my_map
        new_arr = []
        for element in self
            if yield(element)
                new_arr.push(yield(element))
            end
        end
        return new_arr
    end

    def my_inject(result = 0)
        self.my_each { |i|
            result = yield(result, i)
        }
        result
    end
end