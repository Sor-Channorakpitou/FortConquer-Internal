.class public Lcom/droidhen/fortconquer/scenes/StatusScene;
.super Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;
.source "StatusScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# static fields
.field public static NAME_LEN:I

.field public static mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

.field public static sHaveShownOfferWall:Z


# instance fields
.field private fFont:Lorg/anddev/andengine/opengl/font/Font;

.field private final mCBArenaUseCrystal:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

.field public mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

.field private final mTaskChangeName:Ljava/lang/Runnable;

.field private final mTaskOpenInput:Ljava/lang/Runnable;

.field private final mTaskStart:Ljava/lang/Runnable;

.field private final mTaskStartArena:Ljava/lang/Runnable;

.field private mTimeModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field private mfFontDgreen:Lorg/anddev/andengine/opengl/font/Font;

.field private mfFontGray:Lorg/anddev/andengine/opengl/font/Font;

.field private mfFontGreen:Lorg/anddev/andengine/opengl/font/Font;

.field private mfFontWhite:Lorg/anddev/andengine/opengl/font/Font;

.field private mfFontWhiteDefault:Lorg/anddev/andengine/opengl/font/Font;

.field private mfFontYellow:Lorg/anddev/andengine/opengl/font/Font;

.field private mfFontYellowS:Lorg/anddev/andengine/opengl/font/Font;

.field private mrArena:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrCountDownBar:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrCountDownBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public mrEnergy:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrEnergyS:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLArean:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLLost:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLWon:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrNEnergy:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field private mrNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field private mrNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field private mrProcessBar:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrProcessBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrStatus:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msCountDownBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

.field private msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msEnergy:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msEnergyIcon:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msEnergyS:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameLB:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameRB:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameRR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameRT:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLArean:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLLost:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msNEnergy:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msNLost:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msNWon:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

.field private msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msStartL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msStartR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msStatus:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTLv:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

.field private msTWelcome:Lorg/anddev/andengine/entity/text/Text;

.field private msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

.field private mtFontDgreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mtFontGray:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mtFontGreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mtFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mtFontWhiteDefault:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mtFontYellow:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mtFontYellowS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x14

    sput v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->NAME_LEN:I

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->sHaveShownOfferWall:Z

    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 2
    .param p1, "mGameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v1, 0x1

    .line 215
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 132
    new-instance v0, Lcom/droidhen/fortconquer/scenes/StatusScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskStart:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/droidhen/fortconquer/scenes/StatusScene$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskChangeName:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/droidhen/fortconquer/scenes/StatusScene$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mCBArenaUseCrystal:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    .line 164
    new-instance v0, Lcom/droidhen/fortconquer/scenes/StatusScene$4;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskStartArena:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/droidhen/fortconquer/scenes/StatusScene$5;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskOpenInput:Ljava/lang/Runnable;

    .line 216
    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setTouchAreaBindingEnabled(Z)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 218
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/StatusScene;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyIcon:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/StatusScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mCBArenaUseCrystal:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    return-object v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/StatusScene;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->updateName()V

    return-void
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/StatusScene;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskChangeName:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 399
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 400
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 406
    iget v3, v1, Landroid/text/format/Time;->second:I

    rem-int/lit8 v3, v3, 0x14

    rsub-int/lit8 v0, v3, 0x14

    .line 407
    .local v0, "second":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-string v2, "(00:0"

    .line 408
    .local v2, "timeString":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    return-object v2

    .line 407
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_0
    const-string v2, "(00:"

    goto :goto_0
.end method

.method private guideDone()V
    .locals 2

    .prologue
    .line 671
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 672
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 673
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 674
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->clear()V

    .line 676
    :cond_0
    return-void
.end method

.method private setArenaVisable(Z)V
    .locals 1
    .param p1, "visable"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNWon:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setVisible(Z)V

    .line 383
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNLost:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setVisible(Z)V

    .line 384
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 385
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 386
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, p1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 387
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStartR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 388
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 389
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 390
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 391
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNEnergy:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setVisible(Z)V

    .line 392
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyS:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 393
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergy:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 394
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setVisible(Z)V

    .line 395
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 396
    return-void
.end method

.method private showOfferWall2Ad()V
    .locals 2

    .prologue
    .line 637
    sget-boolean v1, Lcom/droidhen/fortconquer/scenes/StatusScene;->sHaveShownOfferWall:Z

    if-eqz v1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    .line 643
    .local v0, "anAd":Lcom/gamepromote/offerwall/AdData;
    if-eqz v0, :cond_0

    .line 648
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    if-eqz v1, :cond_0

    .line 653
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    invoke-virtual {v1}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    new-instance v1, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    .line 660
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 662
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 663
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 664
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 665
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 667
    const/4 v1, 0x1

    sput-boolean v1, Lcom/droidhen/fortconquer/scenes/StatusScene;->sHaveShownOfferWall:Z

    goto :goto_0
