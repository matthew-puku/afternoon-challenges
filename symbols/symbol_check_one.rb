#Write a Ruby program for each of the following statements that proves whether or not the statement is actually true or not.
requires "benchmark"
#Symbols are faster than Strings for comparisons since they are comparing object_ids

#Symbols are not cleaned up by garbage collector (GC) heap memory management until the end of runtime, so declaring many symbols may waste memory