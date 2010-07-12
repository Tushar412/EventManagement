class MembershipRegistrationsController < ApplicationController
  include Cms::Authentication::Controller
  
  def create 
    if params[:user_id].blank?
      @membership_registration = User.new params[:user] 
      if @membership_registration.save
        #save user group membership. 
        UserGroupMembership.create({:group_id => 4, :user => @membership_registration})
        user = User.authenticate(params[:user][:login], params[:user][:password])
        self.current_user = user
        flash[:notice] = "Congratulations! You beome a member of site."
        if params[:event_id]
          redirect_to "/event_attendees?event_id=#{params[:event_id]}"
        else
          redirect_to "/"
        end
      else 
        flash[:record] = params[:user] 
        redirect_to "/members/member-registration"
      end 
    else
      @member = User.find(params[:user_id]) 
      if @member.update_attributes(params[:user]) 
        flash[:notice] = "Profile information saved successfully"
        redirect_to "/members/profile"
      else
        flash[:record] = params[:user] 
        redirect_to "/members/member-registration?id=#{params[:user_id]}"
      end
    end
  end
end