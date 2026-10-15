.class public Lorg/anddev/andengine/collision/ShapeCollisionChecker;
.super Lorg/anddev/andengine/collision/BaseCollisionChecker;
.source "ShapeCollisionChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/anddev/andengine/collision/BaseCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(I[FI[F)Z
    .locals 5
    .param p0, "pVerticesALength"    # I
    .param p1, "pVerticesA"    # [F
    .param p2, "pVerticesBLength"    # I
    .param p3, "pVerticesB"    # [F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    add-int/lit8 v0, p0, -0x4

    .local v0, "a":I
    :goto_0
    if-gez v0, :cond_1

    .line 47
    add-int/lit8 v3, p0, -0x2

    invoke-static {v3, v2, p1, p3, p2}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollisionSub(II[F[FI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    :cond_0
    :goto_1
    return v1

    .line 42
    :cond_1
    add-int/lit8 v3, v0, 0x2

    invoke-static {v0, v3, p1, p3, p2}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollisionSub(II[F[FI)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 52
    :cond_2
    aget v3, p3, v2

    aget v4, p3, v1

    invoke-static {p1, p0, v3, v4}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    aget v3, p1, v2

    aget v4, p1, v1

    invoke-static {p3, p2, v3, v4}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 57
    goto :goto_1
.end method

.method private static checkCollisionSub(II[F[FI)Z
    .locals 11
    .param p0, "pVertexIndexA1"    # I
    .param p1, "pVertexIndexA2"    # I
    .param p2, "pVerticesA"    # [F
    .param p3, "pVerticesB"    # [F
    .param p4, "pVerticesBLength"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 67
    add-int/lit8 v4, p0, 0x0

    aget v0, p2, v4

    .line 68
    .local v0, "vertexA1X":F
    add-int/lit8 v4, p0, 0x1

    aget v1, p2, v4

    .line 69
    .local v1, "vertexA1Y":F
    add-int/lit8 v4, p1, 0x0

    aget v2, p2, v4

    .line 70
    .local v2, "vertexA2X":F
    add-int/lit8 v4, p1, 0x1

    aget v3, p2, v4

    .line 72
    .local v3, "vertexA2Y":F
    add-int/lit8 v8, p4, -0x4

    .local v8, "b":I
    :goto_0
    if-gez v8, :cond_0

    .line 78
    add-int/lit8 v4, p4, -0x2

    aget v4, p3, v4

    add-int/lit8 v5, p4, -0x1

    aget v5, p3, v5

    aget v6, p3, v10

    aget v7, p3, v9

    invoke-static/range {v0 .. v7}, Lorg/anddev/andengine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    .line 81
    :goto_1
    return v4

    .line 73
    :cond_0
    add-int/lit8 v4, v8, 0x0

    aget v4, p3, v4

    add-int/lit8 v5, v8, 0x1

    aget v5, p3, v5

    add-int/lit8 v6, v8, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v6, p3, v6

    add-int/lit8 v7, v8, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, p3, v7

    invoke-static/range {v0 .. v7}, Lorg/anddev/andengine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v9

    .line 74
    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    :cond_2
    move v4, v10

    .line 81
    goto :goto_1
.end method

.method public static checkContains([FIFF)Z
    .locals 12
    .param p0, "pVertices"    # [F
    .param p1, "pVerticesLength"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 85
    const/4 v7, 0x0

    .line 87
    .local v7, "edgeResultSum":I
    add-int/lit8 v8, p1, -0x4

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_0

    .line 96
    add-int/lit8 v0, p1, -0x2

    aget v0, p0, v0

    add-int/lit8 v1, p1, -0x1

    aget v1, p0, v1

    aget v2, p0, v11

    aget v3, p0, v10

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    .line 97
    .local v6, "edgeResult":I
    if-nez v6, :cond_2

    move v0, v10

    .line 105
    :goto_1
    return v0

    .line 88
    .end local v6    # "edgeResult":I
    :cond_0
    aget v0, p0, v8

    add-int/lit8 v1, v8, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, v8, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, v8, 0x3

    aget v3, p0, v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    .line 89
    .restart local v6    # "edgeResult":I
    if-nez v6, :cond_1

    move v0, v10

    .line 90
    goto :goto_1

    .line 92
    :cond_1
    add-int/2addr v7, v6

    .line 87
    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    .line 100
    :cond_2
    add-int/2addr v7, v6

    .line 103
    div-int/lit8 v9, p1, 0x2

    .line 105
    .local v9, "vertexCount":I
    if-eq v7, v9, :cond_3

    neg-int v0, v9

    if-eq v7, v0, :cond_3

    move v0, v11

    goto :goto_1

    :cond_3
    move v0, v10

    goto :goto_1
.end method
