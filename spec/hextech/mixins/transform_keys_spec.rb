# frozen_string_literal: true

RSpec.describe Hextech::Mixins::TransformKeys do
  describe '.to_symbolized_snake_keys' do
    subject { dummy_class.to_symbolized_snake_keys(value) }

    let(:dummy_class) { Class.new { extend Hextech::Mixins::TransformKeys } }
    let(:value) do
      {
        symbolCamelCase: '',
        'stringCamelCase' => '',
        array_with_nested_hashes: [
          {
            nestedSymbolCamelCase: '',
            'nestedStringCamelCase' => ''
          },
          {
            nestedSymbolCamelCase: '',
            'nestedStringCamelCase' => ''
          }
        ],
        snake_case_key: {
          nestedSymbolCamelCase: '',
          'nestedStringCamelCase' => ''
        }
      }
    end

    context 'when key is an array' do
      it 'symbolizes and snake_cases the keys in the value' do
        expect(subject).to eq(
          {
            symbol_camel_case: '',
            string_camel_case: '',
            array_with_nested_hashes: [
              {
                nested_symbol_camel_case: '',
                nested_string_camel_case: ''
              },
              {
                nested_symbol_camel_case: '',
                nested_string_camel_case: ''
              }
            ],
            snake_case_key: {
              nested_symbol_camel_case: '',
              nested_string_camel_case: ''
            }
          }
        )
      end
    end
  end
end
