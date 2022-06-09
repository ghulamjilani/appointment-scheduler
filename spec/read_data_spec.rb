# frozen_string_literal: true

require_relative '../services/appointment/base_service'
require_relative '../services/appointment/read_data'

RSpec.describe Appointment::ReadData do
  context 'calling Read data service' do
    it 'returns appointments and doctors sucessfully' do
      appointments, doctors = Appointment::ReadData.call
      expect(appointments.count).to be > 0
      expect(appointments.first[0]).not_to be nil
      expect(doctors.count).to be > 0
    end
  end
end
