# frozen_string_literal: true

module Appointment
  # Start service for appointments which returns output
  class Start < BaseService
    def initialize
      @appointments, @doctors = []
      @output = {}
    end

    def call
      @appointments, @doctors = Appointment::ReadData.call
      sort_appointments
      start_appointments
      puts "Output: #{@output}"
    end

    private

    def start_appointments
      @doctors.each do |doctor|
        doctor_appointment = []
        return @output if @appointments.empty?

        assign_appointments(doctor_appointment)
        @output[doctor] = doctor_appointment.map { |app| app[0] }
      end
    end

    def assign_appointments(doctor_appointment)
      @appointments.each do |app|
        if doctor_appointment.empty?
          add_appointment(doctor_appointment, app)
        else
          sorted_array = doctor_appointment.group_by { |e| e[1][:ends_at] }.sort
          add_appointment(doctor_appointment, app) if app[1][:starts_at] >= sorted_array.last[0]
        end
      end
    end

    def add_appointment(doctor_appointment, app)
      doctor_appointment.push(app)
      @appointments.delete(app)
    end

    def sort_appointments
      appointments = []
      @appointments.group_by { |e| e[1][:starts_at] }.sort.each { |d| d[1].map { |app| appointments.push(app) } }
      @appointments = appointments
    end
  end
end
