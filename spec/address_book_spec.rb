 require_relative '../models/address_book'

 RSpec.describe AddressBook do
   let(:book) { AddressBook.new }

 # #6
  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eql expected_name
    expect(entry.phone_number).to eql expected_number
    expect(entry.email).to eql expected_email
  end
  
   describe "#import_from_csv" do
     it "tests the csv import process" do
       book.import_from_csv("entries.csv")
       book_size = book.entries.size

       # Check the size of the AddressBook.entries
       expect(book_size).to eql 5
     end

     it "imports the 1st entry" do
       book.import_from_csv("entries.csv")
       # Check the first entry
       entry_one = book.entries[0]
       check_entry(entry_one, "Bill", "555-555-4854", "bill@blocmail.com")
       # expect(entry_one.name).to eql "Bill"
       # expect(entry_one.phone_number).to eql "555-555-4854"
       # expect(entry_one.email).to eql "bill@blocmail.com"
     end

     it "imports the 2nd entry" do
       book.import_from_csv("entries.csv")
       # Check the second entry
       entry_two = book.entries[1]
       check_entry(entry_two, "Bob", "555-555-5415", "bob@blocmail.com")
       # expect(entry_two.name).to eql "Bob"
       # expect(entry_two.phone_number).to eql "555-555-5415"
       # expect(entry_two.email).to eql "bob@blocmail.com"
     end

     it "imports the 3rd entry" do
       book.import_from_csv("entries.csv")
       # Check the third entry
       entry_three = book.entries[2]
       check_entry(entry_three, "Joe", "555-555-3660", "joe@blocmail.com")
       # expect(entry_three.name).to eql "Joe"
       # expect(entry_three.phone_number).to eql "555-555-3660"
       # expect(entry_three.email).to eql "joe@blocmail.com"
     end

     it "imports the 4th entry" do
       book.import_from_csv("entries.csv")
       # Check the fourth entry
       entry_four = book.entries[3]
       check_entry(entry_four, "Sally", "555-555-4646", "sally@blocmail.com")
       # expect(entry_four.name).to eql  "Sally"
       # expect(entry_four.phone_number).to eql "555-555-4646"
       # expect(entry_four.email).to eql "sally@blocmail.com"
     end

     it "imports the 5th entry" do
       book.import_from_csv("entries.csv")
       # Check the fifth entry
       entry_five = book.entries[4]
       check_entry(entry_five, "Sussie", "555-555-2036", "sussie@blocmail.com")
       # expect(entry_five.name).to eql "Sussie"
       # expect(entry_five.phone_number).to eql "555-555-2036"
       # expect(entry.email).to eql "sussie@blocmail.com"
     end

   end
 end