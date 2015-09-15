require 'active_support/concern'

module SharedScopes
  extend ActiveSupport::Concern

  included do
    scope :today, -> { where("created_at < ?", DateTime.now) }
  end

end