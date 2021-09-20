A User Story describes one thing a program is expected to do, from the perspective of somebody using that program.

Here, we are outlining the Objects and Messages based on the two user stories below

> As a person,
> So that I can use a bike,
> I'd like a docking station to release a bike

> As a person,
> So that I can use a good bike,
> I'd like to see if a bike is working

| Objects | Messages |
|---------|----------|
| Person | use_bike |
| Bike | is_working |
| Docking Station | release_bike |

[User Stories Diagram (Domain Model)](https://lucid.app/documents/embeddedchart/69b03407-6d3b-43b6-99ff-f425202cccc9)

## Feature Test

A Domain Model is an abstract representation of the Objects within a system, and the Messages they use to communicate with one another. Once this model has been build, you need to think about how your Objects and Messages will work together in code - this is called a *Feature Test*

## Errors

Erros are good. They tell us what the problem is and point us towards where we can go to fix it

> Traceback (most recent call last):
>       4: from /Users/danmarshall/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
>       3: from /Users/danmarshall/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
>       2: from /Users/danmarshall/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
>       1: from (irb):1:in `<main>'
> NameError (uninitialized constant DockingStation)
