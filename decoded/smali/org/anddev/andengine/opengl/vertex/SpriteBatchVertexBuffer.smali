.class public Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;
.super Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
.source "SpriteBatchVertexBuffer.java"


# static fields
.field private static final TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

.field public static final VERTICES_PER_RECTANGLE:I = 0x6

.field private static final VERTICES_TMP:[F


# instance fields
.field protected mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    .line 23
    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    .line 14
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "pCapacity"    # I
    .param p2, "pDrawType"    # I
    .param p3, "pManaged"    # Z

    .prologue
    .line 36
    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;-><init>(IIZ)V

    .line 37
    return-void
.end method


# virtual methods
.method public add(FFFF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    .line 154
    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFF)V

    .line 155
    return-void
.end method

.method public add(FFFFF)V
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pRotation"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 67
    mul-float v1, p3, v2

    .line 68
    .local v1, "widthHalf":F
    mul-float v0, p4, v2

    .line 70
    .local v0, "heightHalf":F
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    .line 72
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 73
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p5}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    .line 74
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, v1, v0}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 75
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p1, p2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 77
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0, p3, p4, v2}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    .line 78
    return-void
.end method

.method public add(FFFFFF)V
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pScaleX"    # F
    .param p6, "pScaleY"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 90
    mul-float v1, p3, v2

    .line 91
    .local v1, "widthHalf":F
    mul-float v0, p4, v2

    .line 93
    .local v0, "heightHalf":F
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    .line 95
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 96
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p5, p6}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    .line 97
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, v1, v0}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 98
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p1, p2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 100
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0, p3, p4, v2}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    .line 101
    return-void
.end method

.method public add(FFFFFFF)V
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pRotation"    # F
    .param p6, "pScaleX"    # F
    .param p7, "pScaleY"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 113
    mul-float v1, p3, v2

    .line 114
    .local v1, "widthHalf":F
    mul-float v0, p4, v2

    .line 116
    .local v0, "heightHalf":F
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    .line 118
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 119
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p6, p7}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    .line 120
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p5}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    .line 121
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, v1, v0}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 122
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p1, p2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 124
    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0, p3, p4, v2}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    .line 125
    return-void
.end method

.method public add(FFLorg/anddev/andengine/util/Transformation;)V
    .locals 9
    .param p1, "pWidth"    # F
    .param p2, "pHeight"    # F
    .param p3, "pTransformation"    # Lorg/anddev/andengine/util/Transformation;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput v2, v0, v3

    .line 137
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput v2, v0, v4

    .line 139
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput v2, v0, v5

    .line 140
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput p2, v0, v6

    .line 142
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 143
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 145
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 146
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 148
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    invoke-virtual {p3, v0}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    .line 150
    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v1, v0, v3

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v2, v0, v4

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v3, v0, v5

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v4, v0, v6

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v5, 0x4

    aget v5, v0, v5

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v6, 0x5

    aget v6, v0, v6

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v7, 0x6

    aget v7, v0, v7

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v8, 0x7

    aget v8, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFFFFFF)V

    .line 151
    return-void
.end method

.method public addInner(FFFF)V
    .locals 7
    .param p1, "pX1"    # F
    .param p2, "pY1"    # F
    .param p3, "pX2"    # F
    .param p4, "pY2"    # F

    .prologue
    .line 163
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    .line 164
    .local v3, "x1":I
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 165
    .local v5, "y1":I
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 166
    .local v4, "x2":I
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 168
    .local v6, "y2":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mBufferData:[I

    .line 169
    .local v0, "bufferData":[I
    iget v1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    .line 170
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput v3, v0, v1

    .line 171
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v5, v0, v2

    .line 173
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v3, v0, v1

    .line 174
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v0, v2

    .line 176
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 177
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v5, v0, v2

    .line 179
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 180
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v5, v0, v2

    .line 182
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v3, v0, v1

    .line 183
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v0, v2

    .line 185
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 186
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v0, v2

    .line 187
    iput v1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    .line 188
    return-void
.end method

.method public addInner(FFFFFFFF)V
    .locals 11
    .param p1, "pX1"    # F
    .param p2, "pY1"    # F
    .param p3, "pX2"    # F
    .param p4, "pY2"    # F
    .param p5, "pX3"    # F
    .param p6, "pY3"    # F
    .param p7, "pX4"    # F
    .param p8, "pY4"    # F

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    .line 197
    .local v3, "x1":I
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 198
    .local v7, "y1":I
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 199
    .local v4, "x2":I
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    .line 200
    .local v8, "y2":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 201
    .local v5, "x3":I
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    .line 202
    .local v9, "y3":I
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 203
    .local v6, "x4":I
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    .line 205
    .local v10, "y4":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mBufferData:[I

    .line 206
    .local v0, "bufferData":[I
    iget v1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    .line 207
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput v3, v0, v1

    .line 208
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v7, v0, v2

    .line 210
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 211
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v8, v0, v2

    .line 213
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v5, v0, v1

    .line 214
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v9, v0, v2

    .line 216
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v5, v0, v1

    .line 217
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v9, v0, v2

    .line 219
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v4, v0, v1

    .line 220
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v8, v0, v2

    .line 222
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aput v6, v0, v1

    .line 223
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v10, v0, v2

    .line 224
    iput v1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    .line 225
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "pIndex"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    .line 57
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 229
    .local v0, "buffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 230
    iget-object v1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mBufferData:[I

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    .line 231
    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 233
    invoke-super {p0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setHardwareBufferNeedsUpdate()V

    .line 234
    return-void
.end method
