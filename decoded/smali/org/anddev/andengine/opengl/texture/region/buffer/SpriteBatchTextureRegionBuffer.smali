.class public Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;
.source "SpriteBatchTextureRegionBuffer.java"


# instance fields
.field protected mIndex:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "pCapacity"    # I
    .param p2, "pDrawType"    # I
    .param p3, "pManaged"    # Z

    .prologue
    .line 32
    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    .line 33
    return-void
.end method


# virtual methods
.method public add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V
    .locals 9
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .prologue
    .line 56
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v3

    .line 58
    .local v3, "texture":Lorg/anddev/andengine/opengl/texture/ITexture;
    if-nez v3, :cond_0

    .line 88
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX1()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 63
    .local v4, "x1":I
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY1()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 64
    .local v6, "y1":I
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX2()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 65
    .local v5, "x2":I
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY2()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 67
    .local v7, "y2":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mBufferData:[I

    .line 69
    .local v0, "bufferData":[I
    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    .line 70
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput v4, v0, v1

    .line 71
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v0, v2

    .line 73
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 74
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v7, v0, v2

    .line 76
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v5, v0, v1

    .line 77
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v0, v2

    .line 79
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v5, v0, v1

    .line 80
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v0, v2

    .line 82
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 83
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v7, v0, v2

    .line 85
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v5, v0, v1

    .line 86
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v7, v0, v2

    .line 87
    iput v1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "pIndex"    # I

    .prologue
    .line 44
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    .line 45
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 92
    .local v0, "buffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 93
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mBufferData:[I

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    .line 94
    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 96
    invoke-super {p0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setHardwareBufferNeedsUpdate()V

    .line 97
    return-void
.end method
