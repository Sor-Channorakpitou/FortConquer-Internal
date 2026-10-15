.class public abstract Lorg/anddev/andengine/entity/sprite/BaseSprite;
.super Lorg/anddev/andengine/entity/primitive/BaseRectangle;
.source "BaseSprite.java"


# instance fields
.field protected final mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFF)V

    .line 37
    iput-object p5, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .line 38
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->initBlendFunction()V

    .line 39
    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p6, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 44
    iput-object p5, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .line 45
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->initBlendFunction()V

    .line 46
    return-void
.end method

.method private initBlendFunction()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setBlendFunction(II)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->onApply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 86
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 87
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->finalize()V

    .line 93
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureBuffer()Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    move-result-object v0

    .line 94
    .local v0, "textureRegionBuffer":Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->unloadFromActiveBufferObjectManager()V

    .line 97
    :cond_0
    return-void
.end method

.method public getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    return-object v0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 78
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 79
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 80
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->reset()V

    .line 72
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->initBlendFunction()V

    .line 73
    return-void
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1
    .param p1, "pFlippedHorizontal"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedHorizontal(Z)V

    .line 58
    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1
    .param p1, "pFlippedVertical"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedVertical(Z)V

    .line 62
    return-void
.end method
