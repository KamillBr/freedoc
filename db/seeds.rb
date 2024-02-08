# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création médecins
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", specialty: "Cardio", zip_code: "12345")
doctor2 = Doctor.create(first_name: "Alice", last_name: "Smith", specialty: "Pediatre", zip_code: "6789")

# Création patients
patient1 = Patient.create(first_name: "Bob", last_name: "Dillan")
patient2 = Patient.create(first_name: "Eve", last_name: "Longoria")

# Création RDV
appointment1 = Appointment.create(date: DateTime.new(2024, 2, 8, 10, 30), doctor: doctor1, patient: patient1)
appointment2 = Appointment.create(date: DateTime.new(2024, 2, 9, 14, 45), doctor: doctor2, patient: patient2)
