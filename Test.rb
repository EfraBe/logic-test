# TODO
# Implement technical test
print 'Introduce Number of Test Cases: '
test_cases = gets.chomp

def get_facing(x)
    print "Introduce size for N in case #{x+1}: "
    n = gets.chomp.to_i # Getting row size
    print "Introduce size for M in case #{x+1}: "
    m = gets.chomp.to_i # Getting column size

    if n == m && m > 1
        if n % 2 == 0
            puts 'L'
        else
            puts 'R'
        end
    elsif n > m && m > 1
        if m % 2 == 0
            puts 'U'
        else
            puts 'D'
        end
    elsif m > n
        if n  % 2 == 0
            puts 'L'
        else
            puts 'R'
        end
    elsif m == 1
        if n == 1
            puts 'R'
        else
            puts 'D'
        end
    end
end

test_cases.to_i.times do |x|
    get_facing(x)
end