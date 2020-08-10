puts 5.class # Fixnum
puts 8.class # Fixnum

5.class == 8.class # true

p 5.class # Fixnum
p 5.class.superclass # Integer
p 5.class.superclass.superclass # Numeric
p 5.class.superclass.superclass.superclass # object
p 5.class.superclass.superclass.superclass # BasicObject
p 5.class.superclass.superclass.superclass.superclass # nil

p 5.class.ancestors # [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p 3.14.class.ancestors # [Float, Numeric, Comparable, Object, Kernel, BasicObject]

# --------------------------------------------------- #

puts 5.methods # -@
               # **
               # upto
               # <<
               # <=
               # inspect
               # to_s
               # etc...

