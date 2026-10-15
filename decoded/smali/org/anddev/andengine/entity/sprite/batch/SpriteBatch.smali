.class public Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;
.super Lorg/anddev/andengine/entity/Entity;
.source "SpriteBatch.java"


# instance fields
.field protected final mCapacity:I

.field private mDestinationBlendFunction:I

.field protected mIndex:I

.field private mSourceBlendFunction:I

.field private final mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

.field private final mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

.field protected final mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

.field private mVertices:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 4
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I

    .prologue
    const v3, 0x88e4

    const/4 v2, 0x1

    .line 52
    new-instance v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-direct {v0, p2, v3, v2}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;-><init>(IIZ)V

    new-instance v1, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-direct {v1, p2, v3, v2}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;-><init>(IIZ)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I
    .param p3, "pSpriteBatchVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;
    .param p4, "pSpriteBatchTextureRegionBuffer"    # Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 57
    iput p2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    .line 58
    iput-object p3, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    .line 59
    iput-object p4, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    .line 61
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->initBlendFunction()V

    .line 62
    return-void
.end method

.method private assertCapacity()V
    .locals 3

    .prologue
    .line 341
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    if-ne v0, v1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This SpriteBatch has already reached its capacity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    return-void
.end method

.method private assertCapacity(I)V
    .locals 3
    .param p1, "pIndex"    # I

    .prologue
    .line 335
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    if-lt p1, v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This supplied pIndex: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is exceeding the capacity: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of this SpriteBatch!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method private drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 331
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mVertices:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 332
    return-void
.end method

.method private initBlendFunction()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->setBlendFunction(II)V

    .line 293
    :cond_0
    return-void
.end method

.method private onApplyTextureRegion(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 317
    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 318
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 320
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 322
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 323
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 328
    .end local v0    # "gl11":Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 326
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method private onSubmit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mVertices:I

    .line 281
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->submit()V

    .line 282
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->submit()V

    .line 284
    iput v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 285
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->setIndex(I)V

    .line 286
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->setIndex(I)V

    .line 287
    return-void
.end method


# virtual methods
.method protected assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V
    .locals 2
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .prologue
    .line 347
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    if-eq v0, v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supplied Texture does match the Texture of this SpriteBatch!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    return-void
.end method

.method protected begin(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 130
    return-void
.end method

.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 96
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->begin(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 99
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onApplyTextureRegion(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 102
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->end(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    return-void
.end method

.method public draw(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 6
    .param p1, "pBaseSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 243
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    .line 244
    .local v0, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 246
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isScaled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    .line 252
    :goto_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 254
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 256
    .end local v0    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_0
    return-void

    .line 249
    .restart local v0    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_1
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    goto :goto_0
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFF)V
    .locals 1
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 141
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 143
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    .line 144
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 146
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 147
    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFF)V
    .locals 6
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F
    .param p6, "pRotation"    # F

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 161
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 163
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFF)V

    .line 164
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 166
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 167
    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFF)V
    .locals 7
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F
    .param p6, "pScaleX"    # F
    .param p7, "pScaleY"    # F

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 181
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 183
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFF)V

    .line 184
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 186
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 187
    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFF)V
    .locals 8
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F
    .param p6, "pRotation"    # F
    .param p7, "pScaleX"    # F
    .param p8, "pScaleY"    # F

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 201
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 203
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFFF)V

    .line 204
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 206
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 207
    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFFF)V
    .locals 9
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX1"    # F
    .param p3, "pY1"    # F
    .param p4, "pX2"    # F
    .param p5, "pY2"    # F
    .param p6, "pX3"    # F
    .param p7, "pY3"    # F
    .param p8, "pX4"    # F
    .param p9, "pY4"    # F

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 221
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 223
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFFFFFF)V

    .line 224
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 226
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 227
    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 6
    .param p1, "pBaseSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 259
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    .line 262
    .local v0, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isScaled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    .line 268
    :goto_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 270
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 272
    .end local v0    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_0
    return-void

    .line 265
    .restart local v0    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_1
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    goto :goto_0
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFF)V
    .locals 1
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F

    .prologue
    .line 150
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    .line 151
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 153
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 154
    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFF)V
    .locals 6
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F
    .param p6, "pRotation"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFF)V

    .line 171
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 173
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 174
    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFF)V
    .locals 7
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F
    .param p6, "pScaleX"    # F
    .param p7, "pScaleY"    # F

    .prologue
    .line 190
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFF)V

    .line 191
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 193
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 194
    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFF)V
    .locals 8
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pWidth"    # F
    .param p5, "pHeight"    # F
    .param p6, "pRotation"    # F
    .param p7, "pScaleX"    # F
    .param p8, "pScaleY"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFFF)V

    .line 211
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 213
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 214
    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFFF)V
    .locals 9
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pX1"    # F
    .param p3, "pY1"    # F
    .param p4, "pX2"    # F
    .param p5, "pY2"    # F
    .param p6, "pX3"    # F
    .param p7, "pY3"    # F
    .param p8, "pX4"    # F
    .param p9, "pY4"    # F

    .prologue
    .line 230
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFFFFFF)V

    .line 231
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 233
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 234
    return-void
.end method

.method protected end(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 134
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->unloadFromActiveBufferObjectManager()V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->unloadFromActiveBufferObjectManager()V

    .line 122
    :cond_1
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return v0
.end method

.method protected onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 306
    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 307
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 309
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 310
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 314
    .end local v0    # "gl11":Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 296
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mBlue:F

    iget v3, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mAlpha:F

    invoke-static {p1, v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/util/GLHelper;->setColor(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 298
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 299
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSourceBlendFunction:I

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mDestinationBlendFunction:I

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->blendFunction(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 301
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 302
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 303
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    .line 109
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->initBlendFunction()V

    .line 110
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0
    .param p1, "pSourceBlendFunction"    # I
    .param p2, "pDestinationBlendFunction"    # I

    .prologue
    .line 69
    iput p1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSourceBlendFunction:I

    .line 70
    iput p2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mDestinationBlendFunction:I

    .line 71
    return-void
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "pIndex"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity(I)V

    .line 80
    iput p1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 82
    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v0, v1, 0x6

    .line 84
    .local v0, "vertexIndex":I
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->setIndex(I)V

    .line 85
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->setIndex(I)V

    .line 86
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onSubmit()V

    .line 276
    return-void
.end method
