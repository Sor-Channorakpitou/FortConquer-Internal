.class public Lorg/anddev/andengine/engine/camera/SmoothCamera;
.super Lorg/anddev/andengine/engine/camera/ZoomCamera;
.source "SmoothCamera.java"


# instance fields
.field private mMaxVelocityX:F

.field private mMaxVelocityY:F

.field private mMaxZoomFactorChange:F

.field private mTargetCenterX:F

.field private mTargetCenterY:F

.field private mTargetZoomFactor:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pMaxVelocityX"    # F
    .param p6, "pMaxVelocityY"    # F
    .param p7, "pMaxZoomFactorChange"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/ZoomCamera;-><init>(FFFF)V

    .line 35
    iput p5, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    .line 36
    iput p6, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    .line 37
    iput p7, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    .line 39
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterX()F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 40
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterY()F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 43
    return-void
.end method

.method private limitToMaxVelocityX(FF)F
    .locals 1
    .param p1, "pValue"    # F
    .param p2, "pSecondsElapsed"    # F

    .prologue
    .line 152
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 153
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private limitToMaxVelocityY(FF)F
    .locals 1
    .param p1, "pValue"    # F
    .param p2, "pSecondsElapsed"    # F

    .prologue
    .line 160
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 161
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private limitToMaxZoomFactorChange(FF)F
    .locals 1
    .param p1, "pValue"    # F
    .param p2, "pSecondsElapsed"    # F

    .prologue
    .line 168
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 169
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onSmoothZoomFinished()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected onSmoothZoomStarted()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onUpdate(F)V
    .locals 14
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 117
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->onUpdate(F)V

    .line 119
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterX()F

    move-result v1

    .line 120
    .local v1, "currentCenterX":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterY()F

    move-result v2

    .line 122
    .local v2, "currentCenterY":F
    iget v8, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 123
    .local v8, "targetCenterX":F
    iget v9, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 125
    .local v9, "targetCenterY":F
    cmpl-float v12, v1, v8

    if-nez v12, :cond_0

    cmpl-float v12, v2, v9

    if-eqz v12, :cond_1

    .line 126
    :cond_0
    sub-float v6, v8, v1

    .line 127
    .local v6, "diffX":F
    invoke-direct {p0, v6, p1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->limitToMaxVelocityX(FF)F

    move-result v4

    .line 129
    .local v4, "dX":F
    sub-float v7, v9, v2

    .line 130
    .local v7, "diffY":F
    invoke-direct {p0, v7, p1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->limitToMaxVelocityY(FF)F

    move-result v5

    .line 132
    .local v5, "dY":F
    add-float v12, v1, v4

    add-float v13, v2, v5

    invoke-super {p0, v12, v13}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setCenter(FF)V

    .line 136
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v6    # "diffX":F
    .end local v7    # "diffY":F
    :cond_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getZoomFactor()F

    move-result v3

    .line 138
    .local v3, "currentZoom":F
    iget v10, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 140
    .local v10, "targetZoomFactor":F
    cmpl-float v12, v3, v10

    if-eqz v12, :cond_2

    .line 141
    sub-float v0, v10, v3

    .line 142
    .local v0, "absoluteZoomDifference":F
    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->limitToMaxZoomFactorChange(FF)F

    move-result v11

    .line 143
    .local v11, "zoomChange":F
    add-float v12, v3, v11

    invoke-super {p0, v12}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    .line 145
    iget v12, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    iget v13, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    .line 146
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->onSmoothZoomFinished()V

    .line 149
    .end local v0    # "absoluteZoomDifference":F
    .end local v11    # "zoomChange":F
    :cond_2
    return-void
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "pCenterX"    # F
    .param p2, "pCenterY"    # F

    .prologue
    .line 51
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 52
    iput p2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 53
    return-void
.end method

.method public setCenterDirect(FF)V
    .locals 0
    .param p1, "pCenterX"    # F
    .param p2, "pCenterY"    # F

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setCenter(FF)V

    .line 57
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 58
    iput p2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 59
    return-void
.end method

.method public setMaxVelocity(FF)V
    .locals 0
    .param p1, "pMaxVelocityX"    # F
    .param p2, "pMaxVelocityY"    # F

    .prologue
    .line 95
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    .line 96
    iput p2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    .line 97
    return-void
.end method

.method public setMaxVelocityX(F)V
    .locals 0
    .param p1, "pMaxVelocityX"    # F

    .prologue
    .line 87
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    .line 88
    return-void
.end method

.method public setMaxVelocityY(F)V
    .locals 0
    .param p1, "pMaxVelocityY"    # F

    .prologue
    .line 91
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    .line 92
    return-void
.end method

.method public setMaxZoomFactorChange(F)V
    .locals 0
    .param p1, "pMaxZoomFactorChange"    # F

    .prologue
    .line 100
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    .line 101
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 2
    .param p1, "pZoomFactor"    # F

    .prologue
    .line 63
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 65
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 67
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->onSmoothZoomStarted()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    goto :goto_0
.end method

.method public setZoomFactorDirect(F)V
    .locals 2
    .param p1, "pZoomFactor"    # F

    .prologue
    .line 75
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 77
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    .line 79
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->onSmoothZoomFinished()V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 82
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    goto :goto_0
.end method
