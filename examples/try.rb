require './lib/utils/math_combinatory'

# class C
#   a = 5
#   module M
#     a = 4
#     module N
#       a = 3
#       class D
#         a = 2
#         def show_a
#           a = 1
#           puts a
#         end
#         puts a
#       end
#       puts a
#     end
#     puts a
#   end
#   puts a
# end
#
# d = C::M::N::D.new
# d.show_a
#
# include Vector
n = 800000
table = Array.new(6,0)
values = [1,2,3,4,5,6]
k = values.length
r = Random.new
n.times do
	a = r.rand(1..6)
	case a
	when 1
		table[0]+=1
	when 2
		table[1]+=1
	when 3
		table[2]+=1
	when 4
		table[3]+=1
	when 5
		table[4]+=1
	when 6
		table[5]+=1
	end
end

for i in 0..k-1
	# puts i
	# puts " : "
	puts ((table[i]/n.to_f - 1.0/k.to_f)*100).round(2)
end

mean = values.reduce(:+)/values.length.to_f
puts mean
var = 1.0/(k.to_f)*values.map{|x| (x-mean)**2}.reduce(:+)
puts var
# inject(0, &:+)
# puts ((1**2+2**2+3**2+4**2+5**2+6**2)/6.0 - 3.5**2)
# puts 1.0/6.0*(2.5**2+1.5**2+0.5**2)*2

a = gets.chomp

puts a
