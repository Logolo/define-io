Define.IO
======

This is the current code for my work-in-progress, *Define.IO*.

Define.IO is a recent concept of my own which is based upon a singular issue I 
have noticed in recent months (or, if I really ponder on it long enough, years)
which consists of this: the fact that tech journalism is, for all intents and purposes,
a failed industry. Often I have come to find various tech sites review a product
in a manner similar to the following:

"This [Company] notebook has very poor battery life -- approximately three hours
per full charge, and the trackpad is absolutely horrendous."

**Product score: 8.5**

Things like this make absolutely no sense to me, and based on the criticisms of
others, I'm not the only one. Tech journalists are unfortunately beneath the
stranglehold of the manufacturers; one particularly scathing review of a flagship
product, and their company might never get to review another product of their
creation ever again.

So what does Define.IO do? The general concept, although it is still currently in the
early stages, is rather simple. Taking the best elements from social news websites
such as Reddit or similar clones, it seeks to base a product's true score on the
opinions of the reviews its users submit.

Current Heroku testing/alpha available at: http://alpha.define.io/

**TODO/UPDATES (1/21/13)**

Things are (sort of) back on track!

What's being done/what must be done:

* Small layout tweaks as I feel necessary. Things look fine for now.
* Tests are being written.
* Must add documentation to code. Some is there, but much is missing.
* Currently there is no weighting or automated process for updating scores. This is a
  more complex thing I want to do, but essentially tie user reviews into the weight of
  a review.
* Add some more JavaScript in to make things a bit more dynamic. A bunch of little things
  (such as showing top reviews within a number of days) doesn't work right now.
* Add a proper admin panel.