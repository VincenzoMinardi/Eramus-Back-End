# Creazione di un nuovo utente
utente = Utente.new(
  username: 'mario123',
  password: 'password123',
  name: 'Mario',
  surname: 'Rossi',
  date_of_birth: Date.new(1990, 5, 15)
)

utente = Utente.new(
  username: 'Vincenzo99',
  password: 'password99',
  name: 'Vincenzo',
  surname: 'Minardi',
  date_of_birth: Date.new(1999, 5, 5)
)

# Salvataggio del nuovo utente nel database
utente.save
