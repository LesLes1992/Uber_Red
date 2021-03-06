# frozen_string_literal: true

class VehiclePolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record

  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    return @user && @user.has_role?(:driver)
  end

  def new?
    create?
  end

  def update?
    create?
  end

  def edit?
    create?
  end

  def destroy?
    create?
  end


  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
