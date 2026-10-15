.class public Lorg/anddev/andengine/util/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private tx:F

.field private ty:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 41
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 42
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 43
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 44
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 45
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 53
    return-void
.end method

.method private postConcat(FFFFFF)V
    .locals 8
    .param p1, "pA"    # F
    .param p2, "pB"    # F
    .param p3, "pC"    # F
    .param p4, "pD"    # F
    .param p5, "pTX"    # F
    .param p6, "pTY"    # F

    .prologue
    .line 203
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 204
    .local v0, "a":F
    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 205
    .local v1, "b":F
    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 206
    .local v2, "c":F
    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 207
    .local v3, "d":F
    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 208
    .local v4, "tx":F
    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 210
    .local v5, "ty":F
    mul-float v6, v0, p1

    mul-float v7, v1, p3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 211
    mul-float v6, v0, p2

    mul-float v7, v1, p4

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 212
    mul-float v6, v2, p1

    mul-float v7, v3, p3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 213
    mul-float v6, v2, p2

    mul-float v7, v3, p4

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 214
    mul-float v6, v4, p1

    mul-float v7, v5, p3

    add-float/2addr v6, v7

    add-float/2addr v6, p5

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 215
    mul-float v6, v4, p2

    mul-float v7, v5, p4

    add-float/2addr v6, v7

    add-float/2addr v6, p6

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 216
    return-void
.end method

.method private preConcat(FFFFFF)V
    .locals 8
    .param p1, "pA"    # F
    .param p2, "pB"    # F
    .param p3, "pC"    # F
    .param p4, "pD"    # F
    .param p5, "pTX"    # F
    .param p6, "pTY"    # F

    .prologue
    .line 223
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 224
    .local v0, "a":F
    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 225
    .local v1, "b":F
    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 226
    .local v2, "c":F
    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 227
    .local v3, "d":F
    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 228
    .local v4, "tx":F
    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 230
    .local v5, "ty":F
    mul-float v6, p1, v0

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 231
    mul-float v6, p1, v1

    mul-float v7, p2, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 232
    mul-float v6, p3, v0

    mul-float v7, p4, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 233
    mul-float v6, p3, v1

    mul-float v7, p4, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 234
    mul-float v6, p5, v0

    mul-float v7, p6, v2

    add-float/2addr v6, v7

    add-float/2addr v6, v4

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 235
    mul-float v6, p5, v1

    mul-float v7, p6, v3

    add-float/2addr v6, v7

    add-float/2addr v6, v5

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 236
    return-void
.end method


# virtual methods
.method public postConcat(Lorg/anddev/andengine/util/Transformation;)V
    .locals 7
    .param p1, "pTransformation"    # Lorg/anddev/andengine/util/Transformation;

    .prologue
    .line 199
    iget v1, p1, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v2, p1, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v3, p1, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v4, p1, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v5, p1, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v6, p1, Lorg/anddev/andengine/util/Transformation;->ty:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/util/Transformation;->postConcat(FFFFFF)V

    .line 200
    return-void
.end method

.method public postRotate(F)V
    .locals 11
    .param p1, "pAngle"    # F

    .prologue
    .line 162
    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v1

    .line 164
    .local v1, "angleRad":F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 165
    .local v6, "sin":F
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 167
    .local v4, "cos":F
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 168
    .local v0, "a":F
    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 169
    .local v2, "b":F
    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 170
    .local v3, "c":F
    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 171
    .local v5, "d":F
    iget v7, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 172
    .local v7, "tx":F
    iget v8, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 174
    .local v8, "ty":F
    mul-float v9, v0, v4

    mul-float v10, v2, v6

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 175
    mul-float v9, v0, v6

    mul-float v10, v2, v4

    add-float/2addr v9, v10

    iput v9, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 176
    mul-float v9, v3, v4

    mul-float v10, v5, v6

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 177
    mul-float v9, v3, v6

    mul-float v10, v5, v4

    add-float/2addr v9, v10

    iput v9, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 178
    mul-float v9, v7, v4

    mul-float v10, v8, v6

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 179
    mul-float v9, v7, v6

    mul-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 180
    return-void
.end method

