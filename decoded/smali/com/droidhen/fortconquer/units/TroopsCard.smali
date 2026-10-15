.class public Lcom/droidhen/fortconquer/units/TroopsCard;
.super Lcom/droidhen/fortconquer/units/Card;
.source "TroopsCard.java"


# static fields
.field public static final CONST_TO_STRING:Ljava/lang/String; = "__TroopsCard__"

.field public static final PRICE_DRAGON_BASE:I = 0xa

.field public static final PRICE_PACK_BASE:I = 0x5


# instance fields
.field private sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Card;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/droidhen/fortconquer/units/Card;)I
    .locals 1
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public deepCopy()Lcom/droidhen/fortconquer/units/Card;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/droidhen/fortconquer/units/TroopsCard;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/units/TroopsCard;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    instance-of v1, p1, Lcom/droidhen/fortconquer/units/TroopsCard;

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseHeight()F

    move-result v0

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeightScaled()F
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeightScaled()F

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->calcDragonBaseValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v0

    return v0
.end method

.method public getWidthScaled()F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidthScaled()F

    move-result v0

    return v0
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/TroopsCard;->updateView()V

    .line 29
    invoke-super {p0}, Lcom/droidhen/fortconquer/units/Card;->onDetached()V

    .line 30
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/droidhen/fortconquer/units/Card;->onDetached()V

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "__TroopsCard__"

    return-object v0
.end method

.method public updateView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/TroopsCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrTroopPack:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->sTroops:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/TroopsCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 56
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/TroopsCard;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/TroopsCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 59
    :cond_2
    return-void
.end method

.method public useCrystalToBuy()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
