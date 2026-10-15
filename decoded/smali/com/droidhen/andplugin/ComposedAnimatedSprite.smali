.class public Lcom/droidhen/andplugin/ComposedAnimatedSprite;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
.source "ComposedAnimatedSprite.java"


# instance fields
.field private frameCount:I

.field private frameHeight:F

.field private frameRotationCenterX:F

.field private frameRotationCenterY:F

.field private frameScaleCenterX:F

.field private frameScaleCenterY:F

.field private frameWidth:F

.field private frameX:F

.field private frameY:F

.field private info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

.field private offsetX:F

.field private offsetY:F


# direct methods
.method public constructor <init>(FFFFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTileWidth"    # F
    .param p4, "pTileHeight"    # F
    .param p5, "pTiledTextureRegion"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->init(FF)V

    .line 32
    return-void
.end method

.method public constructor <init>(FFFFLcom/droidhen/andplugin/PlistComposedTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTileWidth"    # F
    .param p4, "pTileHeight"    # F
    .param p5, "pTiledTextureRegion"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .param p6, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 37
    .line 38
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->init(FF)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTiledTextureRegion"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->init(FF)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTiledTextureRegion"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .param p4, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->init(FF)V

    .line 47
    return-void
.end method

.method private fixPosition()V
    .locals 3

    .prologue
    .line 173
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameX:F

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameY:F

    iget v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    .line 174
    return-void
.end method

.method private fixRotationCenter()V
    .locals 3

    .prologue
    .line 185
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterX:F

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterY:F

    iget v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    sub-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setRotationCenter(FF)V

    .line 186
    return-void
.end method

.method private fixScaleCenter()V
    .locals 3

    .prologue
    .line 181
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterX:F

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterY:F

    iget v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    sub-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setScaleCenter(FF)V

    .line 182
    return-void
.end method

.method private fixSize()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v2, v2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setSize(FF)V

    .line 190
    return-void
.end method

.method private getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    return-object v0
.end method

.method private init(FF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 56
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getCurrentInfo()Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 57
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameX:F

    .line 58
    iput p2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameY:F

    .line 59
    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    .line 60
    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    .line 61
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterX:F

    .line 62
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterY:F

    .line 63
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterX:F

    .line 64
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterY:F

    .line 65
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->xOffset()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    .line 66
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->yOffset()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    .line 67
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileCount()I

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    .line 68
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 69
    return-void
.end method

.method private onSwitchFrame()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getCurrentInfo()Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 194
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixSize()V

    .line 195
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->xOffset()F

    move-result v0

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    .line 196
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->yOffset()F

    move-result v0

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    .line 197
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->isFlippedHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    sub-float/2addr v0, v1

    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->isFlippedVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    sub-float/2addr v0, v1

    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixPosition()V

    .line 204
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixScaleCenter()V

    .line 205
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixRotationCenter()V

    .line 206
    return-void
.end method


# virtual methods
.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    return v0
.end method

.method public getHeightScaled()F
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterX:F

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterY:F

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterX:F

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterY:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    return v0
.end method

.method public getWidthScaled()F
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameY:F

    return v0
.end method

.method public nextTile()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->nextTile()V

    .line 85
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 86
    return-void
.end method

.method public setCurrentTileIndex(I)V
    .locals 1
    .param p1, "pTileIndex"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getFrameCount()I

    move-result v0

    rem-int v0, p1, v0

    invoke-super {p0, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 74
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 75
    return-void
.end method

.method public setCurrentTileIndex(II)V
    .locals 1
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 79
    mul-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 80
    return-void
.end method

.method public setFlippedHorizontal(Z)V
    .locals 0
    .param p1, "pFlippedHorizontal"    # Z

    .prologue
    .line 253
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setFlippedHorizontal(Z)V

    .line 254
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 255
    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 0
    .param p1, "pFlippedVertical"    # Z

    .prologue
    .line 259
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setFlippedVertical(Z)V

    .line 260
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 261
    return-void
.end method

.method public setFrameCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 223
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    .line 224
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    if-ge v0, v1, :cond_1

    .line 225
    iput v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getRegion()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileCount()I

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameCount:I

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    .line 107
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->yOffset()F

    move-result v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    .line 108
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 109
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 128
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameX:F

    .line 129
    iput p2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameY:F

    .line 130
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixPosition()V

    .line 131
    return-void
.end method

.method public setPosition(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pOtherEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameX:F

    .line 122
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameY:F

    .line 123
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixPosition()V

    .line 124
    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 0
    .param p1, "pRotationCenterX"    # F
    .param p2, "pRotationCenterY"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterX:F

    .line 164
    iput p2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterY:F

    .line 165
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixRotationCenter()V

    .line 166
    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 0
    .param p1, "pRotationCenterX"    # F

    .prologue
    .line 151
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterX:F

    .line 152
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixRotationCenter()V

    .line 153
    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 0
    .param p1, "pRotationCenterY"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameRotationCenterY:F

    .line 158
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixRotationCenter()V

    .line 159
    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterX:F

    .line 135
    iput p2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterY:F

    .line 136
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixScaleCenter()V

    .line 137
    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 0
    .param p1, "pX"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterX:F

    .line 141
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixScaleCenter()V

    .line 142
    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 0
    .param p1, "pY"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameScaleCenterY:F

    .line 146
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->fixScaleCenter()V

    .line 147
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 112
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    .line 113
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->xOffset()F

    move-result v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    .line 114
    iput p2, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameHeight:F

    .line 115
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->yOffset()F

    move-result v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetY:F

    .line 116
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 117
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->frameWidth:F

    .line 101
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->xOffset()F

    move-result v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->info:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->offsetX:F

    .line 102
    invoke-direct {p0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onSwitchFrame()V

    .line 103
    return-void
.end method