.end method

.method private updateName()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 580
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 582
    return-void
.end method

.method private updateStaminaText()V
    .locals 6

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 506
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerStamina()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerStamina()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(F)V

    .line 509
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41100000    # 9.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergy:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergy:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 512
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 513
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    .line 514
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 513
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 515
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerStamina()I

    move-result v0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 521
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTimeModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 522
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTimeModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 523
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTimeModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method private updateText()V
    .locals 4

    .prologue
    const/high16 v3, 0x42fa0000    # 125.0f

    const/high16 v2, 0x42c80000    # 100.0f

    .line 528
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(F)V

    .line 532
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNEnergy:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getStamCost()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 533
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 534
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTLv:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Level:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNWon:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getArenaWon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 537
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNLost:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getArenaLost()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 538
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->updateStaminaText()V

    .line 540
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTLv:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43cd0000    # 410.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTLv:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v2

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 541
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x44340000    # 720.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v2

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 543
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 546
    :cond_1
    return-void
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

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

.method protected attachEverything()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 416
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 417
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 418
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 419
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 420
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 421
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 423
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 424
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 425
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 426
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 427
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 428
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 429
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLArean:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 431
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 432
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStatus:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 434
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 435
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 436
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 437
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 438
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 439
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyS:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 440
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergy:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 441
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNEnergy:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 443
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 444
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 445
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 446
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 447
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTLv:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 448
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 449
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 450
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTWelcome:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 451
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStartL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 452
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStartR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 453
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 454
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 455
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 456
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNWon:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 457
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNLost:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 458
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 459
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 460
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 14

    .prologue
    .line 289
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 290
    new-instance v0, Lcom/droidhen/fortconquer/component/TripleBarEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrProcessBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/component/TripleBarEntity;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    .line 291
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 292
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43cd0000    # 410.0f

    const/high16 v2, 0x42fa0000    # 125.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrProcessBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 293
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(FF)V

    .line 294
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x42880000    # 68.0f

    const/high16 v2, 0x42d40000    # 106.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskOpenInput:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 295
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/droidhen/fortconquer/component/CoinBarEntity;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 297
    const v11, 0x3ecccccd    # 0.4f

    .line 298
    .local v11, "lap":F
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    rsub-int v1, v1, 0x18b

    int-to-float v1, v1

    const/high16 v2, 0x431c0000    # 156.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 299
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 300
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 301
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLB:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 302
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 303
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v3, v5

    .line 304
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    .line 302
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 305
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x3d888889

    const v2, 0x3db0b0b1

    const v3, 0x3de0e0e1

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFF)V

    .line 307
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x43ca8000    # 405.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 308
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRT:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 309
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 310
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRB:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 311
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getY()F

    move-result v2

    .line 312
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getHeight()F

    move-result v5

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    .line 311
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 313
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x3d888889

    const v2, 0x3db0b0b1

    const v3, 0x3de0e0e1

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFF)V

    .line 315
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getY()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 316
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrArena:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrArena:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 317
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    .line 318
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 317
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 319
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLArean:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLocal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLArean:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLArean:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 321
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStatus:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStatus:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 322
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameLBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskStart:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 323
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTaskStartArena:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 324
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    const/high16 v2, 0x430c0000    # 140.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergyS:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergyS:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyS:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 325
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyS:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyS:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNEnergy:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNEnergy:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNEnergy:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 326
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNEnergy:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setOffsetX(F)V

    .line 327
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergy:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyIcon:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 328
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyIcon:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleCenter(FF)V

    .line 329
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergyIcon:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 330
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStartL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 331
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42100000    # 36.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStartR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 333
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontYellow:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerStamina()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgCur:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 334
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontYellowS:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTEnrgTotal:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 335
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontWhite:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Level:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTLv:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 336
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontGreen:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getNexLvExp()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTExp:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 337
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->getTimeString()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "timeString":Ljava/lang/String;
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x0

    const/high16 v2, 0x43960000    # 300.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontGray:Lorg/anddev/andengine/opengl/font/Font;

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTTime:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 339
    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, 0x42a40000    # 82.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontDgreen:Lorg/anddev/andengine/opengl/font/Font;

    const v5, 0x7f050047

    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/scenes/StatusScene;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTWelcome:Lorg/anddev/andengine/entity/text/Text;

    .line 341
    new-instance v12, Lcom/droidhen/fortconquer/scenes/StatusScene$6;

    invoke-direct {v12, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    .line 350
    .local v12, "timeListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    new-instance v0, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v12}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTimeModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 351
    new-instance v5, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontWhiteDefault:Lorg/anddev/andengine/opengl/font/Font;

    const-string v9, ""

    sget v10, Lcom/droidhen/fortconquer/scenes/StatusScene;->NAME_LEN:I

    invoke-direct/range {v5 .. v10}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTName:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 352
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergy:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x43780000    # 248.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergy:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msEnergy:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 353
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msArena:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrCountDownBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x43aa0000    # 340.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrCountDownBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 354
    new-instance v0, Lcom/droidhen/fortconquer/component/TripleBarEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrCountDownBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/component/TripleBarEntity;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    .line 355
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msCountDownBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    .line 356
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 357
    new-instance v5, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x439b0000    # 310.0f

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    const v0, 0x7f05004a

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-direct/range {v5 .. v10}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;)V

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    .line 358
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msFrameRBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v13, v0, v1

    .line 359
    .local v13, "x_m":F
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v13, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 361
    .end local v13    # "x_m":F
    :cond_0
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x42bc0000    # 94.0f

    const/high16 v2, 0x43820000    # 260.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 362
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43dc0000    # 440.0f

    const/high16 v2, 0x437f0000    # 255.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLWon:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 363
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLLost:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLost:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 364
    new-instance v5, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 365
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setOffsetX(F)V

    .line 366
    new-instance v5, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLWon:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNWon:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 367
    new-instance v5, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNWon:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getX()F

    move-result v6

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msLLost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msNLost:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 368
    return-void
