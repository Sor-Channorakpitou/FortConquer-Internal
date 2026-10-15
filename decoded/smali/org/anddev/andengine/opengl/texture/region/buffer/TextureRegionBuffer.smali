.class public Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;
.source "TextureRegionBuffer.java"


# instance fields
.field private mFlippedHorizontal:Z

.field private mFlippedVertical:Z

.field protected final mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;IZ)V
    .locals 1
    .param p1, "pBaseTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .param p2, "pDrawType"    # I
    .param p3, "pManaged"    # Z

    .prologue
    .line 35
    const/16 v0, 0x8

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    .line 36
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .line 37
    return-void
.end method


# virtual methods
.method public getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    return-object v0
.end method

.method public isFlippedHorizontal()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    return v0
.end method

.method public isFlippedVertical()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    return v0
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1
    .param p1, "pFlippedHorizontal"    # Z

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    .line 54
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->update()V

    .line 56
    :cond_0
    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1
    .param p1, "pFlippedVertical"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    if-eq v0, p1, :cond_0

    .line 64
    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    .line 65
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->update()V

    .line 67
    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 8

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    .line 80
    .local v2, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX1()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    .line 81
    .local v3, "x1":I
    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY1()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 82
    .local v5, "y1":I
    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX2()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 83
    .local v4, "x2":I
    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY2()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 85
    .local v6, "y2":I
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mBufferData:[I

    .line 87
    .local v1, "bufferData":[I
    iget-boolean v7, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    if-eqz v7, :cond_1

    .line 88
    iget-boolean v7, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    if-eqz v7, :cond_0

    .line 89
    const/4 v7, 0x0

    aput v4, v1, v7

    .line 90
    const/4 v7, 0x1

    aput v6, v1, v7

    .line 92
    const/4 v7, 0x2

    aput v4, v1, v7

    .line 93
    const/4 v7, 0x3

    aput v5, v1, v7

    .line 95
    const/4 v7, 0x4

    aput v3, v1, v7

    .line 96
    const/4 v7, 0x5

    aput v6, v1, v7

    .line 98
    const/4 v7, 0x6

    aput v3, v1, v7

    .line 99
    const/4 v7, 0x7

    aput v5, v1, v7

    .line 141
    :goto_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 142
    .local v0, "buffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 143
    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    .line 144
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 146
    invoke-super {p0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "buffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aput v3, v1, v7

    .line 102
    const/4 v7, 0x1

    aput v6, v1, v7

    .line 104
    const/4 v7, 0x2

    aput v3, v1, v7

    .line 105
    const/4 v7, 0x3

    aput v5, v1, v7

    .line 107
    const/4 v7, 0x4

    aput v4, v1, v7

    .line 108
    const/4 v7, 0x5

    aput v6, v1, v7

    .line 110
    const/4 v7, 0x6

    aput v4, v1, v7

    .line 111
    const/4 v7, 0x7

    aput v5, v1, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v1    # "bufferData":[I
    .end local v2    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    .end local v5    # "y1":I
    .end local v6    # "y2":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 114
    .restart local v1    # "bufferData":[I
    .restart local v2    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .restart local v3    # "x1":I
    .restart local v4    # "x2":I
    .restart local v5    # "y1":I
    .restart local v6    # "y2":I
    :cond_1
    :try_start_2
    iget-boolean v7, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    if-eqz v7, :cond_2

    .line 115
    const/4 v7, 0x0

    aput v4, v1, v7

    .line 116
    const/4 v7, 0x1

    aput v5, v1, v7

    .line 118
    const/4 v7, 0x2

    aput v4, v1, v7

    .line 119
    const/4 v7, 0x3

    aput v6, v1, v7

    .line 121
    const/4 v7, 0x4

    aput v3, v1, v7

    .line 122
    const/4 v7, 0x5

    aput v5, v1, v7

    .line 124
    const/4 v7, 0x6

    aput v3, v1, v7

    .line 125
    const/4 v7, 0x7

    aput v6, v1, v7

    goto :goto_0

    .line 127
    :cond_2
    const/4 v7, 0x0

    aput v3, v1, v7

    .line 128
    const/4 v7, 0x1

    aput v5, v1, v7

    .line 130
    const/4 v7, 0x2

    aput v3, v1, v7

    .line 131
    const/4 v7, 0x3

    aput v6, v1, v7

    .line 133
    const/4 v7, 0x4

    aput v4, v1, v7

    .line 134
    const/4 v7, 0x5

    aput v5, v1, v7

    .line 136
    const/4 v7, 0x6

    aput v4, v1, v7

    .line 137
    const/4 v7, 0x7

    aput v6, v1, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
