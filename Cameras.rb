class Camera
  def takePicture
    return "#{@description} #{@takePictureBehavior.takePictureBehavior}"
  end

  def zoomIn
    zoomInBehavior.zoomInBehavior
  end

  def zoomOut
    zoomOutBehavior.zoomOutBehavior
  end
end

class DisposableCamera < Camera
  def initialize
    @description = "Cheep disposable camera"
    @takePictureBehavior = TakeStillImage.new
  end
end

class VideoCamera < Camera
  def initialize
    @description = "High def video camera"
    @takePictureBehavior = TakeVideo.new
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

disposable = DisposableCamera.new
video = VideoCamera.new

p disposable.takePicture
p video.takePicture