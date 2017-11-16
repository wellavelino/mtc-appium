require 'appium_lib'

class BaseScreen
   def self.identificator(element_name, &block)
     define_method(element_name.to_s, *block)
   end

   class << self
     alias_method :value, :identificator
     alias_method :action, :identificator
     alias_method :trait, :identificator
   end

   def check_trait(timeout = 10)
     raise ElementNotFoundError,
        "#{trait} not found" unless
        wait_true(timeout) { find_element(:id, trait).displayed? }
   end

   def visible!(expected_message, opts = {})
     timeout = opts.fetch(:timeout)
     raise 'The message to compare, cant be empty' if
         expected_message == ''

     if opts.fetch(:type) == 'toast'
       actual_message = wait_true(timeout) {
         find_element(:xpath, "//android.widget.Toast[1]").name }
     else
       actual_message = wait_true(timeout) {
         find_element(xpath: "//android.widget.TextView[@text='#{expected_message}']") }
     end

     raise MessageNotFoundError,
           "Message #{expected_message} not found, the message on the screen is #{actual_message}" unless
         expected_message == actual_message
   end
end