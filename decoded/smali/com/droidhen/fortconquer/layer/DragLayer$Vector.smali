.class public Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
.super Ljava/lang/Object;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/layer/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 207
    iput p2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 208
    return-void
.end method


# virtual methods
.method public add(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 211
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 212
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 213
    return-object p0
.end method

.method public add(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 2
    .param p1, "f"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 227
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 228
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 229
    return-object p0
.end method

.method public addX(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 217
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 218
    return-object p0
.end method

.method public addY(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 222
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 223
    return-object p0
.end method

.method public divideBy(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "divide"    # F

    .prologue
    .line 243
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 244
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 245
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    if-ne p0, p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 331
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 332
    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 334
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 335
    check-cast v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 336
    .local v0, "other":Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    iget v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 337
    goto :goto_0

    .line 338
    :cond_4
    iget v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 339
    goto :goto_0
.end method

.method public getLength()F
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public greatAbsOr(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 2
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 311
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public greatEqAbsAnd(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 2
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 299
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public greatOr(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 2
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 307
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 320
    const/16 v0, 0x1f

    .line 321
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 322
    .local v1, "result":I
    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 323
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 324
    return v1
.end method

.method public lessAbsAnd(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 2
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 295
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lessEqAbsAnd(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 2
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 291
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lessEqSqrt(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 8
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 303
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 2
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 237
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 238
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 239
    return-object p0
.end method

.method public multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "multi"    # F

    .prologue
    .line 249
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 250
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 251
    return-object p0
.end method

.method public multiply(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 255
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 256
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 257
    return-object p0
.end method

.method public multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 2
    .param p1, "multi"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 261
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 262
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 263
    return-object p0
.end method

.method public reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 267
    iput p1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 268
    iput p2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 269
    return-object p0
.end method

.method public reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 1
    .param p1, "property"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    .line 273
    iget v0, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 274
    iget v0, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 275
    return-object p0
.end method

.method public sameDirection(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z
    .locals 4
    .param p1, "a"    # Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .prologue
    const/4 v1, 0x0

    .line 286
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3

    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_8

    .line 287
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_7

    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_6

    :goto_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 286
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    div-float/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v3, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_3
    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v3, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    div-float/2addr v2, v3

    goto :goto_1

    .line 287
    :cond_4
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    div-float/2addr v0, v2

    goto :goto_2

    :cond_6
    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    goto :goto_3

    :cond_7
    iget v1, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v2, p1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    div-float/2addr v1, v2

    goto :goto_3

    .line 286
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vector [x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unit()Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 279
    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    iget v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    iget v4, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 280
    .local v0, "length":F
    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    .line 281
    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :goto_1
    iput v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    .line 282
    return-object p0

    .line 280
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    div-float/2addr v1, v0

    goto :goto_0

    .line 281
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    div-float v2, v1, v0

    goto :goto_1
.end method
