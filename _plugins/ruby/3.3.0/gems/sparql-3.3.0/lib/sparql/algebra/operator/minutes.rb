module SPARQL; module Algebra
  class Operator
    ##
    # The SPARQL logical `minutes` operator.
    #
    # Returns the minutes part of the lexical form of `arg`. The value is as given in the lexical form of the XSD dateTime.
    #
    # [121] BuiltInCall ::= ... | 'MINUTES' '(' Expression ')' 
    #
    # @example SPARQL Grammar
    #   PREFIX : <http://example.org/>
    #   SELECT ?s (MINUTES(?date) AS ?x) WHERE {
    #     ?s :date ?date
    #   }
    #
    # @example SSE
    #   (prefix
    #    ((: <http://example.org/>))
    #    (project (?s ?x)
    #     (extend ((?x (minutes ?date)))
    #      (bgp (triple ?s :date ?date)))))
    #
    # @see https://www.w3.org/TR/sparql11-query/#func-minutes
    class Minutes < Operator::Unary
      include Evaluatable

      NAME = :minutes

      ##
      # Returns the minutes part of arg as an integer.
      #
      # @param  [RDF::Literal] operand
      #   the operand
      # @return [RDF::Literal::Temporal]
      # @raise  [TypeError] if the operand is not a simple literal
      def apply(operand, **options)
        raise TypeError, "expected an RDF::Literal::Temporal, but got #{operand.inspect}" unless operand.is_a?(RDF::Literal::Temporal)
        RDF::Literal(operand.object.minute)
      end

      ##
      #
      # Returns a partial SPARQL grammar for this operator.
      #
      # @return [String]
      def to_sparql(**options)
        "MINUTES(#{operands.last.to_sparql(**options)})"
      end
    end # Minutes
  end # Operator
end; end # SPARQL::Algebra
