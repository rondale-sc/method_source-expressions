module MethodSource::Expressions
  class ExpressionCollection
    attr_reader :expressions

    def initialize(expressions)
      @top_node, *@expressions = expressions
    end

    def direct_descendents(collection=expressions)
      child_expressions.map{ |child| expression_or_collection(child) }
    end

    def source
      @top_node.source
    end

  private
    attr_reader :top_node

    def child_expressions
      expressions.reject do |outer|
        expressions.any? {|inner| outer.within(inner) }
      end
    end

    def expression_or_collection(expression)
      sub_children = expressions.select{|e| e.within(expression) }

      if sub_children.length > 0
        self.class.new([expression, *sub_children])
      else
        expression
      end
    end
  end
end
