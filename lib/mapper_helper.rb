module MapperHelper

  def set_lines_currency(output, base_currency)
    output[:lines].each do |line|
      line[:unit_price].merge!(currency: base_currency)
    end

    output
  end
end
