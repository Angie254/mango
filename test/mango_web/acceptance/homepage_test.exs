defmodule MangoWeb.HomepageTest do
	use ExUnit.Case
	#Enable use of helper functions from Hound library in our test
	use Hound.Helpers

	#Start a Hound worker who will do the tasks instructed
	hound_session()

	#test block
	test "presence of featured products" do
		navigate_to("/")
		assert page_source() =~ "Seasonal products"
	end
end