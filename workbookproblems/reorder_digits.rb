input = 12123687
output_a = []

s = input.to_s

count = 0
while count < s.length
    output_a.push(s[count].to_i)
    count += 1
end

output_a = output_a.reverse

final = 0
count = 0
exponent = output_a.length - 1
for digit in output_a
    final += output_a[count]*10**exponent
    count += 1
    exponent -=1
end

puts final

#for digit in