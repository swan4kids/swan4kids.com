class StaffMembersController < ApplicationController

  before_filter :find_all_staff_members
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @staff_member in the line below:
    present(@page)
  end

  def show
    @staff_member = StaffMember.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @staff_member in the line below:
    present(@page)
  end

protected

  def find_all_staff_members
    @staff_members = StaffMember.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/staff").first
  end

end
