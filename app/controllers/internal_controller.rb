class InternalController < ApplicationController
  before_filter :authenticate_user!

  protected
  def user_association
    if resource_class.column_names.include? 'user_id'
      params[resource_class.name.underscore]['user_id'] = current_user.id
    end
  end

end
