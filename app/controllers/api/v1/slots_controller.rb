class Api::V1::SlotsController < Api::V1::BaseController
  def index
    # Send all slot where some agent are available
    @slots = policy_scope(Slot)
  end
end