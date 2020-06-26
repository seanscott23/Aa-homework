
def sluggish_octopus(array)
  longest = []
    (0...array.length - 1).each do |i|
        ((i + 1)...array.length).each do |i2|
            if array[i].length > array[i2].length && array[i].length > longest.length
                longest = array[i]
            else
                longest = array[i2]
            end
        end
    end
    longest.to_s
end

# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
 
class Array 

    def dominant_octopus(&prc)
    prc ||= proc {|a, b| a<=>b}
    return self if self.length < 2
    pivot =  self.first
    right = []
    left = []
        self[1..-1].each do |ele|
            if pivot.length > ele.length
                left << ele
            else
                right << ele
            end
        end
     final =  left.dominant_octopus(&prc) + [pivot] + right.dominant_octopus(&prc)
     final[-1]
    end
end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])