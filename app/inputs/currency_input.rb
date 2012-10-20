class CurrencyInput < SimpleForm::Inputs::Base
  def input
    @builder.number_field(attribute_name, {:placeholder => '$'}.merge(input_html_options))
  end
end
