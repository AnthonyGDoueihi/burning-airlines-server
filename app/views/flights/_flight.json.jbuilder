json.extract! flight, :id, :flight_number, :origin, :destination, :date, :airplane_id

# json.set! :airplane do
  json.extract! flight.airplane, :plane_model, :rows, :columns
# end


json.set! :reservation do
  json.array! flight.reservations, partial: 'reservations/reservation', as: :reservation
end
