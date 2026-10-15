.class public Lcom/droidhen/fortconquer/scenes/StartMenuScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "StartMenuScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# instance fields
.field protected mBtnHelpRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mBtnMoreRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mBtnMusicRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mBtnPlayRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mBtnSoundRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mCoverBgRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStartBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

.field protected mStartMenuBg:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 1
    .param p1, "mGameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setTouchAreaBindingEnabled(Z)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTexture;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected attachEverything()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public backToStartMenu()V
    .locals 5

    .prologue
    const/high16 v4, 0x41900000    # 18.0f

    .line 174
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 175
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 176
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->updateMusicSwitch()V

    .line 177
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->swithToScene()V

    .line 178
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndShowAD()V

    .line 179
    const/16 v0, 0x12

    .line 180
    .local v0, "DOWN_BY":I
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    if-lez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getInitialX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getInitialY()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setPosition(FF)V

    .line 183
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getInitialX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getInitialY()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setPosition(FF)V

    .line 184
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getInitialX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getInitialY()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setPosition(FF)V

    .line 187
    :cond_0
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v0, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mCoverBgRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v3, v3, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartMenuBg:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    .line 91
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartMenuBg:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 92
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlayRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const v2, 0x439f8000    # 319.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlayRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StartMenuScene$1;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 102
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x43a90000    # 338.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StartMenuScene$2;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 108
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v1, 0x44084000    # 545.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StartMenuScene$3;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 115
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x442a0000    # 680.0f

    const/high16 v2, 0x41800000    # 16.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 131
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StartMenuScene$5;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 139
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 140
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 142
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 143
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 145
    return-void
.end method

.method public initTextureRegions()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "gfx/cover/cover_bg.jpg"

    aput-object v1, v0, v4

    const-string v1, "gfx/cover/cover_bg_kr.jpg"

    aput-object v1, v0, v5

    const-string v1, "gfx/cover/cover_bg_yn.jpg"

    aput-object v1, v0, v6

    .line 79
    .local v0, "coverPic":[Ljava/lang/String;
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    .line 80
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v0, v3

    .line 79
    invoke-static {v1, v2, v3, v4, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mCoverBgRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 81
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cover_btn_start_up.png"

    aput-object v3, v2, v4

    const-string v3, "cover_btn_start_down.png"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlayRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 82
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cover_btn_more_up.png"

    aput-object v3, v2, v4

    const-string v3, "cover_btn_more_down.png"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 83
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cover_btn_help_up.png"

    aput-object v3, v2, v4

    const-string v3, "cover_btn_help_down.png"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 84
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cover_btn_music_up.png"

    aput-object v3, v2, v4

    const-string v3, "cover_btn_music_down.png"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 85
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cover_btn_sound_up.png"

    aput-object v3, v2, v4

    const-string v3, "cover_btn_sound_down.png"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 86
    return-void
.end method

.method public initTextures()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v3, 0x400

    const/16 v4, 0x200

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 64
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "cover_btns.png"

    aput-object v2, v0, v6

    const-string v2, "cover_btns_kr.png"

    aput-object v2, v0, v7

    const-string v2, "cover_btns_yn.png"

    aput-object v2, v0, v8

    .line 65
    .local v0, "cbPic":[Ljava/lang/String;
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "cover_btns.plist"

    aput-object v2, v1, v6

    const-string v2, "cover_btns_kr.plist"

    aput-object v2, v1, v7

    const-string v2, "cover_btns_yn.plist"

    aput-object v2, v1, v8

    .line 66
    .local v1, "cbPlist":[Ljava/lang/String;
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "gfx/cover/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v4

    aget-object v4, v0, v4

    .line 67
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v5

    aget-object v5, v1, v5

    sget-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 66
    invoke-static {v2, v3, v4, v5, v6}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 70
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mStartBtnsTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    sput-boolean v1, Lcom/droidhen/fortconquer/scenes/StatusScene;->sHaveShownOfferWall:Z

    goto :goto_0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 197
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnPlaySprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 161
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMoreSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 162
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnHelpSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 163
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 164
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 165
    return-void
.end method

.method public setupScene()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->backToStartMenu()V

    .line 212
    return-void
.end method

.method protected updateMusicSwitch()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->isMusicEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 149
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v3}, Lcom/droidhen/fortconquer/CCPrefs;->isSoundEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 150
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnMusicSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getCurrentTileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setOffTileIndex(I)V

    .line 151
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mBtnSoundSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getCurrentTileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setOffTileIndex(I)V

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1
.end method
