class Result

  attr_reader :counts, :summary

  def initialize
    @counts = { true: 0, false: 0, skipped: 0 }
    @summary = { answered_yes: [], answered_no: [] }
  end

  def confirm(statement)
    @counts[:true] += 1
    @summary[:answered_yes] << statement
  end

  def deny(statement)
    @counts[:false] += 1
    @summary[:answered_no] << statement
  end

  def skip(_statement)
    @counts[:skipped] += 1
  end

  def privileges
    @summary[:answered_yes].group_by(&:privilege_type).map do |privilege, statements|
      {
        name: privilege&.name || "Unknown",
        explainer: privilege&.explainer || "",
        count: statements.count,
      }
    end
  end

end
