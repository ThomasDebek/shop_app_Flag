class FeatureFlags
  def initialize(user)
    @user = user
  end

  # added new function to showed promotioin
  def enabled?(feature)
    case feature
    when :new_checkout
      ENV["NEW_CHECKOUT"] == "true" && @user.admin?
    when :show_promo
      ENV["SHOW_PROMO"] == "true"
    else
      false
    end
  end
end