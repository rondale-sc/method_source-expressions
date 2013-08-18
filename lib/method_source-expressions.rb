require "method_source"
require "method_source-expressions/version"
require "method_source-expressions/expression"
require "method_source-expressions/proc_extensions"

module MethodSource::Expressions
end

class Proc
  include MethodSource::Expressions::ProcExtensions
end
