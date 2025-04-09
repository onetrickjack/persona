require 'time'

module SPARQL; module Algebra
  class Operator
    ##
    # The SPARQL logical `now` operator.
    #
    # Returns an XSD dateTime value for the current query execution. All calls to this function in any one query execution must return the same value. The exact moment returned is not specified.
    #
    # [121] BuiltInCall ::= ... | 'NOW' NIL 
    #
    # @example SPARQL Grammar
    #   PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
    #   ASK {
    #     BIND(NOW() AS ?n)
    #     FILTER(DATATYPE(?n) = xsd:dateTime)
    #   }
    #
    # @example SSE
    #   (prefix ((xsd: <http://www.w3.org/2001/XMLSchema#>))
    #    (ask
    #     (filter (= (datatype ?n) xsd:dateTime)
    #      (extend ((?n (now)))
    #       (bgp)))))
    #
    # @see https://www.w3.org/TR/sparql11-query/#func-now
    class Now < Operator::Nullary
      include Evaluatable

      NAME = :now

      ##
      # Returns an XSD dateTime value for the current query execution. All calls to this function in any one query execution must return the same value. The exact moment returned is not specified.
      #
      # @return [RDF::Literal::Double] random value
      def apply(**options)
        RDF::Literal(DateTime.now)
      end

      ##
      #
      # Returns a partial SPARQL grammar for this operator.
      #
      # @return [String]
      def to_sparql(**options)
        "NOW()"
      end
    end # Now
  end # Operator
end; end # SPARQL::Algebra
