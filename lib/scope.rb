require_relative 'scope_methods'

class Scope
	include	ScopeMethods
	extend	ScopeMethods

	attr_reader :value, :short_value

	def initialize value
		fail "Invalid Scope (#{value})" unless Scope.valid? value
		@value = value
		@short_value = get_short_value
	end
end