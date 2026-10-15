.class public abstract Lorg/anddev/andengine/entity/shape/Shape;
.super Lorg/anddev/andengine/entity/Entity;
.source "Shape.java"

# interfaces
.implements Lorg/anddev/andengine/entity/shape/IShape;


# static fields
.field public static final BLENDFUNCTION_DESTINATION_DEFAULT:I = 0x303

.field public static final BLENDFUNCTION_DESTINATION_PREMULTIPLYALPHA_DEFAULT:I = 0x303

.field public static final BLENDFUNCTION_SOURCE_DEFAULT:I = 0x302

.field public static final BLENDFUNCTION_SOURCE_PREMULTIPLYALPHA_DEFAULT:I = 0x1


# instance fields
.field private mCullingEnabled:Z

.field protected mDestinationBlendFunction:I

.field protected mSourceBlendFunction:I


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    .line 35
    const/16 v0, 0x302

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    .line 36
    const/16 v0, 0x303

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/shape/Shape;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 101
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/shape/Shape;->onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;->drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 103
    return-void
.end method

.method protected abstract drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    .line 137
    .local v0, "vertexBuffer":Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->unloadFromActiveBufferObjectManager()V

    .line 140
    :cond_0
    return-void
.end method

.method public getHeightScaled()F
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mScaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected abstract getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
.end method

.method public getWidthScaled()F
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mScaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected abstract isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    return v0
.end method

.method public isVertexBufferManaged()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->isManaged()Z

    move-result v0

    return v0
.end method

.method protected onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 154
    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 155
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 157
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 158
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 162
    .end local v0    # "gl11":Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 147
    iget v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/shape/Shape;->mBlue:F

    iget v3, p0, Lorg/anddev/andengine/entity/shape/Shape;->mAlpha:F

    invoke-static {p1, v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/util/GLHelper;->setColor(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 149
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 150
    iget v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->blendFunction(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 151
    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/entity/shape/Shape;->isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 122
    :cond_1
    return-void
.end method

.method protected abstract onUpdateVertexBuffer()V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    .line 128
    const/16 v0, 0x302

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    .line 129
    const/16 v0, 0x303

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    .line 130
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0
    .param p1, "pSourceBlendFunction"    # I
    .param p2, "pDestinationBlendFunction"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    .line 55
    iput p2, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    .line 56
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 0
    .param p1, "pCullingEnabled"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    .line 66
    return-void
.end method

.method public setVertexBufferManaged(Z)V
    .locals 1
    .param p1, "pVertexBufferManaged"    # Z

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setManaged(Z)V

    .line 87
    return-void
.end method

.method protected updateVertexBuffer()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->onUpdateVertexBuffer()V

    .line 166
    return-void
.end method
