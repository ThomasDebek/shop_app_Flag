class FeatureFlags
  def initialize(user)
    @user = user
  end

  def enabled?(feature)
    case feature
    when :new_checkout
      ENV["NEW_CHECKOUT"] == "true" && @user.admin?
    else
      false
    end
  end
end