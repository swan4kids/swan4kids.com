require 'spec_helper'

describe StaffMember do

  def reset_staff_member(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @staff_member.destroy! if @staff_member
    @staff_member = StaffMember.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_staff_member
  end

  context "validations" do
    
    it "rejects empty name" do
      StaffMember.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_staff_member
      StaffMember.new(@valid_attributes).should_not be_valid
    end
    
  end

end