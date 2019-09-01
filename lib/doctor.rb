class Doctor
  attr_reader :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def new_appointment (patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    doctor_patients = []
    Appointment.all.each do |a|
      doctor_patients << a.patient if a.doctor == self
    end
    doctor_patients
  end
end
