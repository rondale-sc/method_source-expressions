module MethodSource::Expressions
  class Expression
    attr_reader :source, :location

    def initialize(options)
      @source = options.fetch(:source)
      @line_number = options.fetch(:line_number)
      @location = options.fetch(:location)
    end

    def range
      is_multi_line? ? multi_line_expression_range : line_number..line_number
    end

    private

    def line_number
      @line_number.to_i
    end

    def is_multi_line?
      expression_length > 1
    end

    def multi_line_expression_range
      line_number..(expression_length + line_number - 1)
    end

    def expression_length
      source.split("\n").length
    end

  end
end
