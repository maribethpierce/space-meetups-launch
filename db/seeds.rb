# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
users = User.all
users.delete_all
meetups = Meetup.all
meetups.delete_all

jinny = User.create(provider: 'twitter', uid: 'usr1', username: 'thisisme', email: 'me@me.com', avatar_url: 'here.com')
ginny = User.create(provider: 'twitter', uid: 'usr2', username: 'this1isme', email: 'me1@me.com', avatar_url: 'here1.com')
chinny = User.create(provider: 'twitter', uid: 'usr3', username: 'this2isme', email: 'me2@me.com', avatar_url: 'here2.com')
benny = User.create(provider: 'twitter', uid: 'usrI', username: 'thisIisme', email: 'meI@me.com', avatar_url: 'hereI.com')

funstuffwithfriends = Meetup.create(title: 'games', description: 'play some', location: 'my house', date: '2015/02/02')
boringstuffwithstrangers = Meetup.create(title: 'couch some', description: 'sit around', location: 'your house', date: '2015/02/02')
watchpaintdry = Meetup.create(title: 'supervision', description: 'watch paint dry', location: 'her house', date: '2015/02/02')
hackathon = Meetup.create(title: 'fix the world', description: 'code some', location: 'Tha house', date: '2015/02/02')

MeetupAttendee.create(user: jinny, meetup: funstuffwithfriends)
MeetupAttendee.create(user: ginny, meetup: funstuffwithfriends)
MeetupAttendee.create(user: chinny, meetup: boringstuffwithstrangers)
MeetupAttendee.create(user: benny, meetup: hackathon)
MeetupAttendee.create(user: benny, meetup: watchpaintdry)
MeetupAttendee.create(user: jinny, meetup: hackathon)
MeetupAttendee.create(user: ginny, meetup: hackathon)
MeetupAttendee.create(user: chinny, meetup: hackathon)
MeetupAttendee.create(user: jinny, meetup: watchpaintdry)
MeetupAttendee.create(user: ginny, meetup: boringstuffwithstrangers)
