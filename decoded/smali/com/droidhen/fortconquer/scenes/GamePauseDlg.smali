.class public Lcom/droidhen/fortconquer/scenes/GamePauseDlg;
.super Lcom/droidhen/fortconquer/layer/GameDlg;
.source "GamePauseDlg.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# instance fields
.field private btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field protected rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected rLPause:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rLQuit:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rLResume:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sLPause:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sLQuit:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sLResume:Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 1
    .param p1, "pGameScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 35
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 36
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->init()V

    .line 37
    return-void
.end method

.method private getChosenBtn(FF)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 143
    :goto_0
    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V
    .locals 2
    .param p1, "btnChosen"    # Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->clear()V

    .line 124
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 125
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 126
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setIgnoreUpdate(Z)V

    .line 127
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->clear()V

    .line 130
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->back()V

    .line 131
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 132
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/UMengHelper;->endLevel(IZ)V

    goto :goto_0
.end method


# virtual methods
.method protected attachEverything()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 61
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sLPause:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 62
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 63
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 64
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sLQuit:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 65
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sLResume:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 66
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->detachSelf()Z

    .line 86
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 87
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 88
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 89
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 90
    return-void
.end method

.method protected initRegion()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->initRegion()V

    .line 41
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pause_btn_up.png"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pause_btn_down.png"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 42
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_pause.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLPause:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 43
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_quit.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLQuit:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 44
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_resume.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLResume:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 45
    return-void
.end method

.method protected initSprite()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 49
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLPause:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLPause:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sLPause:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 50
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v1, 0x43d70000    # 430.0f

    const/high16 v2, 0x43700000    # 240.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 51
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    rsub-int v1, v1, 0x172

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 52
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLQuit:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 53
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnQuit:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLQuit:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLQuit:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 52
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sLQuit:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 54
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLResume:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 55
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sBtnResume:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLResume:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->rLResume:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 54
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->sLResume:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 56
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 5
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    .line 97
    .local v0, "curX":F
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    .line 98
    .local v1, "curY":F
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->getChosenBtn(FF)Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 100
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 118
    :cond_0
    :goto_0
    return v3

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-direct {p0, v2}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V

    .line 113
    :goto_1
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1
.end method

.method public declared-synchronized setupGamePauseMenu()V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->pauseBGMusic()V

    .line 71
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 72
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 73
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 74
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 75
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->detachSelf()Z

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->setPosition(FF)V

    .line 77
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 78
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 79
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setIgnoreUpdate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
