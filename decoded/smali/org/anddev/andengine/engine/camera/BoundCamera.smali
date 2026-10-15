.class public Lorg/anddev/andengine/engine/camera/BoundCamera;
.super Lorg/anddev/andengine/engine/camera/Camera;
.source "BoundCamera.java"


# instance fields
.field private mBoundsCenterX:F

.field private mBoundsCenterY:F

.field protected mBoundsEnabled:Z

.field private mBoundsHeight:F

.field private mBoundsMaxX:F

.field private mBoundsMaxY:F

.field private mBoundsMinX:F

.field private mBoundsMinY:F

.field private mBoundsWidth:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pBoundMinX"    # F
    .param p6, "pBoundMaxX"    # F
    .param p7, "pBoundMinY"    # F
    .param p8, "pBoundMaxY"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    .line 42
    invoke-virtual {p0, p5, p6, p7, p8}, Lorg/anddev/andengine/engine/camera/BoundCamera;->setBounds(FFFF)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    .line 44
    return-void
.end method

.method private determineBoundedX()F
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 101
    iget v7, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 102
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterX:F

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getCenterX()F

    move-result v0

    .line 106
    .local v0, "currentCenterX":F
    iget v7, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinX()F

    move-result v8

    sub-float v4, v7, v8

    .line 107
    .local v4, "minXBoundExceededAmount":F
    cmpl-float v7, v4, v9

    if-lez v7, :cond_2

    move v3, v5

    .line 109
    .local v3, "minXBoundExceeded":Z
    :goto_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxX()F

    move-result v7

    iget v8, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxX:F

    sub-float v2, v7, v8

    .line 110
    .local v2, "maxXBoundExceededAmount":F
    cmpl-float v7, v2, v9

    if-lez v7, :cond_3

    move v1, v5

    .line 112
    .local v1, "maxXBoundExceeded":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 113
    if-eqz v1, :cond_4

    .line 115
    sub-float v5, v0, v2

    add-float v0, v5, v4

    goto :goto_0

    .end local v1    # "maxXBoundExceeded":Z
    .end local v2    # "maxXBoundExceededAmount":F
    .end local v3    # "minXBoundExceeded":Z
    :cond_2
    move v3, v6

    .line 107
    goto :goto_1

    .restart local v2    # "maxXBoundExceededAmount":F
    .restart local v3    # "minXBoundExceeded":Z
    :cond_3
    move v1, v6

    .line 110
    goto :goto_2

    .line 118
    .restart local v1    # "maxXBoundExceeded":Z
    :cond_4
    add-float/2addr v0, v4

    goto :goto_0

    .line 121
    :cond_5
    if-eqz v1, :cond_0

    .line 123
    sub-float/2addr v0, v2

    goto :goto_0
.end method

.method private determineBoundedY()F
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 133
    iget v7, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 134
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterY:F

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getCenterY()F

    move-result v0

    .line 138
    .local v0, "currentCenterY":F
    iget v7, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinY()F

    move-result v8

    sub-float v4, v7, v8

    .line 139
    .local v4, "minYBoundExceededAmount":F
    cmpl-float v7, v4, v9

    if-lez v7, :cond_2

    move v3, v5

    .line 141
    .local v3, "minYBoundExceeded":Z
    :goto_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxY()F

    move-result v7

    iget v8, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxY:F

    sub-float v2, v7, v8

    .line 142
    .local v2, "maxYBoundExceededAmount":F
    cmpl-float v7, v2, v9

    if-lez v7, :cond_3

    move v1, v5

    .line 144
    .local v1, "maxYBoundExceeded":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 145
    if-eqz v1, :cond_4

    .line 147
    sub-float v5, v0, v2

    add-float v0, v5, v4

    goto :goto_0

    .end local v1    # "maxYBoundExceeded":Z
    .end local v2    # "maxYBoundExceededAmount":F
    .end local v3    # "minYBoundExceeded":Z
    :cond_2
    move v3, v6

    .line 139
    goto :goto_1

    .restart local v2    # "maxYBoundExceededAmount":F
    .restart local v3    # "minYBoundExceeded":Z
    :cond_3
    move v1, v6

    .line 142
    goto :goto_2

    .line 150
    .restart local v1    # "maxYBoundExceeded":Z
    :cond_4
    add-float/2addr v0, v4

    goto :goto_0

    .line 153
    :cond_5
    if-eqz v1, :cond_0

    .line 155
    sub-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected ensureInBounds()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->determineBoundedX()F

    move-result v0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->determineBoundedY()F

    move-result v1

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 98
    return-void
.end method

.method public getBoundsHeight()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    return v0
.end method

.method public getBoundsWidth()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    return v0
.end method

.method public isBoundsEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    return v0
.end method

.method public setBounds(FFFF)V
    .locals 3
    .param p1, "pBoundMinX"    # F
    .param p2, "pBoundMaxX"    # F
    .param p3, "pBoundMinY"    # F
    .param p4, "pBoundMaxY"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 59
    iput p1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    .line 60
    iput p2, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxX:F

    .line 61
    iput p3, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    .line 62
    iput p4, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxY:F

    .line 64
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    .line 65
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    .line 67
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterX:F

    .line 68
    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterY:F

    .line 69
    return-void
.end method

.method public setBoundsEnabled(Z)V
    .locals 0
    .param p1, "pBoundsEnabled"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    .line 56
    return-void
.end method

.method public setCenter(FF)V
    .locals 1
    .param p1, "pCenterX"    # F
    .param p2, "pCenterY"    # F

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 83
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->ensureInBounds()V

    .line 86
    :cond_0
    return-void
.end method
