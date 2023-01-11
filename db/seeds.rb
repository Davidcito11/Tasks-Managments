for i in 1..10 do
    
    Employye.create(name: "Name - #{i}", last_name: "Last_name - #{i}", document: "Document - #{i}", mobile: "Mob - #{i}", salary: "Salary - #{i}", enable: "True"
    )

    Enterprise.create(nit: "Nit - #{i}", address: "Address - #{i}", mobile: "Mobile - #{i}", enable:"True")

    Tag.create(name: "Name - #{i}", color: "Color - #{i}", enable: "True")

end
