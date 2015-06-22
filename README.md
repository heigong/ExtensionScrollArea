# ExtensionScrollArea
A extension scroll area for UIScrollView.

Overriding hitTest of UIView allowing you to detach the events to another UIView.
With this rule, we can create a simple UIVIew subclass that detaches its events to a UIScrollView, so that swiping on this view actually swiping the scrollView.
