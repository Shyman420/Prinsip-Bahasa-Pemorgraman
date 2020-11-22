import Control.Monad ( unless )
import Graphics.UI.GLUT hiding ( initialize )

main :: IO ()
main = do
   _ <- getArgsAndInitialize
   initialDisplayMode $= [ DoubleBuffered, RGBMode, WithDepthBuffer ]

   -- Create the window
   initialWindowSize $= Size 640 480
   initialWindowPosition $= Position 0 0
   _ <- createWindow "191524014 Praktikum 8"

   initialize

   displayCallback $= display
   reshapeCallback $= Just reshape

   mainLoop

initialize :: IO ()
initialize = do

   depthFunc $= Just Less

reshape :: ReshapeCallback
reshape size@(Size width height) =
   unless (height == 0) $ do
      viewport $= (Position 0 0, size)
      matrixMode $= Projection
      loadIdentity
      perspective 100 (fromIntegral width / fromIntegral height) 1 100

      matrixMode $= Modelview 0

display :: DisplayCallback
display = do
   clear [ ColorBuffer, DepthBuffer ]
   let color3f = color :: Color3 GLfloat -> IO ()
       v = vertex :: Vertex3 GLfloat -> IO ()

--BACKGROUND
   loadIdentity
   lookAt (Vertex3 0 0 1) (Vertex3 0 0 0) (Vector3 0 1 0)

   renderPrimitive Polygon $ do
   	color3f (Color3 0.8117647 0.8196078 0.6156863)
   	v (Vertex3 (-14) (-14) (-12))
   	v (Vertex3 (14) (-14) (-12))
   	v (Vertex3 (14) (14) (-12))
   	v (Vertex3 (-14) (14) (-12))

--OBJECT
	--CHANGE CAMERA DIRECTION
   loadIdentity
   --view 1
   -- lookAt (Vertex3 6 0 8) (Vertex3 0 0 0) (Vector3 0 1 0)
   --view 2
   -- lookAt (Vertex3 (-6) 0 8) (Vertex3 0 0 0) (Vector3 0 1 0)
   --view 3
   lookAt (Vertex3 0 0 5) (Vertex3 0 0 0) (Vector3 0 1 0)
--BASE
 	--FRONT
   renderPrimitive Polygon $ do
   	color3f (Color3 0.7176471 0.6117647 0.8156863)
   	v (Vertex3 3 3 2)
   	v (Vertex3 3 (-3) 2)
   	v (Vertex3 (-3) (-3) 2)
   	v (Vertex3 (-3) 3 2)

   	--BACK
   renderPrimitive Polygon $ do
   	-- color3f (Color3 1 1 0)
   	v (Vertex3 3 3 (-1))
   	v (Vertex3 3 (-3) (-1))
   	v (Vertex3 (-3) (-3) (-1))
   	v (Vertex3 (-3) 3 (-1))

   	--LEFT
   renderPrimitive Polygon $ do
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	v (Vertex3 (-3) 3 (-1))
   	v (Vertex3 (-3) (-3) (-1))
   	color3f (Color3 0.7176471 0.6117647 0.8156863)
   	v (Vertex3 (-3) (-3) 2)
   	v (Vertex3 (-3) 3 2)

   	--RIGHT
   renderPrimitive Polygon $ do
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	v (Vertex3 (3) 3 (-1))
   	v (Vertex3 (3) (-3) (-1))
   	color3f (Color3 0.7176471 0.6117647 0.8156863)
   	v (Vertex3 (3) (-3) 2)
   	v (Vertex3 (3) 3 2)

   	--TOP
   renderPrimitive Polygon $ do
   	-- color3f (Color3 0.7176471 0.6117647 0.8156863)
   	color3f (Color3 1 0 0)
   	v (Vertex3 3 3 2)
   	v (Vertex3 3 3 (-1))
   	v (Vertex3 (-3) 3 (-1))
   	v (Vertex3 (-3) 3 2)

