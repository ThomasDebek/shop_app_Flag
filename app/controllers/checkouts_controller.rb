class CheckoutsController < ApplicationController
  def show
    user = User.first
    flags = FeatureFlags.new(user)

    if flags.enabled?(:new_checkout)
      render "new"
    else
      render "old"
    end
  end
end
