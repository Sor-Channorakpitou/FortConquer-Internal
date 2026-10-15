.class public Lcom/droidhen/fortconquer/component/RoundRectangle;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "RoundRectangle.java"

# interfaces
.implements Lorg/anddev/andengine/entity/shape/IShape;


# instance fields
.field private blockRegions:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mBaseHeight:F

.field private mBaseWidth:F

.field private mBorderWidth:F

.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;I)V
    .locals 1
    .param p1, "texture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "borderWidth"    # I

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/droidhen/fortconquer/component/RoundRectangle;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;I)V
    .locals 25
    .param p1, "region"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p2, "borderWidth"    # I

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    .line 18
    const/16 v1, 0x9

    new-array v1, v1, [Lorg/anddev/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 20
    const/16 v1, 0x9

    new-array v1, v1, [Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blockRegions:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 22
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    .line 24
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    .line 26
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    .line 28
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBaseWidth:F

    .line 30
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBaseHeight:F

    .line 37
    move/from16 v0, p2

    int-to-float v1, v0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    .line 38
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTextureCoordinateX1()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    invoke-interface {v2}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 39
    .local v16, "x1":I
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTextureCoordinateY1()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    invoke-interface {v2}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 40
    .local v20, "y1":I
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTextureCoordinateX2()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    invoke-interface {v2}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 41
    .local v17, "x2":I
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTextureCoordinateY2()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    invoke-interface {v2}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 43
    .local v21, "y2":I
    move/from16 v7, v16

    .line 44
    .local v7, "dx1":I
    add-int v8, v16, p2

    .line 45
    .local v8, "dx2":I
    sub-int v9, v17, p2

    .line 46
    .local v9, "dx3":I
    move/from16 v10, v17

    .line 48
    .local v10, "dx4":I
    move/from16 v11, v20

    .line 49
    .local v11, "dy1":I
    add-int v12, v20, p2

    .line 50
    .local v12, "dy2":I
    sub-int v13, v21, p2

    .line 51
    .local v13, "dy3":I
    move/from16 v14, v21

    .line 52
    .local v14, "dy4":I
    const/16 v1, 0x9

    new-array v0, v1, [[I

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v11, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    const/4 v3, 0x1

    aput v11, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v11, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x3

    .line 53
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v12, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    const/4 v3, 0x1

    aput v12, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v12, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x6

    .line 54
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v13, v2, v3

    aput-object v2, v18, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    const/4 v3, 0x1

    aput v13, v2, v3

    aput-object v2, v18, v1

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v13, v2, v3

    aput-object v2, v18, v1

    .line 55
    .local v18, "xy1":[[I
    const/16 v1, 0x9

    new-array v0, v1, [[I

    move-object/from16 v19, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    const/4 v3, 0x1

    aput v12, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v12, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v10, v2, v3

    const/4 v3, 0x1

    aput v12, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x3

    .line 56
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    const/4 v3, 0x1

    aput v13, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v13, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v10, v2, v3

    const/4 v3, 0x1

    aput v13, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x6

    .line 57
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    const/4 v3, 0x1

    aput v14, v2, v3

    aput-object v2, v19, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v14, v2, v3

    aput-object v2, v19, v1

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v10, v2, v3

    const/4 v3, 0x1

    aput v14, v2, v3

    aput-object v2, v19, v1

    .line 58
    .local v19, "xy2":[[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v15, v1, :cond_0

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBaseWidth:F

    .line 64
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBaseHeight:F

    .line 65
    return-void

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blockRegions:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v22, v0

    new-instance v1, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    aget-object v3, v18, v15

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v4, v18, v15

    const/4 v5, 0x1

    aget v4, v4, v5

    aget-object v5, v19, v15

    const/4 v6, 0x0

    aget v5, v5, v6

    aget-object v6, v18, v15

    const/16 v23, 0x0

    aget v6, v6, v23

    sub-int/2addr v5, v6

    aget-object v6, v19, v15

    const/16 v23, 0x1

    aget v6, v6, v23

    aget-object v23, v18, v15

    const/16 v24, 0x1

    aget v23, v23, v24

    sub-int v6, v6, v23

    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    aput-object v1, v22, v15

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v3, v18, v15

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v3, v3, v16

    int-to-float v3, v3

    aget-object v4, v18, v15

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blockRegions:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aget-object v5, v5, v15

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v2, v1, v15

    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/RoundRectangle;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 58
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private updateBlocks()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    .line 84
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    .line 85
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setHeight(F)V

    .line 86
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setHeight(F)V

    .line 87
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v7

    iget v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 89
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 90
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    iget v3, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 91
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    iget v3, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBorderWidth:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 92
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 93
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->blocks:[Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setSize(FF)V

    .line 94
    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 1
    .param p1, "pOtherShape"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBaseHeight:F

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mBaseWidth:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    return v0
.end method

.method public getHeightScaled()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    return v0
.end method

.method public getWidthScaled()F
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 0
    .param p1, "pSourceBlendFunction"    # I
    .param p2, "pDestinationBlendFunction"    # I

    .prologue
    .line 143
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 0
    .param p1, "pCullingEnabled"    # Z

    .prologue
    .line 103
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "pHeight"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    .line 74
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/RoundRectangle;->updateBlocks()V

    .line 75
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "pWidth"    # F
    .param p2, "pHeight"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    .line 79
    iput p2, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mHeight:F

    .line 80
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/RoundRectangle;->updateBlocks()V

    .line 81
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "pWidth"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/droidhen/fortconquer/component/RoundRectangle;->mWidth:F

    .line 69
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/RoundRectangle;->updateBlocks()V

    .line 70
    return-void
.end method
