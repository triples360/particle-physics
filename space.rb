class Space
    attr_accessor :grid
    def initialize()
        @grid = []
        for i in 0...10
            t = Array.new(10, nil)
            @grid << t
        end
    end
end

