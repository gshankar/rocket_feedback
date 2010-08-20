RocketFeedback
==============

A simple feedback panel for Ruby on Rails applications. It works like this:

The Rocket Feedback panel sits quietly off the page (like a ninja), ready to strike (like lightning) at the first sign of trouble. Pouncing (like a tiger) before your user has had the time to forget their fantastic idea on how you could improve your app, Rocket Feedback grabs this idea (like a giant electromagnet wielding crane) and whisks it away to you (like a... pigeon... with LASERS!)


What makes it tick?
-------------------

Rocket Feedback depends on the following technologies:

1. Ruby on Rails - ( The plugin was built and tested on 2.3.8 but never fear, a Rails 3 version will be on the way shortly)
2. ActionMailer - to send email feedback
3. JQuery - for AJAX goodness
4. Jquery Validate Plugin - for beautiful and easily extensible validation of the feedback form
5. HAML - (I plan to release an option to choose either HAML or ERB views in a future update)

I can haz Rocket Feedback?
--------------------------

Yes you can. Just install the plugin using:

`script/plugin install git://github.com/gshankar/rocket_feedback.git`

from your app's root directory. Then call: 

`script/generate rocket_feedback` 

and... MAGIC! (i.e. follow the instructions that the generator gives you on how to complete your setup)

Copyright (c) 2010 Ganesh Shankar (ganesh@rocket26.com.au), released under the MIT license
