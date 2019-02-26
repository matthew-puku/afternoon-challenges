# True or false: symbols are not cleaned up by garbage collector (GC) heap memory management until the end of runtime, so declaring many symbols may waste memory
puts "Before creating symbols, all symbols take up #{Symbol.all_symbols.size} bytes."
GC.disable # disable cleanup
9001.times do |i|
    "symbol#{i}".to_sym
end

puts "After creating symbols, all symbols take up #{Symbol.all_symbols.size} bytes."
GC.enable
GC.start
puts "After garbage collection, all symbols take up #{Symbol.all_symbols.size} bytes."

# Given the massive difference between Symbol.all_symbols.size before and after garbage collector, we can safely say that the header statement is false.