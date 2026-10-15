.class public abstract Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;
.super Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;
.source "DynamicSpriteBatch.java"


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I
    .param p3, "pSpriteBatchVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;
    .param p4, "pSpriteBatchTextureRegionBuffer"    # Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected begin(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->begin(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 53
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->onUpdateSpriteBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->submit()V

    .line 56
    :cond_0
    return-void
.end method

.method protected abstract onUpdateSpriteBatch()Z
.end method
