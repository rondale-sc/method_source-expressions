require "method_source"
require "method_source-expressions/version"
require "method_source-expressions/expression"
require "method_source-expressions/proc_extensions"
require "method_source-expressions/expression_collection"

module MethodSource::Expressions
end

class Proc
  include MethodSource::Expressions::ProcExtensions
end
