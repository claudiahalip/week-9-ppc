class FutureDateValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless value >= Date.current
            record.errors.add(attribute, "must be in the future")
        end 

    end 
end 