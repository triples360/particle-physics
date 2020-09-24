class Space
    attr_accessor :grid
    def initialize()
        @grid = []
        for i in 0...3
            t = Array.new(3, nil)
            @grid << t
        end
    end
end

