def sort_array_asc(num)
    num.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(num)
    num.sort { |a, b|
        b <=> a
    }
end

def sort_array_char_count(num)
    num.sort {|a, b|
        a.length <=> b.length
    }
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    return array
end

def reverse_array(array)
    array.reverse!
end

def kesha_maker(array)
    array.map {|element|
        element[2] = "$"
    }
    array
end

def find_a(array)
    new_array = []
    array.select {|word|
        if word[0] == "a"
            new_array << word
        end
    }
    new_array
end

def sum_array(array)
    array.inject {|sum, number|
        sum + number
    }
end

def add_s(array)
    # map through array and only change words not of second element?
    # array[2] = element not to change
    array.map.with_index {|word, index|
        if index == 1
            word
        else
            word << "s"
        end
    }
end