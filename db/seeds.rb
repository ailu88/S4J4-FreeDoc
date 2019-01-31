require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
DoctorSpecialty.destroy_all

10.times do 
    city = City.create!(name: Faker::Address.city)
   end

puts "10 villes ont été créées"
10.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
    end

puts "10 patients ont été créés"
10.times do
   doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
  end

puts "10 docteurs ont été créés"
20.times do
   specialty = Specialty.create!(name: Faker::Lorem.word)
  end

puts "10 spécialités ont été créées"
50.times do
    appointment = Appointment.create!(date: Faker::Time.between(2.days.ago, Date.today, :day), city: City.all.sample, patient: Patient.all.sample, doctor: Doctor.all.sample)
   end

puts "10 rendez-vous ont été créés"
20.times do
    doctor_specialty = DoctorSpecialty.create!(doctor: Doctor.all.sample, specialty: Specialty.all.sample)
end
puts "10 jonctions ont été créées"