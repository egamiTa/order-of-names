require 'order_of_names/version'
require 'order_of_names/first_family_name_group'
require 'order_of_names/first_given_name_group'
require 'iso_country_codes'

module OrderOfNames
  def self.full_name(code:, given_name: nil, middle_name: nil, family_name: nil)
    class_obj_name = IsoCountryCodes.find(code).alpha3
    if const_defined?(class_obj_name)
      const_get(class_obj_name).new(given_name, middle_name, family_name).full_name
    else
      FirstGivenNameGroup.new(given_name, middle_name, family_name).full_name
    end
  end
end
