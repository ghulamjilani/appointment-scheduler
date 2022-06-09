# frozen_string_literal: true

module Appointment
  # Base service for appointments to use .call method istead of .new
  class BaseService
    def self.call(*arg)
      new(*arg).call
    end
  end
end
