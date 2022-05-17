# frozen_string_literal: true

class OrderPolicy
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
    return @user && @user.has_role?(:traveler)
  end

  def new?
    create?
  end

  def destroy?
    return @user && @user.has_any_role?(:driver, :traveler)
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
