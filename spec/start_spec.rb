# frozen_string_literal: true

require_relative '../services/appointment/base_service'
require_relative '../services/appointment/read_data'
require_relative '../services/appointment/start'

RSpec.describe Appointment::Start do
  context 'calling Read data service' do
    it 'returns appointments and doctors sucessfully' do
      output = Appointment::Start.call
      expect(output.count).to be > 0
      expect(output.first[1].count).to be > 0
      expect(output.first[1].first).not_to be nil
    end
  end
end
