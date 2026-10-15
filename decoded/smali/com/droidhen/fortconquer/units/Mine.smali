.class public Lcom/droidhen/fortconquer/units/Mine;
.super Ljava/lang/Object;
.source "Mine.java"


# instance fields
.field protected mPosX:I

.field protected mPosY:I

.field mSprite:Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/scene/Scene;II)V
    .locals 5
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pPosX"    # I
    .param p3, "pPosY"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/droidhen/fortconquer/units/Mine;->mPosX:I

    .line 36
    iput p3, p0, Lcom/droidhen/fortconquer/units/Mine;->mPosY:I

    .line 37
    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 38
    .local v0, "tr":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lcom/droidhen/fortconquer/units/Mine;->mPosX:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 39
    iget v3, p0, Lcom/droidhen/fortconquer/units/Mine;->mPosY:I

    mul-int/lit8 v3, v3, 0x3a

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 38
    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Mine;->mSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 41
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Mine;->mSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p1, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 42
    return-void
.end method
