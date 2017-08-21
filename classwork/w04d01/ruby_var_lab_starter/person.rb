class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 20
    end

    def children
        # create children array here
        children = ["Steve", "Stevo", "Steverino", "Stevio"]

    end

    def address

        # create address hash here
        address = {
            town: "York",
            street: "yorkStreet",
            county: "Yorkshire",
            postcode: "LS64AU",
            house_number: 27,
            email_addresses: ["person@gmail.com", "person2@gmail.com"]
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end

end