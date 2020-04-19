def test_module

    def multiply_els(array)
        array.my_inject(1) { |a,b| a * b }
    end

    #tests
    puts "-----------creating arr...-----------"
    arr = [1,2,3,4,5]
    puts arr

    #my_each
    puts "-----------testing my_each-----------"
    arr.my_each { |el| puts el }

    #my_each_with_index
    puts "-----------testing my_each_with_index-----------"
    arr.my_each_with_index { |el, i| puts "#{el} is at pos #{i}" }

    #my_select
    puts "-----------testing my_select-----------"
    result = arr.my_select { |el| el % 2 == 0 }
    puts result
    #my_all?
    puts "-----------testing my_all?-----------"
    puts arr.my_all? { |el| el.odd? }
    puts arr.my_all? { |el| el.class == Integer }

    #my_none?
    puts "-----------testing my_none?-----------"
    puts arr.my_none? { |el| el.even? }

    #my_count
    puts "-----------testing my_count-----------"
    #arr.my_count
    puts arr.my_count { |el| el.even? }

    #my_map
    puts "-----------testing my_map-----------"
    puts arr.my_map { |el| el * 2 }

    #my_inject(with addition)
    puts "-----------testing my_inject-----------"
    puts "1+2+3+4+5 = #{1+2+3+4+5}"
    puts arr.my_inject { |a, b| a + b }

    #multiply_els -- or -- my_inject(with multiplication)
    puts "-----------testing my_inject with mulitiplication-----------"
    puts "1*2*3*4*5 = #{1*2*3*4*5}"
    puts multiply_els(arr)
    #proc with my_map
    puts "-----------creating proc...-----------"
    double = Proc.new { |el| el * 2 }
    puts double.inspect.split(' ')[0]
    puts "-----------testing my_map with a proc-----------"
    puts arr.my_map(&double)

    puts "-----------testing done!-----------"
    #all done!
end