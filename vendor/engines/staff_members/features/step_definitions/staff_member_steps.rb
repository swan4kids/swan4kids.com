Given /^I have no staff_members$/ do
  StaffMember.delete_all
end

Given /^I (only )?have staff_members titled "?([^\"]*)"?$/ do |only, titles|
  StaffMember.delete_all if only
  titles.split(', ').each do |title|
    StaffMember.create(:name => title)
  end
end

Then /^I should have ([0-9]+) staff_members?$/ do |count|
  StaffMember.count.should == count.to_i
end
