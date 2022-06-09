## Appointment Scheduler

### Setup Instructions

- Download/clone the project
- cd `project_directory`
- run `bundle install`
- run `ruby appointment` it will print and return the output
- run `rspec` it will execute all test cases regarding read_data and start_appointment

### Use Cases
- Solved to schedule appointments to doctors in a way that requires the least number of doctors.
- The same doctor cannot have an overlapping appointment and there's no limit to how many appointments a doctor can have

### Contents
- Written an algo for the appointment booking in the required mananer
- Written test cases using rspec gem

### Notes
Tried to utilise the `https://github.com/ankane/or-tools-ruby` but it was not suitable in our case due to mismatched dataset. Also, tried to find some of the other gems as well that could serve our purpose but could find luck in that so decided to move forward with custom algo. 
