class SlotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("nb_agent > 0")
    end
  end
end
