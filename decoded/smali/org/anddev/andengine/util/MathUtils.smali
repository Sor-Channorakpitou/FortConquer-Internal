.class public Lorg/anddev/andengine/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"

# interfaces
.implements Lorg/anddev/andengine/util/constants/MathConstants;


# static fields
.field public static RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayAverage([F)F
    .locals 2
    .param p0, "pValues"    # [F

    .prologue
    .line 149
    invoke-static {p0}, Lorg/anddev/andengine/util/MathUtils;->arraySum([F)F

    move-result v0

    array-length v1, p0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static final arraySum([F)F
    .locals 4
    .param p0, "pValues"    # [F

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "sum":F
    array-length v2, p0

    .line 142
    .local v2, "valueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 145
    return v1

    .line 143
    :cond_0
    aget v3, p0, v0

    add-float/2addr v1, v3

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([I)V
    .locals 4
    .param p0, "pValues"    # [I

    .prologue
    .line 110
    array-length v1, p0

    .line 111
    .local v1, "valueCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    add-int/2addr v2, v3

    aput v2, p0, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([J)V
    .locals 6
    .param p0, "pValues"    # [J

    .prologue
    .line 117
    array-length v1, p0

    .line 118
    .local v1, "valueCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([JJ)V
    .locals 7
    .param p0, "pValues"    # [J
    .param p1, "pFactor"    # J

    .prologue
    const/4 v4, 0x0

    .line 124
    aget-wide v2, p0, v4

    mul-long/2addr v2, p1

    aput-wide v2, p0, v4

    .line 125
    array-length v1, p0

    .line 126
    .local v1, "valueCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    mul-long/2addr v4, p1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInto([J[JJ)V
    .locals 6
    .param p0, "pValues"    # [J
    .param p1, "pTargetValues"    # [J
    .param p2, "pFactor"    # J

    .prologue
    const/4 v4, 0x0

    .line 132
    aget-wide v2, p0, v4

    mul-long/2addr v2, p2

    aput-wide v2, p1, v4

    .line 133
    array-length v1, p0

    .line 134
    .local v1, "valueCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p1, v2

    aget-wide v4, p0, v0

    mul-long/2addr v4, p2

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static atan2(FF)F
    .locals 4
    .param p0, "dY"    # F
    .param p1, "dX"    # F

    .prologue
    .line 44
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static bringToBounds(FFF)F
    .locals 1
    .param p0, "pMinValue"    # F
    .param p1, "pMaxValue"    # F
    .param p2, "pValue"    # F

    .prologue
    .line 202
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static bringToBounds(III)I
    .locals 1
    .param p0, "pMinValue"    # I
    .param p1, "pMaxValue"    # I
    .param p2, "pValue"    # I

    .prologue
    .line 198
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final degToRad(F)F
    .locals 1
    .param p0, "pDegree"    # F

    .prologue
    .line 52
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "pX1"    # F
    .param p1, "pY1"    # F
    .param p2, "pX2"    # F
    .param p3, "pY2"    # F

    .prologue
    .line 206
    sub-float v0, p2, p0

    .line 207
    .local v0, "dX":F
    sub-float v1, p3, p1

    .line 208
    .local v1, "dY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static final isPowerOfTwo(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 77
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final nextPowerOfTwo(F)I
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 81
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method public static final nextPowerOfTwo(I)I
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 85
    move v1, p0

    .line 87
    .local v1, "k":I
    if-nez v1, :cond_0

    .line 88
    const/4 v2, 0x1

    .line 97
    :goto_0
    return v2

    .line 91
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 93
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    .line 97
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    shr-int v2, v1, v0

    or-int/2addr v1, v2

    .line 93
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final radToDeg(F)F
    .locals 1
    .param p0, "pRad"    # F

    .prologue
    .line 48
    const v0, 0x42652ee0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2
    .param p0, "pMin"    # F
    .param p1, "pMax"    # F

    .prologue
    .line 64
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(II)I
    .locals 2
    .param p0, "pMin"    # I
    .param p1, "pMax"    # I

    .prologue
    .line 73
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomSign()I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static revertRotateAndScaleAroundCenter([FFFFFFFF)[F
    .locals 1
    .param p0, "pVertices"    # [F
    .param p1, "pRotation"    # F
    .param p2, "pRotationCenterX"    # F
    .param p3, "pRotationCenterY"    # F
    .param p4, "pScaleX"    # F
    .param p5, "pScaleY"    # F
    .param p6, "pScaleCenterX"    # F
    .param p7, "pScaleCenterY"    # F

    .prologue
    .line 193
    invoke-static {p0, p4, p5, p6, p7}, Lorg/anddev/andengine/util/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    .line 194
    invoke-static {p0, p1, p2, p3}, Lorg/anddev/andengine/util/MathUtils;->revertRotateAroundCenter([FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static revertRotateAroundCenter([FFFF)[F
    .locals 1
    .param p0, "pVertices"    # [F
    .param p1, "pRotation"    # F
    .param p2, "pRotationCenterX"    # F
    .param p3, "pRotationCenterY"    # F

    .prologue
    .line 189
    neg-float v0, p1

    invoke-static {p0, v0, p2, p3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static revertScaleAroundCenter([FFFFF)[F
    .locals 2
    .param p0, "pVertices"    # [F
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F
    .param p3, "pScaleCenterX"    # F
    .param p4, "pScaleCenterY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 185
    div-float v0, v1, p1

    div-float/2addr v1, p2

    invoke-static {p0, v0, v1, p3, p4}, Lorg/anddev/andengine/util/MathUtils;->scaleAroundCenter([FFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndScaleAroundCenter([FFFFFFFF)[F
    .locals 1
    .param p0, "pVertices"    # [F
    .param p1, "pRotation"    # F
    .param p2, "pRotationCenterX"    # F
    .param p3, "pRotationCenterY"    # F
    .param p4, "pScaleX"    # F
    .param p5, "pScaleY"    # F
    .param p6, "pScaleCenterX"    # F
    .param p7, "pScaleCenterY"    # F

    .prologue
    .line 180
    invoke-static {p0, p1, p2, p3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 181
    invoke-static {p0, p4, p5, p6, p7}, Lorg/anddev/andengine/util/MathUtils;->scaleAroundCenter([FFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static rotateAroundCenter([FFFF)[F
    .locals 9
    .param p0, "pVertices"    # [F
    .param p1, "pRotation"    # F
    .param p2, "pRotationCenterX"    # F
    .param p3, "pRotationCenterY"    # F

    .prologue
    .line 153
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_0

    .line 154
    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v4

    .line 155
    .local v4, "rotationRad":F
    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 156
    .local v5, "sinRotationRad":F
    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 158
    .local v0, "cosRotationInRad":F
    array-length v6, p0

    add-int/lit8 v1, v6, -0x2

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 165
    .end local v0    # "cosRotationInRad":F
    .end local v1    # "i":I
    .end local v4    # "rotationRad":F
    .end local v5    # "sinRotationRad":F
    :cond_0
    return-object p0

    .line 159
    .restart local v0    # "cosRotationInRad":F
    .restart local v1    # "i":I
    .restart local v4    # "rotationRad":F
    .restart local v5    # "sinRotationRad":F
    :cond_1
    aget v2, p0, v1

    .line 160
    .local v2, "pX":F
    add-int/lit8 v6, v1, 0x1

    aget v3, p0, v6

    .line 161
    .local v3, "pY":F
    sub-float v6, v2, p2

    mul-float/2addr v6, v0

    sub-float v7, v3, p3

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    add-float/2addr v6, p2

    aput v6, p0, v1

    .line 162
    add-int/lit8 v6, v1, 0x1

    sub-float v7, v2, p2

    mul-float/2addr v7, v5

    sub-float v8, v3, p3

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    add-float/2addr v7, p3

    aput v7, p0, v6

    .line 158
    add-int/lit8 v1, v1, -0x2

    goto :goto_0
.end method

.method public static scaleAroundCenter([FFFFF)[F
    .locals 3
    .param p0, "pVertices"    # [F
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F
    .param p3, "pScaleCenterX"    # F
    .param p4, "pScaleCenterY"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    cmpl-float v1, p2, v2

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 176
    .end local v0    # "i":I
    :cond_1
    return-object p0

    .line 171
    .restart local v0    # "i":I
    :cond_2
    aget v1, p0, v0

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v1, p3

    aput v1, p0, v0

    .line 172
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    sub-float/2addr v2, p4

    mul-float/2addr v2, p2

    add-float/2addr v2, p4

    aput v2, p0, v1

    .line 170
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public static final sum([I)I
    .locals 3
    .param p0, "pValues"    # [I

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "sum":I
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 106
    return v1

    .line 103
    :cond_0
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 102
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
