require 'order_of_names/base'

class FirstGivenNameGroup < Base
  def full_name
    return '' if @given_name.nil? && @family_name.nil? && @middle_name.nil?
    return @family_name if @given_name.nil?
    return @given_name if @family_name.nil?
    return "#{@given_name} #{@family_name}" if @middle_name.nil?

    "#{@given_name} #{@middle_name} #{@family_name}"
  end
end
