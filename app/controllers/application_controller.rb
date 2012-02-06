class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  # Useful for the common case of wanting to set some attributes to
  # values coming from params, where the attributes themselves are
  # protected from mass assignment.  +key+ is the top-level key for
  # params.  +attrs+ are the protected attributes whose values need to
  # be extracted from <tt>params[key]</tt>.
  # +update_protected_attrs_from_params+ executes the block that is
  # supplied, passing in the value of <tt>params[key]</tt> with the
  # protected attributes (+attrs+) removed.  This block returns an
  # object, and each of the protected attributes are then set on that
  # object.
  #
  # For example,
  #
  #   update_protected_attrs_from_params(:user, :login) do |p|
  #     @user = User.new(p)
  #   end
  #
  # will result in <tt>User.new</tt> being called with the value of
  # <tt>params[:user]</tt>, minus the value of
  # <tt>params[:user][:login]</tt>, but if
  # <tt>params[:user][:login]</tt> exists, <tt>@user.login</tt> will
  # be set to the value of <tt>params[:user][:login]</tt> even if the
  # +login+ attribute of the User model is protected.
  #
  # Similarly,
  #
  #   update_protected_attrs_from_params(:user, :login, :active) do |p|
  #     @user.attributes = p
  #     @user
  #   end
  #
  # will invoke <tt>@user.attributes = </tt> with the contents of
  # <tt>params[:user]</tt> minus <tt>params[:user][:login]</tt> and
  # <tt>params[:user][:active]</tt>, but if
  # <tt>params[:user][:login]</tt> is available, it will be used to
  # update <tt>@user.login</tt> and if <tt>params[:user][:active]</tt> is
  # available, it will be used to update <tt>@user.active</tt>.

  def update_protected_attrs_from_params(key, *attrs, &blk)
    protected_params = {}
    params_minus_protected = params[key]
    if params_minus_protected.kind_of?(Hash)
      params_minus_protected = params_minus_protected.dup
      for attr in attrs
        if params_minus_protected.has_key?(attr)
          protected_params[attr] = params_minus_protected.delete(attr)
        end
      end
    end
    return yield(params_minus_protected).tap do |obj|
      protected_params.each_pair { |k, v| obj.send("#{k}=", v) }
    end
  end
end
