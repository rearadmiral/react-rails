module React
  class JavascriptContext

    def self.current
      Thread.current[self.name] ||= self.new
    end

    def self.reset!
      Thread.current[self.name] = nil
    end

    def initialize
      recycle!
    end

    def <<(js)
      @js << js
    end

    def consume!
      value = @js
      recycle!
      value
    end

    private

    def recycle!
      @js = ''
    end

  end
end