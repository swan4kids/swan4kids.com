module NavigationHelpers
  module Refinery
    module StaffMembers
      def path_to(page_name)
        case page_name
        when /the list of staff_members/
          admin_staff_members_path

         when /the new staff_member form/
          new_admin_staff_member_path
        else
          nil
        end
      end
    end
  end
end
