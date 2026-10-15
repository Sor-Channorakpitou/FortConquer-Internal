.class public Lcom/droidhen/fortconquer/scenes/LogoScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "LogoScene.java"


# static fields
.field private static final DROIDHEN_TEXT_SHOW_SPEED:F = 0.85f

.field private static final GAME_TEXT_SHOW_SPEED:F = 1.4880953f

.field private static final LIGHT_FADE_SPEED:F = 2.9761906f

.field private static final LIGHT_SHOW_SPEED:F = 1.4880953f

.field private static final LINE_FADE_SPEED:F = 4.7619047f

.field private static final LINE_MOVE_SPEED:F = 2380.9524f

.field private static final TIME_PER_FRAME:F = 0.042f


# instance fields
.field private animateListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

.field private mBlock:Lcom/droidhen/andplugin/modifier/TriggerModifier;

.field private mDHAnimate:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mDHLight:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mDHText:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mDHTextLight:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field private mGameLight:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field private mGameText:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mLine:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mTrigger:[Lcom/droidhen/andplugin/modifier/DelayCallModifier;

.field private rDHText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rDHTextLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rDroidhen:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rGameLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rGameText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rLine:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rLogoLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sDHLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sDHTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sGameTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field st:J

.field private tLogo:Lcom/droidhen/andplugin/PlistTexture;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 2
    .param p1, "gameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->st:J

    .line 268
    new-instance v0, Lcom/droidhen/fortconquer/scenes/LogoScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->animateListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .line 117
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/LogoScene;)[Lcom/droidhen/andplugin/modifier/DelayCallModifier;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mTrigger:[Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    return-object v0
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method

.method static synthetic access$10(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHLight:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-object v0
.end method

.method static synthetic access$11(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method

.method static synthetic access$12(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mGameLight:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    return-object v0
.end method

.method static synthetic access$13(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method

.method static synthetic access$14(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHTextLight:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    return-object v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mLine:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-object v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHAnimate:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-object v0
.end method

.method static synthetic access$5(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method

.method static synthetic access$6(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHText:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-object v0
.end method

.method static synthetic access$7(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method

.method static synthetic access$8(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mGameText:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-object v0
.end method

.method static synthetic access$9(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    return-object v0
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTexture;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mBlock:Lcom/droidhen/andplugin/modifier/TriggerModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 286
    return-void
.end method

.method protected attachEverything()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 254
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 255
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 256
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 257
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 258
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 259
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 260
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setAlpha(F)V

    .line 261
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setAlpha(F)V

    .line 262
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setAlpha(F)V

    .line 263
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setAlpha(F)V

    .line 266
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 12

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 146
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDroidhen:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42a00000    # 80.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDroidhen:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 147
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLine:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLine:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 148
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLogoLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 149
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLogoLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLogoLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 148
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 150
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41c80000    # 25.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 151
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHTextLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 152
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHTextLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHTextLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 151
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 153
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 154
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 155
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 154
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 157
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 158
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 159
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 160
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameTextLight:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 161
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDHText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 162
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sGameText:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 163
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sDH:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 165
    new-instance v0, Lcom/droidhen/andplugin/modifier/TriggerModifier;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/LogoScene$2;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    .line 170
    new-instance v2, Lcom/droidhen/fortconquer/scenes/LogoScene$3;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v0, v8, v1, v2}, Lcom/droidhen/andplugin/modifier/TriggerModifier;-><init>(FLcom/droidhen/andplugin/modifier/TriggerCondition;Ljava/lang/Runnable;)V

    .line 165
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mBlock:Lcom/droidhen/andplugin/modifier/TriggerModifier;

    .line 179
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    .line 180
    new-instance v1, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v2, 0x3d2c0831    # 0.042f

    new-instance v3, Lcom/droidhen/fortconquer/scenes/LogoScene$4;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v1, v2, v3}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    aput-object v1, v0, v11

    .line 186
    new-instance v1, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v2, 0x3f010625    # 0.504f

    new-instance v3, Lcom/droidhen/fortconquer/scenes/LogoScene$5;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v1, v2, v3}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    aput-object v1, v0, v9

    const/4 v1, 0x2

    .line 192
    new-instance v2, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v3, 0x3f9be76c    # 1.2179999f

    new-instance v4, Lcom/droidhen/fortconquer/scenes/LogoScene$6;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v2, v3, v4}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 198
    new-instance v2, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v3, 0x3ff74bc6    # 1.9319999f

    new-instance v4, Lcom/droidhen/fortconquer/scenes/LogoScene$7;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v2, v3, v4}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 214
    new-instance v2, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v3, 0x4026a7ef    # 2.6039999f

    new-instance v4, Lcom/droidhen/fortconquer/scenes/LogoScene$8;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$8;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v2, v3, v4}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 222
    new-instance v2, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v3, 0x405c6a7f    # 3.444f

    new-instance v4, Lcom/droidhen/fortconquer/scenes/LogoScene$9;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene$9;-><init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V

    invoke-direct {v2, v3, v4}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    aput-object v2, v0, v1

    .line 179
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mTrigger:[Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    .line 231
    new-instance v6, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v0, 0x2

    new-array v7, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLine:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x190

    int-to-float v1, v1

    const v2, 0x4514cf3d

    div-float/2addr v1, v2

    .line 232
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLine:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0x190

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->sLine:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    aput-object v0, v7, v11

    .line 233
    new-instance v0, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v1, 0x3e570a3e    # 0.21000001f

    invoke-direct {v0, v1, v8, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v0, v7, v9

    invoke-direct {v6, v7}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 231
    iput-object v6, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mLine:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 236
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3d2c0831    # 0.042f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->animateListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-direct {v2, v3, v8, v8, v4}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v2, v1, v11

    .line 237
    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3d2c0831    # 0.042f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->animateListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-direct {v2, v3, v8, v8, v4}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v2, v1, v9

    const/4 v2, 0x2

    .line 238
    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3d2c0831    # 0.042f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->animateListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-direct {v3, v4, v8, v8, v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 239
    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3d2c0831    # 0.042f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->animateListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-direct {v3, v4, v8, v8, v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 236
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHAnimate:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 242
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3f969696

    invoke-direct {v2, v3, v10, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v11

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHText:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 245
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3f2c0831    # 0.672f

    invoke-direct {v2, v3, v10, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v11

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mGameText:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 246
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3f2c0831    # 0.672f

    invoke-direct {v2, v3, v10, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3eac0831    # 0.336f

    invoke-direct {v2, v3, v8, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHLight:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 247
    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3f2c0831    # 0.672f

    invoke-direct {v3, v4, v10, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v2, v11

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3eac0831    # 0.336f

    invoke-direct {v3, v4, v8, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v2, v9

    invoke-direct {v1, v2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-direct {v0, v1, v9}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mGameLight:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 248
    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3f2c0831    # 0.672f

    invoke-direct {v3, v4, v10, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v2, v11

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3eac0831    # 0.336f

    invoke-direct {v3, v4, v8, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v2, v9

    invoke-direct {v1, v2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-direct {v0, v1, v9}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mDHTextLight:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 249
    return-void
.end method

.method protected initTextureRegions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "droidhen_1.png"

    aput-object v2, v1, v4

    const-string v2, "droidhen_2.png"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "droidhen_3.png"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 132
    const-string v3, "droidhen_4.png"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "droidhen_5.png"

    aput-object v3, v1, v2

    .line 131
    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDroidhen:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 133
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "line_01.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLine:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 134
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "droidhen_008.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rLogoLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 135
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dh_f.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHTextLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 136
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "game_f.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameLight:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 137
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "droidhen_dh.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rDHText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 138
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "game.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->rGameText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 139
    return-void
.end method

.method protected initTextures()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/cover/"

    .line 126
    const-string v2, "droidhen_logo.png"

    const-string v3, "droidhen_logo.plist"

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 125
    invoke-static {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    .line 127
    return-void
.end method

.method public loadTexture()V
    .locals 3

    .prologue
    .line 294
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    const/4 v1, 0x0

    .line 293
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 308
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public unloadResource()V
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/anddev/andengine/opengl/texture/ITexture;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/LogoScene;->tLogo:Lcom/droidhen/andplugin/PlistTexture;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->unloadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 290
    return-void
.end method
