module Admin
  class StaffMembersController < Admin::BaseController

    crudify :staff_member,
            :title_attribute => 'name', :xhr_paging => true

  end
end