.method public postScale(FF)V
    .locals 1
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    .line 125
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 126
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 127
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 128
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 129
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 130
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 131
    return-void
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 102
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 103
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 104
    return-void
.end method

.method public preConcat(Lorg/anddev/andengine/util/Transformation;)V
    .locals 7
    .param p1, "pTransformation"    # Lorg/anddev/andengine/util/Transformation;

    .prologue
    .line 219
    iget v1, p1, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v2, p1, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v3, p1, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v4, p1, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v5, p1, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v6, p1, Lorg/anddev/andengine/util/Transformation;->ty:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/util/Transformation;->preConcat(FFFFFF)V

    .line 220
    return-void
.end method

.method public preRotate(F)V
    .locals 9
    .param p1, "pAngle"    # F

    .prologue
    .line 145
    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v1

    .line 147
    .local v1, "angleRad":F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 148
    .local v6, "sin":F
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 150
    .local v4, "cos":F
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 151
    .local v0, "a":F
    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 152
    .local v2, "b":F
    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 153
    .local v3, "c":F
    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 155
    .local v5, "d":F
    mul-float v7, v4, v0

    mul-float v8, v6, v3

    add-float/2addr v7, v8

    iput v7, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 156
    mul-float v7, v4, v2

    mul-float v8, v6, v5

    add-float/2addr v7, v8

    iput v7, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 157
    mul-float v7, v4, v3

    mul-float v8, v6, v0

    sub-float/2addr v7, v8

    iput v7, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 158
    mul-float v7, v4, v5

    mul-float v8, v6, v2

    sub-float/2addr v7, v8

    iput v7, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 159
    return-void
.end method

.method public preScale(FF)V
    .locals 1
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    .line 118
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 119
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 120
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 121
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 122
    return-void
.end method

.method public preTranslate(FF)V
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 97
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 98
    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 99
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    .line 74
    return-void
.end method

.method public setTo(Lorg/anddev/andengine/util/Transformation;)V
    .locals 1
    .param p1, "pTransformation"    # Lorg/anddev/andengine/util/Transformation;

    .prologue
    .line 87
    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 88
    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->d:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 90
    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->b:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 91
    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->c:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 92
    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 93
    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->ty:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 94
    return-void
.end method

.method public setToIdentity()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 77
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 78
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 80
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 81
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 82
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 83
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 84
    return-void
.end method

.method public setToRotate(F)Lorg/anddev/andengine/util/Transformation;
    .locals 5
    .param p1, "pAngle"    # F

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v0

    .line 185
    .local v0, "angleRad":F
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    .line 186
    .local v2, "sin":F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    .line 188
    .local v1, "cos":F
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 189
    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 190
    neg-float v3, v2

    iput v3, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 191
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 192
    iput v4, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 193
    iput v4, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 195
    return-object p0
.end method

.method public setToScale(FF)Lorg/anddev/andengine/util/Transformation;
    .locals 1
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    const/4 v0, 0x0

    .line 134
    iput p1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 135
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 136
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 137
    iput p2, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 138
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 139
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 141
    return-object p0
.end method

.method public setToTranslate(FF)Lorg/anddev/andengine/util/Transformation;
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 107
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    .line 108
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    .line 109
    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    .line 110
    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    .line 111
    iput p1, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    .line 112
    iput p2, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    .line 114
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transformation{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0.0, 0.0, 1.0]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform([F)V
    .locals 9
    .param p1, "pVertices"    # [F

    .prologue
    .line 239
    array-length v7, p1

    shr-int/lit8 v0, v7, 0x1

    .line 240
    .local v0, "count":I
    const/4 v1, 0x0

    .line 241
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .line 242
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 248
    return-void

    .line 243
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget v5, p1, v2

    .line 244
    .local v5, "x":F
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget v6, p1, v1

    .line 245
    .local v6, "y":F
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    iget v7, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v7, v5

    iget v8, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v8, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    add-float/2addr v7, v8

    aput v7, p1, v4

    .line 246
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    iget v7, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v7, v5

    iget v8, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v8, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    add-float/2addr v7, v8

    aput v7, p1, v3

    goto :goto_0
.end method
