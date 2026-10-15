.class public Lorg/anddev/andengine/entity/scene/CameraScene;
.super Lorg/anddev/andengine/entity/scene/Scene;
.source "CameraScene.java"


# instance fields
.field protected mCamera:Lorg/anddev/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/scene/CameraScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 40
    return-void
.end method


# virtual methods
.method public centerShapeInCamera(Lorg/anddev/andengine/entity/shape/Shape;)V
    .locals 5
    .param p1, "pShape"    # Lorg/anddev/andengine/entity/shape/Shape;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 112
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 113
    .local v0, "camera":Lorg/anddev/andengine/engine/camera/Camera;
    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 114
    return-void
.end method

.method public centerShapeInCameraHorizontally(Lorg/anddev/andengine/entity/shape/Shape;)V
    .locals 2
    .param p1, "pShape"    # Lorg/anddev/andengine/entity/shape/Shape;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 118
    return-void
.end method

.method public centerShapeInCameraVertically(Lorg/anddev/andengine/entity/shape/Shape;)V
    .locals 3
    .param p1, "pShape"    # Lorg/anddev/andengine/entity/shape/Shape;

    .prologue
    .line 121
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 122
    return-void
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 3
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 78
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    instance-of v0, v2, Lorg/anddev/andengine/entity/scene/CameraScene;

    .line 79
    .local v0, "childIsCameraScene":Z
    if-eqz v0, :cond_0

    .line 80
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertCameraSceneToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 81
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v1

    .line 82
    .local v1, "result":Z
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSceneToCameraSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 85
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    const/16 v1, 0x1701

    .line 91
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 93
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onApplyCameraSceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 95
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 96
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 97
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 99
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 101
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 103
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 3
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    if-nez v2, :cond_0

    .line 71
    :goto_0
    return v1

    .line 63
    :cond_0
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSceneToCameraSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 65
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 67
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertCameraSceneToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    goto :goto_0
.end method

.method public setCamera(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 52
    return-void
.end method
