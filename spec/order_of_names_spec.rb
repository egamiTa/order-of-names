require 'order_of_names'

RSpec.describe OrderOfNames do
  it "has a version number" do
    expect(OrderOfNames::VERSION).not_to be nil
  end

  describe '#full_name' do

    context 'first_family_name_group' do
      it 'all nil' do
        expect(OrderOfNames.full_name(code: 'JPN')).to eq('')
      end

      it 'only family_name' do
        expect(OrderOfNames.full_name(code: 'JPN', family_name: 'たなか')).to eq('たなか')
      end

      it 'only given_name' do
        expect(OrderOfNames.full_name(code: 'JPN', given_name: 'たろう')).to eq('たろう')
      end

      it 'family_name + given_name' do
        expect(OrderOfNames.full_name(code: 'JPN', given_name: 'たろう', family_name: 'たなか')).to eq('たなか たろう')
      end

      it 'family_name + (middle_name) + given_name' do
        expect(OrderOfNames.full_name(code: 'JPN', given_name: 'たろう', middle_name: 'chris', family_name: 'たなか')).
          to eq('たなか chris たろう')
      end
    end

    context 'first_given_name_group' do
      it 'all nil' do
        expect(OrderOfNames.full_name(code: 'LUX')).to eq('')
      end

      it 'only family_name' do
        expect(OrderOfNames.full_name(code: 'LUX', family_name: 'たなか')).to eq('たなか')
      end

      it 'only given_name' do
        expect(OrderOfNames.full_name(code: 'LUX', given_name: 'たろう')).to eq('たろう')
      end

      it 'given_name + family_name ' do
        expect(OrderOfNames.full_name(code: 'LUX', given_name: 'たろう', family_name: 'たなか')).to eq('たろう たなか')
      end

      it 'family_name + (middle_name) + given_name' do
        expect(OrderOfNames.full_name(code: 'LUX', given_name: 'たろう', middle_name: 'chris', family_name: 'たなか')).
            to eq('たろう chris たなか')
      end
    end
  end
end
