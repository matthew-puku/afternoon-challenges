input = 678911245
output_a = []

s = input.to_s

count = 0
while count < s.length
    output_a.push(s[count])
    count += 1
end

puts output_a