def static(*args)
end

def void(*args)
end

def main(args, &block)
    yield if block_given?
    return 0
end

class Out
    def println(str)
        puts str
    end
end

class System
    @@out = Out.new

    class << self
        def out
            @@out
        end
    end
end
