.class public Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;
.source "TextTextureBuffer.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "pCapacity"    # I
    .param p2, "pDrawType"    # I
    .param p3, "pManaged"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized update(Lorg/anddev/andengine/opengl/font/Font;[Ljava/lang/String;)V
    .locals 14
    .param p1, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p2, "pLines"    # [Ljava/lang/String;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v12

    .line 46
    .local v12, "textureFloatBuffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 48
    move-object v0, p1

    .line 49
    .local v0, "font":Lorg/anddev/andengine/opengl/font/Font;
    move-object/from16 v11, p2

    .line 51
    .local v11, "lines":[Ljava/lang/String;
    array-length v9, v11

    .line 52
    .local v9, "lineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v9, :cond_0

    .line 83
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 85
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    aget-object v8, v11, v1

    .line 55
    .local v8, "line":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    .line 56
    .local v10, "lineLength":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v10, :cond_1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v0, v13}, Lorg/anddev/andengine/opengl/font/Font;->getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    move-result-object v3

    .line 59
    .local v3, "letter":Lorg/anddev/andengine/opengl/font/Letter;
    iget v4, v3, Lorg/anddev/andengine/opengl/font/Letter;->mTextureX:F

    .line 60
    .local v4, "letterTextureX":F
    iget v6, v3, Lorg/anddev/andengine/opengl/font/Letter;->mTextureY:F

    .line 61
    .local v6, "letterTextureY":F
    iget v13, v3, Lorg/anddev/andengine/opengl/font/Letter;->mTextureWidth:F

    add-float v5, v4, v13

    .line 62
    .local v5, "letterTextureX2":F
    iget v13, v3, Lorg/anddev/andengine/opengl/font/Letter;->mTextureHeight:F

    add-float v7, v6, v13

    .line 64
    .local v7, "letterTextureY2":F
    invoke-virtual {v12, v4}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 65
    invoke-virtual {v12, v6}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 67
    invoke-virtual {v12, v4}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 68
    invoke-virtual {v12, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 70
    invoke-virtual {v12, v5}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 71
    invoke-virtual {v12, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 73
    invoke-virtual {v12, v5}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 74
    invoke-virtual {v12, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 76
    invoke-virtual {v12, v5}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 77
    invoke-virtual {v12, v6}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 79
    invoke-virtual {v12, v4}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    .line 80
    invoke-virtual {v12, v6}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    .end local v0    # "font":Lorg/anddev/andengine/opengl/font/Font;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "letter":Lorg/anddev/andengine/opengl/font/Letter;
    .end local v4    # "letterTextureX":F
    .end local v5    # "letterTextureX2":F
    .end local v6    # "letterTextureY":F
    .end local v7    # "letterTextureY2":F
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "lineCount":I
    .end local v10    # "lineLength":I
    .end local v11    # "lines":[Ljava/lang/String;
    .end local v12    # "textureFloatBuffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method
