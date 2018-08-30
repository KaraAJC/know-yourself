class PrivilegeType
  def initialize(name, communities_affected = [])
    @name = name,
    @communities_affected = communities_affected
  end
end
