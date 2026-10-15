.class public Lcom/droidhen/andplugin/PlistSpriteFactory;
.super Ljava/lang/Object;
.source "PlistSpriteFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animatedSprite(FFLcom/droidhen/andplugin/PlistTiledTextureRegion;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "region"    # Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .prologue
    .line 18
    new-instance v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {p2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->xOffset()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->yOffset()F

    move-result v2

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-object v0
.end method

.method public static sprite(FFLcom/droidhen/andplugin/PlistTextureRegion;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "region"    # Lcom/droidhen/andplugin/PlistTextureRegion;

    .prologue
    .line 10
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2}, Lcom/droidhen/andplugin/PlistTextureRegion;->xOffset()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p2}, Lcom/droidhen/andplugin/PlistTextureRegion;->yOffset()F

    move-result v2

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-object v0
.end method

.method public static tiledSprite(FFLcom/droidhen/andplugin/PlistTiledTextureRegion;)Lorg/anddev/andengine/entity/sprite/TiledSprite;
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "region"    # Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .prologue
    .line 14
    new-instance v0, Lorg/anddev/andengine/entity/sprite/TiledSprite;

    invoke-virtual {p2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->xOffset()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->yOffset()F

    move-result v2

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-object v0
.end method
