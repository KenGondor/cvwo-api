Task.create(name: "Buy groceries", start: nil, due: "2020-12-20", priority: 1, description: "", completed: false, tag: "hardcode") #overdue
Task.create(name: "CS9230 Assignment", start: "2020-10-02", due: "2021-01-04", priority: 3, description: "Final report left", completed: false, tag: "hardcode") #incomplete
Task.create(name: "Refurbish living room", start: "2020-12-04", due: "2020-12-30", priority: 1, description: "For the new year", completed: true, tag: "hardcode") #completed
Task.create(name: "Final Year Project, CS", start: "2021-01-10", due: "2021-05-01", priority: 3, description: "FYP: Build some thing", completed: true, tag: "hardcode") #completed
Task.create(name: "CNY preparations", start: "2021-01-20", due: "2021-01-29", priority: 2, description: "Preparing for CNY", completed: false, tag: "hardcode") #incomplete
Task.create(name: "Project Rolling Thunder", start: "2020-12-10", due: "2021-04-04", priority: 2, completed: false, tag: "hardcode") #incomplete
Task.create(name: "Project Black Mamba", start: "2020-10-01", due: "2020-11-01", priority: 3, completed: false, tag: "hardcode") #overdue
Task.create(name: "Bush Whack Project", start: "2020-11-01", due: "2020-12-01", priority: 2, completed: false, tag: "hardcode") #overdue
Task.create(name: "Wintery Bay Project", start: "2020-12-30", due: "2021-01-04", priority: 3, completed: true, tag: "hardcode") #completed

def dice
    return 1 + rand(6)
end

10.times do
    due_date = Faker::Date.in_date_period(year: 2021)
    Task.create(
        name: "Project " << Faker::Movie.title,
        start: Faker::Date.in_date_period(month: 12),
        due: due_date,
        priority: Faker::Number.between(from: 0, to: 3),
        completed: dice()%2==0 ? true : false,
        tag: dice()%2==0 ? "even_tag" : "odd_tag"
    )
end
