.class public Lcom/droidhen/fortconquer/kits/NumberSprite;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "NumberSprite.java"


# instance fields
.field protected mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field protected mNumberTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected mWidth:F

.field protected mbAlignLeft:Z

.field private sOffsetX:F


# direct methods
.method public constructor <init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "plistTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p4, "pItemName"    # Ljava/lang/String;
    .param p5, "pLength"    # I
    .param p6, "bAlignLeft"    # Z

    .prologue
    .line 26
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {p3, p4, v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "plistTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .param p4, "pLength"    # I
    .param p5, "bAlignLeft"    # Z

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    .line 17
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->sOffsetX:F

    .line 22
    iput v6, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    .line 32
    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v6, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScaleCenter(FF)V

    .line 33
    new-array v1, p4, [Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iput-object v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    .line 34
    new-array v1, p4, [Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iput-object v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p4, :cond_0

    .line 40
    iput-boolean p5, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mbAlignLeft:Z

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 43
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 47
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 38
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    new-instance v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    int-to-float v3, v0

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    iget v5, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->sOffsetX:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v6, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    aput-object v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V
    .locals 0
    .param p1, "pLayer"    # Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 52
    return-void
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeight()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    return v0
.end method

.method public setNumberDirect(I)V
    .locals 9
    .param p1, "pNumber"    # I

    .prologue
    const/4 v8, 0x0

    .line 56
    iput v8, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    .line 57
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iget-object v6, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v6, v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    double-to-int v2, v4

    .line 58
    .local v2, "maxValue":I
    if-le p1, v2, :cond_0

    .line 59
    move p1, v2

    .line 60
    :cond_0
    move v3, p1

    .line 61
    .local v3, "tmpNum":I
    const/4 v0, 0x0

    .line 62
    .local v0, "digits":I
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 73
    iget v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    int-to-float v5, v0

    iget v6, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->sOffsetX:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    .line 75
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mbAlignLeft:Z

    if-eqz v4, :cond_1

    .line 77
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v4, v4

    if-lt v1, v4, :cond_4

    .line 82
    :cond_1
    return-void

    .line 63
    :cond_2
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    if-nez v3, :cond_3

    .line 64
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setVisible(Z)V

    .line 62
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 66
    :cond_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v4, v4, v1

    rem-int/lit8 v5, v3, 0xa

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 67
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setVisible(Z)V

    .line 68
    iget v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    iget-object v5, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mWidth:F

    .line 69
    div-int/lit8 v3, v3, 0xa

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    :cond_4
    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v5, v5

    sub-int/2addr v5, v0

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->mNumberSprite:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidth()F

    move-result v6

    iget v7, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->sOffsetX:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5, v8}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setOffsetX(F)V
    .locals 0
    .param p1, "offsetX"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/droidhen/fortconquer/kits/NumberSprite;->sOffsetX:F

    .line 95
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    goto :goto_0
.end method
