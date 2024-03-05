"Ashley awoke peacefully, ready to begin her day. This could be the best day ever. Ashley has a presentation in class today. The first thing on her To Do List was her morning skincare"

->skincare_option
===skincare_option
// If Ashley makes good decision, she will feel refreshed during the day (leading to the best day ever)
*[do skincare]->choose_skincare
*[skip skincare]->skip_skincare

=choose_skincare
"Great choice! This is going to be a great day"
->breakfast_choice
=skip_skincare
"Should Ashley do skincare? Yes. Will Ashley do skincare? No. Why?  Blame it on stress? "
->breakfast_choice

===breakfast_choice
// If Ashley eats breakfast she won't pass out during her presentation
- "The next thing to do is eat a healthy and hearty breakfast. It would be a good idea for Ashley to eat Oatmeal and Eggs."
*[eat breakfast]
"Yikes you're going to be late! Go, Go, Go!"
->good_ending
*[skip breakfast]
"Yikes you're going to be late! Go, Go, Go!"
->bad_ending


===good_ending
"The bus is definitely more reliable than bike. Time to ride!"
*[ride the bus]->ride_bus
*[ride your bike]->ride_bike

=ride_bus
"Great choice! Now Ashley is going to kill this presentation by arriving early"
->good_presentation
=ride_bike
"Bad idea to ride a bike today! It is raining hard but it's too late to turn back. Time to be late to present your work"
->bad_ending
=good_presentation
" Just as expected the presentation was awesome. Best day ever!"
->END
===bad_ending
"The day has been terrible. A combination of bad decisions resulted in an F on the presentation. Life sucks. Maybe next time Ashley should listen to her inner narration!"
->END




