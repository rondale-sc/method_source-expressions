module MethodSource::Expressions
  module ProcExtensions
    def expressions
      ec = MethodSource::Expressions::ExpressionCollection.new(collection)
      ec.direct_descendents
    end

    private

    def collection
      source_range.map do |line_number|
        expression = create_expression(line_number)
        expression if expression.source
     end.compact
    end

    def source_range
      starting_line..(starting_line + length)
    end

    def create_expression(line_number)
      expression = soft_extract(line_number)
      MethodSource::Expressions::Expression.new(source: expression, line_number: line_number, location: source_location.first)
    end

    def soft_extract(line_number)
      MethodSource.expression_at(File.read(source_location.first),line_number).strip
    rescue SyntaxError
      false
    end

    def length
      @length ||= source.split("\n").length
    end

    def starting_line
      source_location[1]
    end
  end
end
