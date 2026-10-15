.class public Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;
.super Lorg/anddev/andengine/engine/Engine;
.source "DoubleSceneSplitScreenEngine.java"


# instance fields
.field private final mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

.field private mSecondScene:Lorg/anddev/andengine/entity/scene/Scene;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pEngineOptions"    # Lorg/anddev/andengine/engine/options/EngineOptions;
    .param p2, "pSecondCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    .line 36
    iput-object p2, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 37
    return-void
.end method


# virtual methods
.method protected convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 3
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pSurfaceTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 150
    iget v1, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v0, v1, 0x1

    .line 152
    .local v0, "surfaceWidthHalf":I
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 153
    iget v1, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 156
    iget v1, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    goto :goto_0
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 2
    .param p1, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getFirstScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    return-object v0
.end method

.method protected getSceneFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 2
    .param p1, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 133
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getFirstScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getSecondScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getSecondScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method protected onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    .line 92
    .local v0, "firstCamera":Lorg/anddev/andengine/engine/camera/Camera;
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    .line 94
    .local v1, "secondCamera":Lorg/anddev/andengine/engine/camera/Camera;
    iget v3, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 95
    .local v3, "surfaceWidth":I
    shr-int/lit8 v4, v3, 0x1

    .line 97
    .local v4, "surfaceWidthHalf":I
    iget v2, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    .line 99
    .local v2, "surfaceHeight":I
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    invoke-interface {p1, v6, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 104
    invoke-interface {p1, v6, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 106
    iget-object v5, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v5, p1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 107
    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 112
    invoke-interface {p1, v4, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 113
    invoke-interface {p1, v4, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 115
    iget-object v5, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v5, p1, v1}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 116
    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 120
    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    iget v0, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 169
    .local v0, "surfaceWidth":I
    shr-int/lit8 v1, v0, 0x1

    .line 171
    .local v1, "surfaceWidthHalf":I
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v4, v4, v1, v3}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 172
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v1, v4, v1, v3}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 173
    return-void
.end method

.method protected onUpdateScene(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 142
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/Engine;->onUpdateScene(F)V

    .line 143
    iget-object v0, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onUpdate(F)V

    .line 146
    :cond_0
    return-void
.end method

.method public setFirstScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/Engine;->setScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    .line 79
    return-void
.end method

.method public setScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->setFirstScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    .line 75
    return-void
.end method

.method public setSecondScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 83
    return-void
.end method

.method protected updateUpdateHandlers(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 162
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/Engine;->updateUpdateHandlers(F)V

    .line 163
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onUpdate(F)V

    .line 164
    return-void
.end method
