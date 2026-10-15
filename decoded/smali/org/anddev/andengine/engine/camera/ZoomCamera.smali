.class public Lorg/anddev/andengine/engine/camera/ZoomCamera;
.super Lorg/anddev/andengine/engine/camera/BoundCamera;
.source "ZoomCamera.java"


# instance fields
.field protected mZoomFactor:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/BoundCamera;-><init>(FFFF)V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 36
    return-void
.end method


# virtual methods
.method protected applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 7
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 111
    .local v2, "zoomFactor":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    .line 113
    .local v0, "scaleCenterX":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v1

    .line 115
    .local v1, "scaleCenterY":F
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v4

    aput v4, v3, v5

    .line 116
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    aput v4, v3, v6

    .line 118
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-static {v3, v2, v2, v0, v1}, Lorg/anddev/andengine/util/MathUtils;->scaleAroundCenter([FFFFF)[F

    .line 120
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v3, v3, v5

    sget-object v4, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v4, v4, v6

    invoke-virtual {p1, v3, v4}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 122
    .end local v0    # "scaleCenterX":F
    .end local v1    # "scaleCenterY":F
    :cond_0
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/BoundCamera;->applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 123
    return-void
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getMaxX()F
    .locals 3

    .prologue
    .line 70
    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 71
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxX()F

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    .line 74
    .local v0, "centerX":F
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method public getMaxY()F
    .locals 3

    .prologue
    .line 90
    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 91
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxY()F

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v0

    .line 94
    .local v0, "centerY":F
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxY()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method public getMinX()F
    .locals 3

    .prologue
    .line 60
    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 61
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinX()F

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    .line 64
    .local v0, "centerX":F
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinX()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public getMinY()F
    .locals 3

    .prologue
    .line 80
    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 81
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinY()F

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v0

    .line 84
    .local v0, "centerY":F
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinY()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    return v0
.end method

.method public setZoomFactor(F)V
    .locals 1
    .param p1, "pZoomFactor"    # F

    .prologue
    .line 47
    iput p1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 49
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->ensureInBounds()V

    .line 52
    :cond_0
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 7
    .param p1, "pCameraSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/BoundCamera;->unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 129
    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 130
    .local v2, "zoomFactor":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    .line 132
    .local v0, "scaleCenterX":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v1

    .line 134
    .local v1, "scaleCenterY":F
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v4

    aput v4, v3, v5

    .line 135
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    aput v4, v3, v6

    .line 137
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-static {v3, v2, v2, v0, v1}, Lorg/anddev/andengine/util/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    .line 139
    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v3, v3, v5

    sget-object v4, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v4, v4, v6

    invoke-virtual {p1, v3, v4}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 141
    .end local v0    # "scaleCenterX":F
    .end local v1    # "scaleCenterY":F
    :cond_0
    return-void
.end method
