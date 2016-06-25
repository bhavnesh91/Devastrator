class Employee < ActiveRecord::Base
	has_one :employee_address
	has_one :employee_personal
end
