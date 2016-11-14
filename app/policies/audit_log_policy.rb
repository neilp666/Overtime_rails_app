class AuditingPolicy < ApplicationPolicy
  def index?
    return true if admin?
  end

  def confirm?
    record.user_id == user.user_id
  end

  private

  def admin?
    admin_types.include?(user.type)
  end
end
