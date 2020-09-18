class Statement

  attr_reader :sentence, :privilege_type, :explainer

  def initialize(sentence, explainer, privilege_type)
    @sentence = sentence
    @explainer = explainer
    @privilege_type = privilege_type
  end

end
