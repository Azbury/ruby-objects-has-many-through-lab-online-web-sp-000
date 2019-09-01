class Patient
  @@all = []
  attr_reader :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    patient_doctors = []
    Appointment.all.each do |a|
      patient_doctors << a.doctor if a.patient == self
    end
    patient_doctors
  end

end