.end method

.method public handleEnergyRestore()V
    .locals 10

    .prologue
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 604
    .local v4, "unixTime":J
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v7, "time_stamp"

    invoke-static {v6, v7, v4, v5}, Lcom/droidhen/fortconquer/CCPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 605
    .local v0, "savedTime":J
    sub-long v6, v4, v0

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 606
    .local v2, "timeInterval":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 608
    const-wide/16 v6, 0x14

    div-long v6, v2, v6

    long-to-int v6, v6

    invoke-static {v6}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerStamina(I)V

    .line 610
    :cond_0
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v7, "time_stamp"

    const-wide/16 v8, 0x4e20

    rem-long v8, v4, v8

    sub-long v8, v4, v8

    invoke-static {v6, v7, v8, v9}, Lcom/droidhen/fortconquer/CCPrefs;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 611
    return-void
.end method

.method public initTextureRegions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 261
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "precess_bar.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrProcessBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 262
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "btn_up.png"

    aput-object v2, v1, v5

    const-string v2, "btn_down.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 263
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_top.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 264
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_bottom.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 265
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_left.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 266
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_right.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 267
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "p_local.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 268
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "p_arena.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrArena:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 269
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_status.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStatus:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 270
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "text.png"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrText:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 271
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_light.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergy:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 272
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_energy_s.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergyS:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 273
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "process_bar_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrProcessBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 274
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_energy.png"

    invoke-static {v0, v1, v4, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNEnergy:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 275
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_start.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrStart:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 276
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_local.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLLocal:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 277
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_arena.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLArean:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 278
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "countdown.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrCountDownBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 279
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "countdown_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrCountDownBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 280
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_stage.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 281
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_won.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLWon:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 282
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_lost.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrLLost:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 283
    sget-object v0, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_number.png"

    invoke-static {v0, v1, v4, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 284
    sget-object v0, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_number_small.png"

    invoke-static {v0, v1, v4, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 285
    return-void
.end method

.method public initTextures()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v8, 0x100

    const/4 v4, 0x1

    .line 222
    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "status.png"

    aput-object v0, v6, v10

    const-string v0, "status_kr.png"

    aput-object v0, v6, v4

    const-string v0, "status_yn.png"

    aput-object v0, v6, v11

    .line 223
    .local v6, "cbPic":[Ljava/lang/String;
    new-array v7, v12, [Ljava/lang/String;

    const-string v0, "status.plist"

    aput-object v0, v7, v10

    const-string v0, "status_kr.plist"

    aput-object v0, v7, v4

    const-string v0, "status_yn.plist"

    aput-object v0, v7, v11

    .line 224
    .local v7, "cbPlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/cover/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    .line 225
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v7, v3

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 224
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 226
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 227
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontWhite:Lorg/anddev/andengine/opengl/font/Font;

    .line 228
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontWhiteDefault:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 229
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontWhiteDefault:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v10, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontWhiteDefault:Lorg/anddev/andengine/opengl/font/Font;

    .line 230
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontGreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 231
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontGreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const v5, -0xff0100

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontGreen:Lorg/anddev/andengine/opengl/font/Font;

    .line 232
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontYellow:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 233
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontYellow:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41e00000    # 28.0f

    const/16 v5, -0x100

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontYellow:Lorg/anddev/andengine/opengl/font/Font;

    .line 234
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontYellowS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 235
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontYellowS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v5, -0x100

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontYellowS:Lorg/anddev/andengine/opengl/font/Font;

    .line 236
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontGray:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 237
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontGray:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const v5, -0x777778

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontGray:Lorg/anddev/andengine/opengl/font/Font;

    .line 238
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontDgreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 239
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontDgreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v5, 0x42

    const/16 v8, 0x80

    const/16 v9, 0xa7

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontDgreen:Lorg/anddev/andengine/opengl/font/Font;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 241
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontGreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontYellow:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontYellowS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontGray:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontDgreen:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mtFontWhiteDefault:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/anddev/andengine/opengl/font/Font;

    .line 242
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontWhite:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontGreen:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontYellow:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontYellowS:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontGray:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontDgreen:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mfFontWhiteDefault:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 244
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/StatusScene;->mStatusTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 251
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x80

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 252
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 253
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x1e

    :goto_0
    int-to-float v3, v3

    const/16 v5, 0xb

    const/16 v8, 0xec

    const/16 v9, 0xf2

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 252
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 254
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 255
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 257
    :cond_0
    return-void

    .line 253
    :cond_1
    const/16 v3, 0x18

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 486
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->clear()V

    .line 502
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/StatusScene$7;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 476
    invoke-super {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->guideDone()V

    .line 576
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 2
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 686
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->reloadStep()V

    .line 689
    :cond_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/component/Guide;->shouldLoadTexture(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    return v0

    .line 692
    :cond_2
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 0
    .param p1, "to"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->guideDone()V

    .line 680
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->handleEnergyRestore()V

    .line 681
    return-void
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 481
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 482
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 465
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msBtnR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 466
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msText:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 467
    return-void
.end method

.method public setupScene()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 586
    invoke-super {p0}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->setupScene()V

    .line 587
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 588
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 589
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 590
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 591
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->handleEnergyRestore()V

    .line 592
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->updateName()V

    .line 593
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    if-le v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setArenaVisable(Z)V

    .line 594
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTUnlockTip:Lorg/anddev/andengine/entity/text/Text;

    sget v3, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    if-gt v3, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/Text;->setVisible(Z)V

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->updateText()V

    .line 598
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateText()V

    .line 599
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->showGuide()V

    .line 600
    return-void

    :cond_1
    move v0, v2

    .line 593
    goto :goto_0

    :cond_2
    move v1, v2

    .line 595
    goto :goto_1
.end method

.method public showGuide()V
    .locals 3

    .prologue
    .line 614
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasShowInputName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    const/16 v1, -0x64

    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "showed":Z
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 620
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 621
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    move-result v0

    .line 626
    :cond_2
    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 628
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->showOfferWall2Ad()V

    goto :goto_0

    .line 631
    .end local v0    # "showed":Z
    :cond_3
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->showOfferWall2Ad()V

    goto :goto_0
.end method

.method public showInputDialog()V
    .locals 5

    .prologue
    .line 550
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 551
    .local v1, "filters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    sget v4, Lcom/droidhen/fortconquer/scenes/StatusScene;->NAME_LEN:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 552
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 553
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 554
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 555
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 557
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050046

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/scenes/StatusScene;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 558
    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 559
    const-string v3, "Ok"

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StatusScene$8;

    invoke-direct {v4, p0, v0}, Lcom/droidhen/fortconquer/scenes/StatusScene$8;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 570
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 571
    return-void
.end method

.method protected updateTimeString()V
    .locals 3

    .prologue
    .line 371
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 372
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 373
    iget v2, v1, Landroid/text/format/Time;->second:I

    rem-int/lit8 v2, v2, 0x14

    rsub-int/lit8 v0, v2, 0x14

    .line 374
    .local v0, "second":I
    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    .line 376
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerStamina(I)V

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->updateStaminaText()V

    .line 379
    return-void
.end method
