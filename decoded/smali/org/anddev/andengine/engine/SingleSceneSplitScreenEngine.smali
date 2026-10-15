.class public Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;
.super Lorg/anddev/andengine/engine/Engine;
.source "SingleSceneSplitScreenEngine.java"


# instance fields
.field private final mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pEngineOptions"    # Lorg/anddev/andengine/engine/options/EngineOptions;
    .param p2, "pSecondCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    .line 34
    iput-object p2, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 35
    return-void
.end method


# virtual methods
.method protected convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 3
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pSurfaceTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 103
    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v0, v1, 0x1

    .line 105
    .local v0, "surfaceWidthHalf":I
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 106
    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 109
    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    goto :goto_0
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 2
    .param p1, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    .line 62
    .local v0, "firstCamera":Lorg/anddev/andengine/engine/camera/Camera;
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    .line 64
    .local v1, "secondCamera":Lorg/anddev/andengine/engine/camera/Camera;
    iget v3, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 65
    .local v3, "surfaceWidth":I
    shr-int/lit8 v4, v3, 0x1

    .line 67
    .local v4, "surfaceWidthHalf":I
    iget v2, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    .line 69
    .local v2, "surfaceHeight":I
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 73
    invoke-interface {p1, v6, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 74
    invoke-interface {p1, v6, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 76
    iget-object v5, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v5, p1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 77
    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 82
    invoke-interface {p1, v4, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 83
    invoke-interface {p1, v4, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 85
    iget-object v5, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v5, p1, v1}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 86
    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 89
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 90
    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    iget v0, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 122
    .local v0, "surfaceWidth":I
    shr-int/lit8 v1, v0, 0x1

    .line 124
    .local v1, "surfaceWidthHalf":I
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v4, v4, v1, v3}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 125
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v1, v4, v1, v3}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 126
    return-void
.end method

.method protected updateUpdateHandlers(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 115
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/Engine;->updateUpdateHandlers(F)V

    .line 116
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onUpdate(F)V

    .line 117
    return-void
.end method
