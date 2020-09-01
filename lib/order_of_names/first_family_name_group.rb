require 'order_of_names/base'

class FirstFamilyNameGroup < Base
  def full_name
    return '' if @given_name.nil? && @family_name.nil? && @middle_name.nil?
    return @family_name if @given_name.nil?
    return @given_name if @family_name.nil?
    return "#{@family_name} #{@given_name}" if @middle_name.nil?

    "#{@family_name} #{@middle_name} #{@given_name}"
  end
end

class JPN < FirstFamilyNameGroup
end

class CHN < FirstFamilyNameGroup
end

class TWN < FirstFamilyNameGroup
end

class KOR < FirstFamilyNameGroup
end

class HKG < FirstFamilyNameGroup
end

class SGP < FirstFamilyNameGroup
end

class VNM < FirstFamilyNameGroup
end

class BEN < FirstFamilyNameGroup
end

class HUN < FirstFamilyNameGroup
end
