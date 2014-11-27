Node = Struct.new(:value, :next, :father )
class Node 
	def reverse(&block)
		if self.next != nil
			self.next.reverse(&block)
		end
		yield self
	end
end
