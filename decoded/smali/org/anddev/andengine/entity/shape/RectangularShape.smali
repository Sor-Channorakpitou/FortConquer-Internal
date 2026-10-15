.class public abstract Lorg/anddev/andengine/entity/shape/RectangularShape;
.super Lorg/anddev/andengine/entity/shape/Shape;
.source "RectangularShape.java"


# instance fields
.field protected mBaseHeight:F

.field protected mBaseWidth:F

.field protected mHeight:F

.field protected final mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

.field protected mWidth:F


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/vertex/VertexBuffer;)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;-><init>(FF)V

    .line 41
    iput p3, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    .line 42
    iput p4, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    .line 44
    iput p3, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 45
    iput p4, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 47
    iput-object p5, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    .line 49
    mul-float v0, p3, v1

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    .line 50
    mul-float v0, p4, v1

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    .line 52
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterX:F

    .line 53
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterY:F

    .line 54
    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 3
    .param p1, "pOtherShape"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 155
    instance-of v2, p1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 156
    check-cast v1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    .line 157
    .local v1, "pOtherRectangularShape":Lorg/anddev/andengine/entity/shape/RectangularShape;
    invoke-static {p0, v1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v2

    .line 162
    .end local v1    # "pOtherRectangularShape":Lorg/anddev/andengine/entity/shape/RectangularShape;
    :goto_0
    return v2

    .line 158
    :cond_0
    instance-of v2, p1, Lorg/anddev/andengine/entity/primitive/Line;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 159
    check-cast v0, Lorg/anddev/andengine/entity/primitive/Line;

    .line 160
    .local v0, "line":Lorg/anddev/andengine/entity/primitive/Line;
    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v2

    goto :goto_0

    .line 162
    .end local v0    # "line":Lorg/anddev/andengine/entity/primitive/Line;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 145
    invoke-static {p0, p1, p2}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkContains(Lorg/anddev/andengine/entity/shape/RectangularShape;FF)Z

    move-result v0

    return v0
.end method

.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 125
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 126
    return-void
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 150
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/shape/RectangularShape;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    return v0
.end method

.method protected isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z
    .locals 4
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 115
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mX:F

    .line 116
    .local v0, "x":F
    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mY:F

    .line 117
    .local v1, "y":F
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 118
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getWidth()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    .line 117
    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 130
    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->reset()V

    .line 131
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->setBaseSize()V

    .line 133
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getBaseWidth()F

    move-result v1

    .line 134
    .local v1, "baseWidth":F
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getBaseHeight()F

    move-result v0

    .line 136
    .local v0, "baseHeight":F
    mul-float v2, v1, v3

    iput v2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    .line 137
    mul-float v2, v0, v3

    iput v2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    .line 139
    iget v2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    iput v2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterX:F

    .line 140
    iget v2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    iput v2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterY:F

    .line 141
    return-void
.end method

.method public setBaseSize()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 108
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 109
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    .line 111
    :cond_1
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "pHeight"    # F

    .prologue
    .line 91
    iput p1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 92
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    .line 93
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "pWidth"    # F
    .param p2, "pHeight"    # F

    .prologue
    .line 96
    iput p1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 97
    iput p2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 98
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    .line 99
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "pWidth"    # F

    .prologue
    .line 86
    iput p1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 87
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    .line 88
    return-void
.end method
