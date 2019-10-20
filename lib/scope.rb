require_relative 'scope_methods'

class Scope
	include	ScopeMethods
	extend	ScopeMethods

	attr_reader :value, :short_value

	def initialize value
		fail "Invalid Scope (#{value})" unless Scope.valid? value
		@value = value.to_s
		@value.freeze
		@short_value = get_short_value
		@short_value.freeze
	end
end