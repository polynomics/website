---
layout: post
cover-image: "2016-february-update-cover.png"
---

The past few months has seen quite a significant amount of progress made on
the game engine, resulting in better graphics and improved performance. A
lot of code from the early/prototyping stage of development was refactored and
is now in a state where I feel more comfortable shipping it as a commercial product.
In order to release an alpha version mid-2016 a conscious effort has gone into
polishing what is already in the game rather than adding new features, and that will
continue well into February also.

## Chunk Loading & Tessellation

Some major improvements were made this month with the
chunk loading system. Previously chunks within an arbitrary radius were
loaded- now that is narrowed to only chunks currently in view. Those
chunks out of view are ignored for rendering and the processing power required for
them is much less- for instance, NPC pathfinding and traffic pathfinding is disabled
and instead journey time is estimated, putting the NPC/vehicle into an idle state
until the destination is assumed reached.

[Tessellation](https://en.wikipedia.org/wiki/Tessellation_(computer_graphics))
has also been implemented for terrain rendering, and most other assets,
resulting in further performance gains. The video below demonstrates how different
chunks are drawn at different levels of quality as the camera zooms out. While
no strict limit has been set currently for maximum view distance (or for maximum
map size while on the subject), giving players the ability to set set these
limits based on hardware available, and also more fine-grain controls such the maximum
quality to render various world elements at, will go a long way to making something
that is also accessible for players with lower spec hardware.

<video class="gify" poster="/static/2016-february-update-terrain-zoom.jpg" autoplay muted loop>
  <source id="webmsource" src="/static/2016-february-update-terrain-zoom.webm" type="video/webm">
  <source id="mp4source" src="/static/2016-february-update-terrain-zoom.mp4" type="video/mp4">
    Sorry, your browser doesn't support HTML5 video.
</video>

## Improved Graphics

Since the last update, shadows have been added to the engine in addition to
[HDR rendering](https://en.wikipedia.org/wiki/High-dynamic-range_rendering) and
[bloom](https://en.wikipedia.org/wiki/Bloom_(shader_effect)). While there is
still a fair amount of polish to do, the graphics are getting close to what is planned
for the initial alpha release. A few more things will be implemented beforehand, such as
adding fog for better depth perception and basic environmental effects such as
rain, clouds etc, while other improvements such as more advanced lighting  will most
likely be delayed until a later release while gameplay and economy improvements take
priority. While these features do result in a better looking world, they do add
to the overhead of the program, but all can be disabled in the settings menu which
would result in something more similar to the graphics in the pre-alpha trailer.

<div><a href="/static/2016-february-update-evening-shadows.png"><img alt="Evening shadows" style="width: 100%" src="/static/2016-february-update-evening-shadows-low.png" /></a></div>

## NPC Animation

Up until recently all NPCs were being rendered as motionless minecraft-like
characters that had not been touched since early development. A walking animation
and idle pose was added this month, along with a character more resembling the low-poly
style of the game. A few more animations for different tasks will be added over the
coming months. In addition, it would be good to eventually individualize skin tone
and clothing color in a later update rather than being rendered as grey characters, but
that is not a priority for now.

<div><a href="/static/2016-february-update-blender-animation.gif"><img alt="Blender animating" style="width: 50%" src="/static/2016-february-update-blender-animation-low.gif" /></a><a href="/static/2016-february-update-group-walking.gif"><img alt="Group walking" style="width: 50%" src="/static/2016-february-update-group-walking-low.gif" /></a></div>

## Improved Road Geometry

Roads were another area that hadn't seen a whole lot of refactoring since
prototyping and weren't implemented all that well initially, having to be drawn a fair
distance above the terrain to avoid intersection. Now road geometry will be
calculated based on the tessellation level of the terrain below, resulting in a
much more visually appealing result- no terrain intersects and no noticeable
change in elevation can be seen between the ground and road. Road markings
have also been added but are still in a pretty basic state- marking intersections and
multi-lane roads properly still needs to be implemented.

<div><a href="/static/2016-february-update-road-geometry-close.png"><img alt="Road geometry close" style="width: 50%" src="/static/2016-february-update-road-geometry-close-low.png" /></a><a href="/static/2016-february-update-road-geometry-far.png"><img alt="Road geometry far" style="width: 50%" src="/static/2016-february-update-road-geometry-far-low.png" /></a></div>

## State Of The Economy

With the graphics side of the game engine in a much better shape as the result of
the last few months of work, improving the economics side of things will be a
greater focus going forward. In the current state of the game, the economy mainly
consists of food production (fishing, farming) and collecting other natural resources
(wood, stone), with NPCs trading with each other to fulfill needs that they do not
directly produce themselves. Prices react to market conditions and deciding what
to produce is influenced by market prices. Government departments also employ NPCs (both
for administrative and physical labor) which is how money is initially circulated into
the early game economy.

A few main areas of focus initially will be making consumer demand more
individualized, increasing the number resources and implementing a
supply chain (i.e. crafting system) for processing raw and intermediate goods
into consumer goods. Moving NPCs away from resembling
the [representative agent](https://en.wikipedia.org/wiki/Representative_agent)
and adjusting behavior based on a range of factors (economic status, family
status, age, health etc) should go a long way to making the economy more
dynamic and gameplay more emergent.

Expanding the role of the government in the game and polishing what has already
been implemented will also be a focus over the next few months. Currently players are
able to create taxes (limited to either income or transaction based) and social services
programs (limited to cash payments) based on specific conditions, zone areas of land
for development and create and manage infrastructure projects, but more departments are
planned in order to increase the scope and range of available government sector
injections/leakages into/out of the economy.

## 2016 Schedule

<div><a href="/static/2016-february-update-morning-shadows.png"><img alt="Morning shadows" style="width: 100%" src="/static/2016-february-update-morning-shadows-low.png" /></a></div>

As already mentioned, polishing the game in it's current state will continue to be a focus, with the GUI,
workflows in regard to placing zones/buildings/roads and controlling departments to be
an initial focus, and definitely some low hanging fruit for some rapid progress
in February. Having something ready to get into the hands of a group of testers perhaps
as early as April would be ideal. Getting initial feedback, bug fixing and expanding
gameplay and depth will be done from there on, until a public alpha release is ready a few months after that.

**Follow [@polynomicsgame](https://www.twitter.com/polynomicsgame) on Twitter or subscribe to email updates below.**

