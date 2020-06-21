class Map
    def initialize
        arr = [[1,2], [3,4]]
    end

    def set(key, value)
        pair = arr.index {|pair| pair[0] = key}
    end
end