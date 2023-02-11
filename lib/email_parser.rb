# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
    attr_accessor :addresses

    def initialize(addresses)
        @addresses = addresses
    end

    def parse
      @addresses.split(/[,\s]+/).uniq.reject(&:empty?)
    end
end

email = EmailAddressParser.new("john@doe.com, person@somewhere.org")    

binding.pry