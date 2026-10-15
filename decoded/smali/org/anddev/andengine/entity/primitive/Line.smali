.class public Lorg/anddev/andengine/entity/primitive/Line;
.super Lorg/anddev/andengine/entity/shape/Shape;
.source "Line.java"


# static fields
.field private static final LINEWIDTH_DEFAULT:F = 1.0f


# instance fields
.field private final mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

.field private mLineWidth:F

.field protected mX2:F

.field protected mY2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "pX1"    # F
    .param p2, "pY1"    # F
    .param p3, "pX2"    # F
    .param p4, "pY2"    # F

    .prologue
    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/primitive/Line;-><init>(FFFFF)V

    .line 46
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 6
    .param p1, "pX1"    # F
    .param p2, "pY1"    # F
    .param p3, "pX2"    # F
    .param p4, "pY2"    # F
    .param p5, "pLineWidth"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;-><init>(FF)V

    .line 51
    iput p3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    .line 52
    iput p4, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    .line 54
    iput p5, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    .line 56
    new-instance v2, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    const v3, 0x88e4

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;-><init>(IZ)V

    iput-object v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    .line 57
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->updateVertexBuffer()V

    .line 59
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getWidth()F

    move-result v1

    .line 60
    .local v1, "width":F
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getHeight()F

    move-result v0

    .line 62
    .local v0, "height":F
    mul-float v2, v1, v5

    iput v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterX:F

    .line 63
    mul-float v2, v0, v5

    iput v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterY:F

    .line 65
    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterX:F

    iput v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mScaleCenterX:F

    .line 66
    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterY:F

    iput v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mScaleCenterY:F

    .line 67
    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 10
    .param p1, "pOtherShape"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 217
    instance-of v0, p1, Lorg/anddev/andengine/entity/primitive/Line;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 218
    check-cast v8, Lorg/anddev/andengine/entity/primitive/Line;

    .line 219
    .local v8, "otherLine":Lorg/anddev/andengine/entity/primitive/Line;
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v4, v8, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    iget v5, v8, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    iget v6, v8, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v7, v8, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    invoke-static/range {v0 .. v7}, Lorg/anddev/andengine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v0

    .line 224
    .end local v8    # "otherLine":Lorg/anddev/andengine/entity/primitive/Line;
    :goto_0
    return v0

    .line 220
    :cond_0
    instance-of v0, p1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    if-eqz v0, :cond_1

    move-object v9, p1

    .line 221
    check-cast v9, Lorg/anddev/andengine/entity/shape/RectangularShape;

    .line 222
    .local v9, "rectangularShape":Lorg/anddev/andengine/entity/shape/RectangularShape;
    invoke-static {v9, p0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    goto :goto_0

    .line 224
    .end local v9    # "rectangularShape":Lorg/anddev/andengine/entity/shape/RectangularShape;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 189
    return-void
.end method

.method public getBaseHeight()F
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBaseWidth()F
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    return-object v0
.end method

.method public bridge synthetic getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getX()F

    move-result v0

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getX()F

    move-result v0

    return v0
.end method

.method public getX2()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getY()F

    move-result v0

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getY()F

    move-result v0

    return v0
.end method

.method public getY2()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    return v0
.end method

.method protected isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z
    .locals 1
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 165
    invoke-virtual {p1, p0}, Lorg/anddev/andengine/engine/camera/Camera;->isLineVisible(Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    return v0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/shape/Shape;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 171
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 172
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 173
    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->lineWidth(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 174
    return-void
.end method

.method protected onUpdateVertexBuffer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;->update(FFFF)V

    .line 184
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "pLineWidth"    # F

    .prologue
    .line 112
    iput p1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    .line 113
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float v0, v2, p1

    .line 142
    .local v0, "dX":F
    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float v1, v2, p2

    .line 144
    .local v1, "dY":F
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 146
    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    .line 147
    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    .line 148
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 0
    .param p1, "pX1"    # F
    .param p2, "pY1"    # F
    .param p3, "pX2"    # F
    .param p4, "pY2"    # F

    .prologue
    .line 151
    iput p3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    .line 152
    iput p4, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    .line 154
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 156
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->updateVertexBuffer()V

    .line 157
    return-void
.end method
