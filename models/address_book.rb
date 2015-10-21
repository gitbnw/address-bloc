# #8
require_relative 'entry'
require "csv"

class AddressBook
  attr_accessor :entries, :source
  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # #9
    index = 0
    @entries.each do |entry|
      # #10
      if name < entry.name
        break
      end
      index += 1
    end
    # #11
    @entries.insert(index, Entry.new(name, phone_number, email))
  end

  def import_from_csv(file_name)
    @source = file_name
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
    # #8
    csv.each do |row|
      row_hash = row.to_hash
      add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
    end

    # Implementation goes here
  end
  # Search AddressBook for a specific entry by name
  def binary_search(name)

    lower = 0
    upper = entries.length - 1

    # #2
    while lower <= upper
      # #3
      mid = (lower + upper) / 2
      mid_name = entries[mid].name

      # #4
      if name == mid_name
        return entries[mid]
      elsif name < mid_name
        upper = mid - 1
      elsif name > mid_name
        lower = mid + 1
      end
    end

    return nil
  end

  def iterative_search(name)
    i = 0
      entries.each do |entry|
        if name == entry.name
          return entry
          i += 1
        end
      end
    if i == 0
      return nil
    end
  end

end
