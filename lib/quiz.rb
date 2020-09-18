require_relative "./result"

class Quiz

  attr_reader :length

  def initialize(statements, length=5)
    @statements = statements
    @length = length
  end

  def run(&block)
    results = Result.new

    @statements.take(@length).each do |statement|
      response = yield statement

      if response.nil?
        results.skip(statement)
      elsif response
        results.confirm(statement)
      else
        results.deny(statement)
      end
    end

    results
  end

end
