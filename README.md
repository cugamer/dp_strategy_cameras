Cameras strategy pattern (Ruby)
===============================

An implementation of the strategy pattern as applied to an application about cameras.  The camera class is subclassed to various concrete camera classes.  The superclass implements camera behaviors, the subclasses instantiate objects which hold those behaviors.  Behaviors themselves are held in the Take, ZoomIn and ZoomOut classes.  Each class implements a common interface which the Camera class uses to call behaviors.  This is basic practice with the strategy pattern

![Class diagram of project](https://github.com/cugamer/dp_strategy_cameras/blob/master/dp_strategy_cameras.png)