--DETAIL 1
	--GLASS FRONT
   renderPrimitive Polygon $ do
   	color3f (Color3 0.3058824 0.6 0.533333)
   	v (Vertex3 2 2 2.01)
   	color3f (Color3 0.4313725 0.8509804 0.7529412)   	
   	v (Vertex3 2 0 2.01)
   	color3f (Color3 0.4313725 0.8509804 0.7529412)   	
   	v (Vertex3 0 0 2.1)
   	v (Vertex3 0 2 2.01)

   renderPrimitive Polygon $ do
   	color3f (Color3 0.4313725 0.8509804 0.7529412)
   	v (Vertex3 2 0 2.01)   	
   	color3f (Color3 0.3058824 0.6 0.533333)
   	v (Vertex3 2 (-2) 2.01)
   	color3f (Color3 0.4313725 0.8509804 0.7529412)
   	v (Vertex3 0 (-2) 2.01)   	
   	v (Vertex3 0 0 2.1)

   renderPrimitive Polygon $ do
   	color3f (Color3 0.4313725 0.8509804 0.7529412)
   	v (Vertex3 (-2) 0 2.01)   	
   	color3f (Color3 0.3058824 0.6 0.533333)
   	v (Vertex3 (-2) (-2) 2.01)
   	color3f (Color3 0.4313725 0.8509804 0.7529412)
   	v (Vertex3 0 (-2) 2.01)
   	v (Vertex3 0 0 2.1)

   renderPrimitive Polygon $ do
   	color3f (Color3 0.3058824 0.6 0.533333)
   	v (Vertex3 (-2) 2 2.01)
   	color3f (Color3 0.4313725 0.8509804 0.7529412)   	
   	v (Vertex3 (-2) 0 2.01)   	
   	v (Vertex3 0 0 2.1)
   	v (Vertex3 0 2 2.01)

--DETAIL 2
	--BACK BOTTOM
   renderPrimitive Polygon $ do
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	v (Vertex3 3 (-2) (-2.5))
   	v (Vertex3 3 (-3) (-1))
   	v (Vertex3 (-3) (-3) (-1))
   	v (Vertex3 (-3) (-2) (-2.5))

   	--BACK TOP 1
   renderPrimitive Polygon $ do
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	v (Vertex3 3 1 (-1.5))
   	v (Vertex3 3 3 (-1))
   	v (Vertex3 (-3) 3 (-1))
   	v (Vertex3 (-3) 1 (-1.5))

   	--BACK TOP 2
   renderPrimitive Polygon $ do
   	-- color3f (Color3 0.6313725 0.5411765 0.7607843)
   	v (Vertex3 3 0 (-2.5))
   	v (Vertex3 3 1 (-1.5))
   	v (Vertex3 (-3) 1 (-1.5))
   	v (Vertex3 (-3) 0 (-2.5))

	--BACK BACK
   renderPrimitive Polygon $ do
   	-- color3f (Color3 0.6313725 0.5411765 0.7607843)
   	color3f (Color3 1 0 0)
   	v (Vertex3 3 (-2) (-2.5))
   	v (Vertex3 3 0 (-2.5))
   	v (Vertex3 (-3) 0 (-2.5))
   	v (Vertex3 (-3) (-2) (-2.5))

   	--BACK RIGHT
   renderPrimitive Polygon $ do
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	-- color3f (Color3 1 0 0)
   	v (Vertex3 3 (-3) (-1))
   	color3f (Color3 0.2823529 0.2392157 0.3215686)
   	v (Vertex3 3 (-2) (-2.5))
   	v (Vertex3 3 0 (-2.5))
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	v (Vertex3 3 1 (-1.5))
   	v (Vertex3 3 3 (-1))

	--BACK LEFT
   renderPrimitive Polygon $ do
   	color3f (Color3 0.6313725 0.5411765 0.7607843)
   	-- color3f (Color3 1 0 0)
   	v (Vertex3 (-3) (-3) (-1))
   	v (Vertex3 (-3) (-2) (-2.5))
   	v (Vertex3 (-3) 0 (-2.5))
   	v (Vertex3 (-3) 1 (-1.5))
   	v (Vertex3 (-3) 3 (-1))

--DETAIL 3
	--BUTTON 1
   renderPrimitive Polygon $ do
   	color3f (Color3 0 0 0)
   	v (Vertex3 1.8 (-2.6) 2.1)
   	v (Vertex3 1.8 (-2.2) 2.1)
   	v (Vertex3 1.4 (-2.2) 2.1)
   	v (Vertex3 1.4 (-2.6) 2.1)

   	--BUTTON 2
   renderPrimitive Polygon $ do
   	color3f (Color3 0 0 0)
   	v (Vertex3 1.2 (-2.4) 2.1)
   	v (Vertex3 1.2 (-2.3) 2.1)
   	v (Vertex3 0.9 (-2.3) 2.1)
   	v (Vertex3 0.9 (-2.4) 2.1)

   	--BUTTON 3
   renderPrimitive Polygon $ do
   	color3f (Color3 0 0 0)
   	v (Vertex3 0.7 (-2.4) 2.1)
   	v (Vertex3 0.7 (-2.3) 2.1)
   	v (Vertex3 0.4 (-2.3) 2.1)
   	v (Vertex3 0.4 (-2.4) 2.1)

--SHADOW
   renderPrimitive Polygon $ do

   	color3f (Color3 0.1215686 0.1058824 0.1411765)
   	v (Vertex3 4 (-3.1) 3)
   	v (Vertex3 4 (-3.1) (-3.5))
   	v (Vertex3 (-4) (-3.1) (-3.5))
   	v (Vertex3 (-4) (-3.1) 3)

   swapBuffers