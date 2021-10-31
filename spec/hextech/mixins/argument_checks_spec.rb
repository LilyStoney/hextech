# frozen_string_literal: true

RSpec.describe Hextech::Mixins::ArgumentChecks do
  describe '.validate_collection_for' do
    subject { dummy_class.validate_collection_for(collection: collection, option: option) }

    let(:dummy_class) { Class.new { extend Hextech::Mixins::ArgumentChecks } }
    let(:collection) { %w[europe americas asia esports] }
    let(:option) { 'europe' }

    context 'when the collection is empty passes' do
      let(:collection) { [] }

      it 'returns nothing' do
        expect(subject).to be_nil
      end
    end

    context 'when the validation passes' do
      it 'returns nothing' do
        expect(subject).to be_nil
      end
    end

    context 'when the validation fails' do
      let(:option) { 'invalid choice' }

      it 'returns nothing' do
        expect { subject }.to raise_error(
          Hextech::InvalidArgument, 'Invalid argument: must be one of europe, americas, asia, esports.'
        )
      end
    end
  end
end
