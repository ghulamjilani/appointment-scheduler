# frozen_string_literal: true

require 'time'
module Appointment
  # Base service for appointments to use .call method istead of .new
  class ReadData < BaseService
    def initialize; end

    def call
      read_doctor_data
    end

    private

    def read_doctor_data
      appointments = [
        ['A1', { starts_at: Time.parse('2022-05-14T12:30:00-06:00'), ends_at: Time.parse('2022-05-14T15:00:00-06:00') }],
        ['B1', { starts_at: Time.parse('2022-05-14T13:30:00-06:00'), ends_at: Time.parse('2022-05-14T17:00:00-06:00') }],
        ['C1', { starts_at: Time.parse('2022-05-14T13:30:00-06:00'), ends_at: Time.parse('2022-05-14T17:00:00-06:00') }],
        ['D1', { starts_at: Time.parse('2022-05-14T13:30:00-06:00'), ends_at: Time.parse('2022-05-14T17:00:00-06:00') }],
        ['E1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['F1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['G1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['H1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['I1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['J1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['K1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['L1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['M1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['N1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['O1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['P1', { starts_at: Time.parse('2022-05-14T11:00:00-06:00'), ends_at: Time.parse('2022-05-14T12:30:00-06:00') }],
        ['Q1', { starts_at: Time.parse('2022-05-14T12:30:00-06:00'), ends_at: Time.parse('2022-05-14T15:00:00-06:00') }],
        ['R1', { starts_at: Time.parse('2022-05-14T12:30:00-06:00'), ends_at: Time.parse('2022-05-14T15:00:00-06:00') }],
        ['S1', { starts_at: Time.parse('2022-05-14T12:30:00-06:00'), ends_at: Time.parse('2022-05-14T15:00:00-06:00') }],
        ['T1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['U1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['V1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['W1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['X1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['Y1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['Z1', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['A2', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['B2', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['C2', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['D2', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['E2', { starts_at: Time.parse('2022-05-14T12:00:00-06:00'), ends_at: Time.parse('2022-05-14T13:30:00-06:00') }],
        ['F2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['G2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['H2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['I2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['J2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['K2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['L2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['M2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['N2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['O2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['P2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['Q2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['R2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['S2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['T2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['U2', { starts_at: Time.parse('2022-05-14T15:00:00-06:00'), ends_at: Time.parse('2022-05-14T16:30:00-06:00') }],
        ['V2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['W2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['X2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['Y2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['Z2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['A2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['B2', { starts_at: Time.parse('2022-05-14T14:00:00-06:00'), ends_at: Time.parse('2022-05-14T15:30:00-06:00') }],
        ['C2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['D2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['E2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['F2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['G2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['H2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['I2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['J2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['K2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['L2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['M2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['N2', { starts_at: Time.parse('2022-05-14T10:00:00-06:00'), ends_at: Time.parse('2022-05-14T11:30:00-06:00') }],
        ['O2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['P2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['Q2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['R2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['S2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['T2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['U2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['V2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['W2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['X2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['Y2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }],
        ['Z2', { starts_at: Time.parse('2022-05-14T13:00:00-06:00'), ends_at: Time.parse('2022-05-14T14:30:00-06:00') }]
      ]

      doctors = %w[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35]

      [appointments, doctors]
    end
  end
end
