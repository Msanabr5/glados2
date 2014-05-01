
#Create people
people = []
people[0] = Person.create(name: "Matthew Sanabria", first_name: "Matthew", last_name: "Sanabria")
people[1] = Person.create(name: "Scott Conley", first_name: "Scott", last_name: "Conley")
people[2] = Person.create(name: "Mike Zeno", first_name: "Mike", last_name: "Zeno")

#Create fobs
fob_list = [ "1234567890A", "1234567890B", "1234567890C" ]
fobs = fob_list.map.with_index {|fob, i| Fob.create(key: fob, person_id: people[i].id)}

#Create doors
door_list = [ "Front Door", "Side Door", "Rear Door" ]
doors = door_list.map {|door| Door.create(name: door)}

#Create door keys
door_keys = []
# person_id 1 can open door_ids 1-3
door_keys[0] = DoorKey.create(person_id: 1, door_id: 1)
door_keys[1] = DoorKey.create(person_id: 1, door_id: 2)
door_keys[2] = DoorKey.create(person_id: 1, door_id: 3)
# person_id 2 can open door_ids 1-2
door_keys[3] = DoorKey.create(person_id: 2, door_id: 1)
door_keys[4] = DoorKey.create(person_id: 2, door_id: 2)
#person_id 3 can open door_ids 1
door_keys[5] = DoorKey.create(person_id: 3, door_id: 3)

#Create agreements
agreement_name = ["Agreement1", "Agreement2", "Agreement3"]
author_type = ["Counsel", "Management"]
agreements = []
agreements[0] = Agreement.create(name: agreement_name[0], author: author_type[0], version: 1)
agreements[1] = Agreement.create(name: agreement_name[1], author: author_type[1], version: 1)
agreements[2] = Agreement.create(name: agreement_name[2], author: author_type[0], version: 1)

#Create agreement executions
agreement_executions = []
agreement_executions[0] = AgreementExecution.create(person_id: people[0].id, agreement_id: agreements[0].id, date_signed: Date.current, agreement_url: "http://www.something.com/1")
agreement_executions[1] = AgreementExecution.create(person_id: people[1].id, agreement_id: agreements[1].id, date_signed: Date.current, agreement_url: "http://www.something2.com/2")
agreement_executions[2] = AgreementExecution.create(person_id: people[2].id, agreement_id: agreements[2].id, date_signed: Date.current, agreement_url: "http://www.something.com/3")

#Create equipment 
equipment = []
equipment[0]= Equipment.create(model: "Lab_Equipment1", make: "Flipstone Tech", serial_number: "123ABC456", replacement_cost: 4000)
equipment[1]= Equipment.create(model: "Lab_Equipment2", make: "Flipstone Tech", serial_number: "123DEF456", replacement_cost: 5000)
equipment[2]= Equipment.create(model: "Lab_Equipment3", make: "Flipstone Tech", serial_number: "123GHI456", replacement_cost: 6000)

#Create posession contracts
contract_type = ["a lease", "a borrow", "a donation", "a sale"]
p_contracts = []
p_contracts[0] = PossessionContract.create(person_id: people[0].id, equipment_id: equipment[0].id, contract_type: contract_type[0], payment_cents: 100, expires: Date.current, start_date: Date.current)
p_contracts[1] = PossessionContract.create(person_id: people[1].id, equipment_id: equipment[1].id, contract_type: contract_type[1], payment_cents: 200, expires: Date.current, start_date: Date.current)
p_contracts[2] = PossessionContract.create(person_id: people[2].id, equipment_id: equipment[2].id, contract_type: contract_type[3], payment_cents: 500, expires: Date.current, start_date: Date.current)
