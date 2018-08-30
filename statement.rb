class Statement

  attr_reader :sentence, :privilege_type, :explainer
  def initialize(sentence)
    @sentence = sentence
    @privilege_type = PrivilegeType.new(type)
    @explainer = explainer
  end
end
