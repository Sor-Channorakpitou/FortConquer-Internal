.class public Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;
.super Lorg/anddev/andengine/entity/scene/background/SpriteBackground;
.source "RepeatingSpriteBackground.java"


# instance fields
.field private mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private final mScale:F


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)V
    .locals 6
    .param p1, "pCameraWidth"    # F
    .param p2, "pCameraHeight"    # F
    .param p3, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p4, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;-><init>(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;F)V

    .line 43
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;F)V
    .locals 1
    .param p1, "pCameraWidth"    # F
    .param p2, "pCameraHeight"    # F
    .param p3, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p4, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .param p5, "pScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 47
    iput p5, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->loadSprite(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    .line 49
    return-void
.end method

.method private loadSprite(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 11
    .param p1, "pCameraWidth"    # F
    .param p2, "pCameraHeight"    # F
    .param p3, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p4, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 68
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-interface {p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getWidth()I

    move-result v3

    invoke-interface {p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getHeight()I

    move-result v4

    sget-object v8, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v9, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v2, v3, v4, v8, v9}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v2, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 69
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v2, p4, v10, v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v5

    .line 71
    .local v5, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    iget v2, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    div-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 72
    .local v7, "width":I
    iget v2, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    div-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 74
    .local v6, "height":I
    invoke-virtual {v5, v7}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setWidth(I)V

    .line 75
    invoke-virtual {v5, v6}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setHeight(I)V

    .line 77
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {p3, v2}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 79
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    int-to-float v3, v7

    int-to-float v4, v6

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 80
    .local v0, "sprite":Lorg/anddev/andengine/entity/sprite/Sprite;
    invoke-virtual {v0, v1, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleCenter(FF)V

    .line 81
    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public getBitmapTextureAtlas()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    return-object v0
.end method
