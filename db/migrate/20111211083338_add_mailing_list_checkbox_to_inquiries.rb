class AddMailingListCheckboxToInquiries < ActiveRecord::Migration
  def self.up
      add_column ::Inquiry.table_name, :interest_email, :boolean, :default => true
  end

  def self.down
      remove_column ::Inquiry.table_name, :interest_email
  end
end
