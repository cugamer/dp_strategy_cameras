class Camera
  def takePicture
    return "#{@description} #{@takePictureBehavior.takePictureBehavior}"
  end

  def zoomIn
    return "#{@description}  #{@zoomInBehavior.zoomInBehavior}"
  end

  def zoomOut
    return "#{@description} #{@zoomOutBehavior.zoomOutBehavior}"
  end
end

class DisposableCamera < Camera
  def initialize
    @description = "Cheep disposable camera"
    @takePictureBehavior = TakeStillImage.new
    @zoomInBehavior = NoZoomIn.new
    @zoomOutBehavior = NoZoomOut.new
  end
end

class VideoCamera < Camera
  def initialize
    @description = "High def video camera"
    @takePictureBehavior = TakeVideo.new
    @zoomInBehavior = ZoomIn.new
    @zoomOutBehavior = ZoomOut.new
  end
end

class NikonCamera < Camera
  attr_writer :takePictureBehavior

  def initialize
    @description = "Quality nikon camera"
    @takePictureBehavior = TakeStillImage.new
    @zoomInBehavior = ZoomIn.new
    @zoomOutBehavior = ZoomOut.new
  end
end

class TakeStillImage
  def takePictureBehavior
    return "takes a still image"
  end
end

class TakeVideo
  def takePictureBehavior
    return "records a video"
  end
end

class ZoomIn
  def zoomInBehavior
    return "zooms in"
  end
end

class NoZoomIn
  def zoomInBehavior
    "unable to zoom in"
  end
end

class ZoomOut
  def zoomOutBehavior
    return "zooms out"
  end
end

class NoZoomOut
  def zoomOutBehavior
    return "unable to zoom out"
  end
end

disposable = DisposableCamera.new
video = VideoCamera.new
nikon = NikonCamera.new

p disposable.takePicture
p video.takePicture
p nikon.takePicture

p disposable.zoomIn
p video.zoomIn
p nikon.zoomIn

p disposable.zoomOut
p video.zoomOut
p nikon.zoomOut

# The Nikon camera dynamically gets a new behavior and is able to use
# it at runtime.
nikon.takePictureBehavior = TakeVideo.new
p nikon.takePicture