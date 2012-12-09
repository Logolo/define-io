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

**TODO (12/9/12)**
* Basic helper method in reviews_helper.rb has been implemented which tracks
  the reviews_voted_on array/serializiation to see if a user has voted on a given
  review. That helper is used in the review's show view as of right now, but it
  only tracks if a vote has been cast. There is no way to currently change one's
  vote. This is not necessarily a top priority, but it will be resolved at some
  point to allow for that to be changed.
* I might like to add a company field to the products to allow for the user to
  search by company. In messing around with Raphael.js, I put a little Microsoft
  logo in the companies bar, so my thought is that I'll do it at some point, but
  I will have to then implement a search bar, which is another task on its own
  as there will have to be a variation of search options.
* There's a lot of work which needs to be done with regards to the layout, and
  to be honest this may have to be where much of the future work needs to be done,
  if only so I have a better idea of where things need to be and what functionality
  they need to have. My goal isn't to overcomplicate the design, by any means,
  but there is likely going to be a need for a lot of JavaScript.
* I've removed the use of friendly_id for now because it's messing with my RESTful
  routes with products/reviews. I'll fix it later on.