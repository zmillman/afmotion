module AFMotion
  class HTTPResult
    attr_accessor :operation, :object, :error

    def initialize(operation, responseObject, error)
      self.operation = operation
      self.object = responseObject
      self.error = error
    end

    def success?
      !failure?
    end

    def failure?
      !!error
    end
  end
end
