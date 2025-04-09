module SPARQL; module Algebra
  class Operator
    ##
    # The SPARQL relational `>` (greater than) comparison operator.
    #
    # [114] RelationalExpression    ::= NumericExpression ('>' NumericExpression)?
    #
    # @example SPARQL Grammar
    #   PREFIX  xsd: <http://www.w3.org/2001/XMLSchema#>
    #   PREFIX  : <http://example.org/things#>
    #   SELECT  ?x
    #   WHERE { ?x :p ?v . FILTER ( ?v > 1 ) }
    #
    # @example SSE
    #   (prefix
    #    ((xsd: <http://www.w3.org/2001/XMLSchema#>) (: <http://example.org/things#>))
    #    (project (?x) (filter (> ?v 1) (bgp (triple ?x :p ?v)))))
    #
    # @see https://www.w3.org/TR/sparql11-query/#OperatorMapping
    # @see https://www.w3.org/TR/xpath-functions/#func-compare
    # @see https://www.w3.org/TR/xpath-functions/#func-numeric-greater-than
    # @see https://www.w3.org/TR/xpath-functions/#func-boolean-greater-than
    # @see https://www.w3.org/TR/xpath-functions/#func-dateTime-greater-than
    class GreaterThan < Compare
      NAME = :>

      ##
      # Returns `true` if the first operand is greater than the second
      # operand; returns `false` otherwise.
      #
      # @param  [RDF::Literal] left
      #   a literal
      # @param  [RDF::Literal] right
      #   a literal
      # @return [RDF::Literal::Boolean] `true` or `false`
      # @raise  [TypeError] if either operand is not a literal
      def apply(left, right, **options)
        RDF::Literal(super == RDF::Literal(1))
      end
    end # GreaterThan
  end # Operator
end; end # SPARQL::Algebra
