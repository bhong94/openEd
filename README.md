OpenEd

This is a web application developed using Ruby on Rails with the aim of connecting college-level student educators with local primary and secondary education students to provide more accessible education opportunities.

Ruby on Rails
Ruby version 2.6.4p104
Rails version 5.2.3

Installing this Repository:
>git clone https://github.com/bhong94/openEd

Once you've cloned this repository, run bundle to install gems:
>bundle install

This project utilizes postgreSQL version 9.2.24
To install using yum, run the command:
>sudo yum install postgresql-libs postgresql-devel

Navigate to 'src' folder and run the app:
>rails s

note: this will run the puma server on localhost:3000 by default

If you are running it on TCNJ's VM:
>rails s -b {ipaddress} -p 3000

where {ipaddress} is the ip address of the vm.
This can be found by running the command:
>ip addr show eth0


