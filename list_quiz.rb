# three_even true if three even numbers are in a row

def three_even(list)
    list.size.times do |n|
        if list[n] % 2 == 0 && list[n+1] % 2 == 0 && list[n+2] % 2 == 0
            return true
        end
    end
    return false
end

# puts three_even([2,1,3,5]) #false
# puts three_even([2,4,12,5]) #true
# puts three_even([2,1,4,6]) #false
# puts three_even([1,4,6,4]) #true
# puts three_even([]) #false

# bigger_two return the list with the bigger sum

def bigger_two(list1,list2)
    sum1 = list1[0] + list1[1]
    sum2 = list2[0] + list2[1]
    if sum2 > sum1
        return list2
    else
        return list1
    end
end

# print bigger_two([1,2],[3,4]) #[3,4]
# print "\n"
# print bigger_two([1,7],[4,4]) #[1,7]
# print "\n"

#series_up (1) ---> [1] (2) ---> [1,1,2]....

def series_up(num)
    list = []
    counter = 0
    # totalnum = 0
    # nownum = num
    # while nownum != 0
    #     nownum = nownum - 1
    #     totalnum = totalnum + nownum
    #     list.push(totalnum)
    #     if nownum == 0
    #         nownum =
    spots = (num * (num + 1)) / 2
    while spots != 0
        spots = spots - 1
        list.push(0)
    end
    loopnum = num
    list.size.times do |n|
        if loopnum != 0
            list[list.size - n - 1] = loopnum
            if loopnum != 0
                loopnum = loopnum - 1
            else
                counter = counter + 1
                loopnum = num - counter
            end
        end
        if n == 0
            list[n] = 1
        end
    end
    return list
end

print series_up(1)
print "\n"
print series_up(2)
print "\n"
print series_up(3)
print "\n"
print series_up(4)
print "\n"
