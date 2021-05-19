+++
title = "Events in HTML"
date = 2021-05-19
+++

## Capturing vs Bubbling

Upon an event the browser first looks for corresponding events handlers
registered for the capture phase starting from the root tag `<html`> inwards.

Then it goes back from the innermost element outwards looking for events
registered for the bubbling phase.

By default, events are registered in the bubbling phase if you use
`target.addEventListener(type, callback)`. However, you can force it to use
the capture phase by explicitly passing a third parameter of `true` to the
`addEventListener` method

## References
- [MDN: Events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events#event_bubbling_and_capture)
- [MDN: addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
