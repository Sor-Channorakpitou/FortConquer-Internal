.class public Lcom/droidhen/fortconquer/units/BlankCard;
.super Lcom/droidhen/fortconquer/units/Card;
.source "BlankCard.java"


# static fields
.field public static AUTO_POOL:Lcom/droidhen/fortconquer/kits/ObjectPool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/ObjectPool",
            "<",
            "Lcom/droidhen/fortconquer/units/BlankCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG:I = 0x1

.field public static POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/ObjectPool",
            "<",
            "Lcom/droidhen/fortconquer/units/BlankCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT:I


# instance fields
.field private sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/droidhen/fortconquer/units/BlankCard;->POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    .line 19
    sput-object v0, Lcom/droidhen/fortconquer/units/BlankCard;->AUTO_POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Card;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->type:I

    .line 64
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardBlank:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v2, v2, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 65
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/BlankCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/droidhen/fortconquer/units/BlankCard;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/BlankCard;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/droidhen/fortconquer/units/BlankCard;Lcom/droidhen/fortconquer/units/BlankCard;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/BlankCard;-><init>()V

    return-void
.end method

.method public static get()Lcom/droidhen/fortconquer/units/BlankCard;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/BlankCard;->get(Z)Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    return-object v0
.end method

.method public static get(Z)Lcom/droidhen/fortconquer/units/BlankCard;
    .locals 1
    .param p0, "autoReuse"    # Z

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    sget-object v0, Lcom/droidhen/fortconquer/units/BlankCard;->AUTO_POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/BlankCard;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/units/BlankCard;->POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/BlankCard;

    goto :goto_0
.end method

.method public static initPool()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/droidhen/fortconquer/kits/GreedPool;

    .line 23
    new-instance v1, Lcom/droidhen/fortconquer/units/BlankCard$1;

    invoke-direct {v1}, Lcom/droidhen/fortconquer/units/BlankCard$1;-><init>()V

    .line 22
    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/BlankCard;->POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    .line 30
    new-instance v0, Lcom/droidhen/fortconquer/units/BlankCard$3;

    .line 31
    new-instance v1, Lcom/droidhen/fortconquer/units/BlankCard$2;

    invoke-direct {v1}, Lcom/droidhen/fortconquer/units/BlankCard$2;-><init>()V

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/units/BlankCard$3;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/BlankCard;->AUTO_POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/droidhen/fortconquer/units/Card;)I
    .locals 1
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 146
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    instance-of v1, p1, Lcom/droidhen/fortconquer/units/BlankCard;

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getBaseHeight()F

    move-result v0

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getBaseWidth()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeightScaled()F
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeightScaled()F

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->type:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v0

    return v0
.end method

.method public getWidthScaled()F
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidthScaled()F

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/droidhen/fortconquer/units/Card;->onDetached()V

    .line 76
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/droidhen/fortconquer/units/BlankCard;->type:I

    .line 84
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/BlankCard;->updateView()V

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/BlankCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/BlankCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 98
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->sBlank:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/BlankCard;->type:I

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 99
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/BlankCard;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/BlankCard;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 102
    :cond_1
    return-void
.end method
