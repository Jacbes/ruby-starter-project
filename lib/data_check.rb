class DataCheck
  def type?(type)
    types = %w[C K F]
    types.include? type
  end

  def number?(num)
    /^(-|[0-9])[0-9]*$/.match?(num)
  end
end
