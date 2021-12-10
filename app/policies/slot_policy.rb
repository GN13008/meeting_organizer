class SlotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("nb_agent > 0").order(date: :asc)
    end
  end
end
