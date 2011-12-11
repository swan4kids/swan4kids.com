class AddSwanCategoriesToInqueries < ActiveRecord::Migration
  def self.up
      add_column ::Inquiry.table_name, :interest_enroll, :boolean, :default => false
      add_column ::Inquiry.table_name, :interest_donate, :boolean, :default => false
      add_column ::Inquiry.table_name, :interest_events, :boolean, :default => false
      add_column ::Inquiry.table_name, :interest_sponsor, :boolean, :default => false
  end

  def self.down
      remove_column ::Inquiry.table_name, :interest_enroll
      remove_column ::Inquiry.table_name, :interest_donate
      remove_column ::Inquiry.table_name, :interest_events
      remove_column ::Inquiry.table_name, :interest_sponsor
  end
end
