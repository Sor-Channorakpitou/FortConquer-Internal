.class public Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
.super Ljava/lang/Object;
.source "PathModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/modifier/PathModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Path"
.end annotation


# instance fields
.field private final mCoordinatesX:[F

.field private final mCoordinatesY:[F

.field private mIndex:I

.field private mLength:F

.field private mLengthChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "pLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 227
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    .line 228
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    .line 230
    iput v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 231
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 232
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/PathModifier$Path;)V
    .locals 4
    .param p1, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-boolean v3, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 247
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSize()I

    move-result v0

    .line 248
    .local v0, "size":I
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    .line 249
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    .line 251
    iget-object v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    iget-object v2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    iget-object v2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    iput v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 255
    iget-boolean v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 256
    iget v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    iput v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    .line 257
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 2
    .param p1, "pCoordinatesX"    # [F
    .param p2, "pCoordinatesY"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 235
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate-Arrays must have the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    .line 240
    iput-object p2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    .line 242
    array-length v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 244
    return-void
.end method

.method private updateLength()V
    .locals 3

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "length":F
    iget v2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    add-int/lit8 v0, v2, -0x2

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 323
    iput v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    .line 324
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSegmentLength(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 320
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier$Path;)V

    return-object v0
.end method

.method public getCoordinatesX()[F
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    return-object v0
.end method

.method public getCoordinatesY()[F
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    return-object v0
.end method

.method public getLength()F
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->updateLength()V

    .line 294
    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    return v0
.end method

.method public getSegmentLength(I)F
    .locals 7
    .param p1, "pSegmentIndex"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    .line 299
    .local v0, "coordinatesX":[F
    iget-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    .line 301
    .local v1, "coordinatesY":[F
    add-int/lit8 v4, p1, 0x1

    .line 303
    .local v4, "nextSegmentIndex":I
    aget v5, v0, p1

    aget v6, v0, v4

    sub-float v2, v5, v6

    .line 304
    .local v2, "dx":F
    aget v5, v1, p1

    aget v6, v1, v4

    sub-float v3, v5, v6

    .line 306
    .local v3, "dy":F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    return v5
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    array-length v0, v0

    return v0
.end method

.method public to(FF)Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 268
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    aput p1, v0, v1

    .line 269
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    aput p2, v0, v1

    .line 271
    iget v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 275
    return-object p0
.end method
