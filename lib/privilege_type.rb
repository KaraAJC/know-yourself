class PrivilegeType

  attr_reader :name, :explainer, :communities_affected

  def initialize(name, explainer, communities_affected = [])
    @name = name
    @explainer = explainer
    @communities_affected = communities_affected
  end

end
