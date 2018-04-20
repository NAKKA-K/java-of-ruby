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

    def printf(str)
        print str
    end
end

class In
end

class System
    @@out = Out.new
    @@in = In.new

    class << self
        def out
            @@out
        end

        def in
            @@in
        end
    end
end

class Scan
    def initialize(fp)
        @fp = fp
    end

    def nextLine
        gets
    end
end

def Scanner(fp)
    fp
end

def new_(class_obj)
    Scan.new(class_obj)
end
