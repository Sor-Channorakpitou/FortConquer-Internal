.class public Lcom/droidhen/fortconquer/GameActivity;
.super Lcom/droidhen/fortconquer/DroidhenGameActivity;
.source "GameActivity.java"

# interfaces
.implements Lcom/gamepromote/offerwall/RewardCallback;


# static fields
.field public static final CAMERA_HEIGHT:I = 0x1e0

.field public static final CAMERA_WIDTH:I = 0x320

.field public static final GA_ID:Ljava/lang/String; = "UA-18122485-18"

.field private static final TAPJOY_TOTAL_POINTS_FIELD_NAME:Ljava/lang/String; = "tapjoy_total_points"

.field private static adLayout:Landroid/widget/RelativeLayout; = null

.field private static adView:Lcom/google/android/gms/ads/AdView; = null

.field public static bHasRecord:Z = false

.field private static final hideAdRunnable:Ljava/lang/Runnable;

.field public static mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene; = null

.field public static mCurrentScore:I = 0x0

.field public static final mDiscountItems:[Ljava/lang/String;

.field public static mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene; = null

.field public static final mGiftCoins:[I

.field public static final mGiftItems:[Ljava/lang/String;

.field public static final mGiftPackagePrice:[I

.field public static final mIsCoins:[Z

.field private static mOfferWallInstance:Lcom/gamepromote/offerwall/OfferWall; = null

.field public static mStartMenuScene:Lcom/droidhen/fortconquer/scenes/StartMenuScene; = null

.field public static mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene; = null

.field public static final mStoreCoins:[I

.field public static final mStoreItems:[Ljava/lang/String;

.field public static sAdData:Lcom/gamepromote/offerwall/AdData; = null

.field public static sBestScore:[I = null

.field public static sBoughtCoin:I = 0x0

.field public static sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene; = null

.field public static sCurrentStage:I = 0x0

.field public static sCurrentWorld:I = 0x0

.field public static sGameIcon:Lcom/moreexchange/model/Icon; = null

.field public static sInstance:Lcom/droidhen/fortconquer/GameActivity; = null

.field public static sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer; = null

.field public static sTotalCoin:I = 0x0

.field private static final setAdLBRunnable:Ljava/lang/Runnable;

.field public static final showAdRunnable:Ljava/lang/Runnable;

.field private static final showMore:Ljava/lang/Runnable;

.field private static final showMoreInterval:Ljava/lang/Runnable;

.field private static final tapjoyAppID:Ljava/lang/String; = "325b09ac-71ab-41df-b348-7e81034d21f6"

.field private static final tapjoySecretKey:Ljava/lang/String; = "WV92cK0Uu158YrTyclq5"


# instance fields
.field final RC_PURCHASE:I

.field protected TextureCount:I

.field private _promoteIndex:I

.field private bActivityPaused:Z

.field private bGameTexturesUnloaded:Z

.field protected mCamera:Lorg/anddev/andengine/engine/camera/SmoothCamera;

.field public mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

.field protected mFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field mHandler:Landroid/os/Handler;

.field private mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

.field public mPlayer:Lcom/droidhen/fortconquer/units/Player;

.field public mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

.field public mStageData:Lcom/droidhen/fortconquer/stages/StageData;

.field public mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

.field public mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

.field public mUpgradeScene:Lcom/droidhen/fortconquer/scenes/UpgradeScene;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    new-array v0, v5, [Z

    aput-boolean v3, v0, v4

    aput-boolean v3, v0, v3

    aput-boolean v3, v0, v7

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mIsCoins:[Z

    .line 91
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStoreCoins:[I

    .line 92
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGiftCoins:[I

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGiftPackagePrice:[I

    .line 94
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "fortconquer1"

    aput-object v1, v0, v4

    const-string v1, "fortconquer2"

    aput-object v1, v0, v3

    const-string v1, "fortconquer3"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "fortconquer4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 95
    const-string v2, "fortconquer5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fortconquer6"

    aput-object v2, v0, v1

    .line 94
    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStoreItems:[Ljava/lang/String;

    .line 96
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "discount_fortconquer1"

    aput-object v1, v0, v4

    const-string v1, "discount_fortconquer2"

    aput-object v1, v0, v3

    .line 97
    const-string v1, "discount_fortconquer3"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "discount_fortconquer4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "discount_fortconquer5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "discount_fortconquer6"

    aput-object v2, v0, v1

    .line 96
    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mDiscountItems:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gift_fortconquer1"

    aput-object v1, v0, v4

    const-string v1, "gift_fortconquer2"

    aput-object v1, v0, v3

    const-string v1, "gift_fortconquer3"

    aput-object v1, v0, v7

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    .line 108
    sput v4, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 110
    sput v4, Lcom/droidhen/fortconquer/GameActivity;->sTotalCoin:I

    .line 111
    sput v3, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    .line 112
    sput v4, Lcom/droidhen/fortconquer/GameActivity;->sCurrentWorld:I

    .line 113
    sput-object v6, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 115
    sput v4, Lcom/droidhen/fortconquer/GameActivity;->mCurrentScore:I

    .line 116
    sput-boolean v3, Lcom/droidhen/fortconquer/GameActivity;->bHasRecord:Z

    .line 144
    sput-object v6, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    .line 145
    sput-object v6, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    .line 146
    sput-object v6, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    .line 150
    sput-object v6, Lcom/droidhen/fortconquer/GameActivity;->adView:Lcom/google/android/gms/ads/AdView;

    .line 151
    new-instance v0, Lcom/droidhen/fortconquer/GameActivity$1;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/GameActivity$1;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->showAdRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/droidhen/fortconquer/GameActivity$2;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/GameActivity$2;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->hideAdRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/droidhen/fortconquer/GameActivity$3;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/GameActivity$3;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->setAdLBRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/droidhen/fortconquer/GameActivity$4;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/GameActivity$4;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->showMore:Ljava/lang/Runnable;

    .line 187
    new-instance v0, Lcom/droidhen/fortconquer/GameActivity$5;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/GameActivity$5;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->showMoreInterval:Ljava/lang/Runnable;

    .line 194
    return-void

    .line 91
    :array_0
    .array-data 4
        0x2710
        0x9c40
        0x3a980
        0x32
        0xc8
        0x4b0
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x2710
        0x32
        0x9c40
        0xc8
        0x3a980
        0x4b0
    .end array-data

    .line 93
    :array_2
    .array-data 4
        0x12b
        0x3e7
        0x1387
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;-><init>()V

    .line 135
    iput v0, p0, Lcom/droidhen/fortconquer/GameActivity;->TextureCount:I

    .line 139
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/GameActivity;->bGameTexturesUnloaded:Z

    .line 140
    iput-boolean v0, p0, Lcom/droidhen/fortconquer/GameActivity;->bActivityPaused:Z

    .line 142
    iput v1, p0, Lcom/droidhen/fortconquer/GameActivity;->_promoteIndex:I

    .line 838
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mHandler:Landroid/os/Handler;

    .line 840
    const/16 v0, 0x26e4

    iput v0, p0, Lcom/droidhen/fortconquer/GameActivity;->RC_PURCHASE:I

    .line 81
    return-void
.end method

.method static synthetic access$0()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->adLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 149
    sput-object p0, Lcom/droidhen/fortconquer/GameActivity;->adLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .prologue
    .line 150
    sput-object p0, Lcom/droidhen/fortconquer/GameActivity;->adView:Lcom/google/android/gms/ads/AdView;

    return-void
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/GameActivity;)Lcom/droidhen/fortconquer/scenes/LogoScene;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

    return-object v0
.end method

.method private cleanChildren(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 549
    if-nez p1, :cond_1

    .line 568
    :cond_0
    return-void

    .line 552
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 553
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 554
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 555
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 557
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 558
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_2

    .line 559
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 560
    const/4 v7, 0x0

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private cleanInstance(Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cleanChildren"    # Z

    .prologue
    const/4 v7, 0x0

    .line 571
    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    instance-of v6, p1, Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v6, :cond_4

    move-object v4, p1

    .line 575
    check-cast v4, Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 576
    .local v4, "scene":Lcom/droidhen/fortconquer/scenes/SmartScene;
    invoke-virtual {v4}, Lcom/droidhen/fortconquer/scenes/SmartScene;->detachChildren()V

    .line 577
    invoke-virtual {v4}, Lcom/droidhen/fortconquer/scenes/SmartScene;->clearChildScene()V

    .line 578
    invoke-virtual {v4}, Lcom/droidhen/fortconquer/scenes/SmartScene;->clearTouchAreas()V

    .line 579
    invoke-virtual {v4}, Lcom/droidhen/fortconquer/scenes/SmartScene;->clearUpdateHandlers()V

    .line 580
    invoke-virtual {v4}, Lcom/droidhen/fortconquer/scenes/SmartScene;->clearEntityModifiers()V

    .line 581
    iget-object v6, v4, Lcom/droidhen/fortconquer/scenes/SmartScene;->mTexturesAL:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 582
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, v4, Lcom/droidhen/fortconquer/scenes/SmartScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 586
    invoke-direct {p0, v4}, Lcom/droidhen/fortconquer/GameActivity;->cleanChildren(Ljava/lang/Object;)V

    .line 607
    .end local v1    # "i":I
    .end local v4    # "scene":Lcom/droidhen/fortconquer/scenes/SmartScene;
    :cond_2
    :goto_2
    if-eqz p2, :cond_0

    .line 608
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/GameActivity;->cleanChildren(Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    .restart local v1    # "i":I
    .restart local v4    # "scene":Lcom/droidhen/fortconquer/scenes/SmartScene;
    :cond_3
    iget-object v6, v4, Lcom/droidhen/fortconquer/scenes/SmartScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->clearTextureAtlasSources()V

    .line 584
    iget-object v6, p0, Lcom/droidhen/fortconquer/GameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v6}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v7

    iget-object v6, v4, Lcom/droidhen/fortconquer/scenes/SmartScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-virtual {v7, v6}, Lorg/anddev/andengine/opengl/texture/TextureManager;->unloadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    .end local v1    # "i":I
    .end local v4    # "scene":Lcom/droidhen/fortconquer/scenes/SmartScene;
    :cond_4
    instance-of v6, p1, Lorg/anddev/andengine/entity/IEntity;

    if-eqz v6, :cond_5

    move-object v0, p1

    .line 589
    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    .line 590
    .local v0, "entity":Lorg/anddev/andengine/entity/IEntity;
    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    goto :goto_2

    .line 591
    .end local v0    # "entity":Lorg/anddev/andengine/entity/IEntity;
    :cond_5
    instance-of v6, p1, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    if-eqz v6, :cond_6

    move-object v5, p1

    .line 592
    check-cast v5, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    .line 593
    .local v5, "texture":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<*>;"
    invoke-interface {v5}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->clearTextureAtlasSources()V

    goto :goto_2

    .line 594
    .end local v5    # "texture":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<*>;"
    :cond_6
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_8

    move-object v3, p1

    .line 595
    check-cast v3, Ljava/util/List;

    .line 596
    .local v3, "objs":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_7

    .line 599
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 597
    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 600
    .end local v1    # "i":I
    .end local v3    # "objs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_8
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    move-object v2, p1

    .line 601
    check-cast v2, [Ljava/lang/Object;

    .line 602
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v6, v2

    if-ge v1, v6, :cond_2

    .line 603
    aget-object v6, v2, v1

    invoke-direct {p0, v6, v7}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 604
    const/4 v6, 0x0

    aput-object v6, v2, v1

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private cleanStatic(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 528
    if-nez p1, :cond_1

    .line 546
    :cond_0
    return-void

    .line 531
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 532
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 533
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 535
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 536
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_2

    .line 537
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 538
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getGiftIDByItemName(Ljava/lang/String;)I
    .locals 2
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 700
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 696
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getIDByItemName(Ljava/lang/String;)I
    .locals 2
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStoreItems:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 677
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mDiscountItems:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 682
    const/4 v1, -0x1

    :goto_2
    return v1

    .line 673
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStoreItems:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 674
    goto :goto_2

    .line 672
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_2
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mDiscountItems:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    .line 679
    goto :goto_2

    .line 677
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hideSystemUI()V
    .locals 2

    .prologue
    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setSystemUiVisibility(I)V

    .line 638
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 643
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setSystemUiVisibility(I)V

    .line 649
    :cond_1
    return-void
.end method

.method private initActivity()V
    .locals 3

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/GameActivity;->bGameTexturesUnloaded:Z

    .line 432
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mCamera:Lorg/anddev/andengine/engine/camera/SmoothCamera;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->setCenterDirect(FF)V

    .line 433
    return-void
.end method

.method private isGiftItem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 691
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 687
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    const/4 v1, 0x1

    goto :goto_1

    .line 686
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized loadPrefs()V
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    const-string v0, "bought_coin"

    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 437
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->getRecord(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/droidhen/fortconquer/GameActivity;->bHasRecord:Z

    .line 438
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/CCPrefs;->getLevelPassed(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    .line 439
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->loadPrefs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public CheckAndHideAD()V
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->hideAdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method

.method public CheckAndShowAD()V
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->showAdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method public addTapjoyReward(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 864
    invoke-static {p1}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 865
    return-void
.end method

.method public buyGiftPackageItem(Ljava/lang/String;)V
    .locals 13
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 705
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/GameActivity;->getGiftIDByItemName(Ljava/lang/String;)I

    move-result v5

    .line 706
    .local v5, "i":I
    if-gez v5, :cond_0

    .line 760
    :goto_0
    return-void

    .line 710
    :cond_0
    mul-int/lit8 v4, v5, 0x2

    .line 711
    .local v4, "first":I
    add-int/lit8 v7, v4, 0x1

    .line 713
    .local v7, "second":I
    invoke-virtual {p0, v4, v7, v12}, Lcom/droidhen/fortconquer/GameActivity;->saveBoughtRecord(III)V

    .line 716
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    if-eqz v8, :cond_1

    .line 717
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v8, v11}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 720
    :cond_1
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->mGiftCoins:[I

    aget v8, v8, v4

    invoke-static {v8}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 721
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->mGiftCoins:[I

    aget v8, v8, v7

    invoke-static {v8}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 723
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->mGiftPackagePrice:[I

    aget v8, v8, v5

    sget-object v9, Lcom/droidhen/fortconquer/GameActivity;->mGiftCoins:[I

    aget v9, v9, v4

    invoke-static {p0, v8, p1, v9}, Lcom/droidhen/fortconquer/UMengHelper;->onPurcharse(Landroid/content/Context;ILjava/lang/String;I)V

    .line 726
    move v3, v5

    .line 727
    .local v3, "curType":I
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-lt v3, v8, :cond_4

    .line 728
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setGiftPackageType(Landroid/content/Context;I)V

    .line 733
    :goto_1
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->getDragonType(Landroid/content/Context;)I

    move-result v2

    .line 735
    .local v2, "curDragonType":I
    if-ne v3, v10, :cond_5

    .line 736
    invoke-static {p0, v10}, Lcom/droidhen/fortconquer/CCPrefs;->setDragonType(Landroid/content/Context;I)V

    .line 746
    :cond_2
    :goto_2
    sget-object v8, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_3

    .line 747
    invoke-static {v2}, Lcom/droidhen/fortconquer/units/Card;->genGiftPackageDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v6

    .line 748
    .local v6, "newCard":Lcom/droidhen/fortconquer/units/Card;
    iget-object v8, p0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v8, p0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/units/Player;->saveGoodsList()V

    .line 750
    iget-object v8, p0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v8, v11}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCards(I)V

    .line 751
    iget-object v8, p0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/units/Player;->saveCardRecord()V

    .line 754
    .end local v6    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 755
    .local v0, "ca":Ljava/util/Calendar;
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 757
    .local v1, "curDay":I
    invoke-static {p0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->setGiftPackageShowTime(Landroid/content/Context;I)V

    .line 759
    iget-object v8, p0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->closeGiftPackageDlg()V

    goto :goto_0

    .line 730
    .end local v0    # "ca":Ljava/util/Calendar;
    .end local v1    # "curDay":I
    .end local v2    # "curDragonType":I
    :cond_4
    add-int/lit8 v8, v3, 0x1

    invoke-static {p0, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setGiftPackageType(Landroid/content/Context;I)V

    goto :goto_1

    .line 737
    .restart local v2    # "curDragonType":I
    :cond_5
    if-ne v3, v12, :cond_2

    .line 738
    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x4

    if-le v8, v9, :cond_6

    .line 739
    invoke-static {p0, v10}, Lcom/droidhen/fortconquer/CCPrefs;->setDragonType(Landroid/content/Context;I)V

    goto :goto_2

    .line 741
    :cond_6
    add-int/lit8 v8, v2, 0x1

    invoke-static {p0, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setDragonType(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method protected createAds()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/droidhen/fortconquer/GameActivity$7;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/GameActivity$7;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public createPlayer()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lcom/droidhen/fortconquer/units/Player;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, p0, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Player;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lcom/droidhen/fortconquer/stages/StageData;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    .line 425
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->genCards()Z

    .line 427
    return-void
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mCamera:Lorg/anddev/andengine/engine/camera/SmoothCamera;

    return-object v0
.end method

.method public getEngine()Lorg/anddev/andengine/engine/Engine;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    return-object v0
.end method

.method public getRewardFinished(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gamepromote/offerwall/Reward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/Reward;>;"
    const-string v2, "fort"

    const-string v3, "addOfferWall2Reward() entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 878
    return-void

    .line 873
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamepromote/offerwall/Reward;

    .line 874
    .local v0, "aReward":Lcom/gamepromote/offerwall/Reward;
    const-string v2, "fort"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reward:rewardgame:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/Reward;->getRewardGame()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/Reward;->getRewardReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 875
    const-string v4, ", count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/Reward;->getRewardCoin()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/Reward;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v0}, Lcom/gamepromote/offerwall/Reward;->getRewardCoin()I

    move-result v2

    invoke-static {v2}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initLocale()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 414
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/droidhen/fortconquer/AppContext;->setLocale(I)V

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v1, Ljava/util/Locale;

    const-string v2, "in"

    const-string v3, "ID"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/droidhen/fortconquer/AppContext;->setLocale(I)V

    goto :goto_0

    .line 419
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhen/fortconquer/AppContext;->setLocale(I)V

    goto :goto_0
.end method

.method protected initPurchase()V
    .locals 4

    .prologue
    .line 843
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArGXET1Ni3HppKCfu7xDootObV39y/wHekfbL0SzP68UTYV/p6aHKjhc5L9k4DcEztle4XG9h7EeAZ33vTqh9Cy2ENAwRI7vdTW9rTvSMtlsJVpsOGMAbCAOo1/mxd+GWFjnjk6mzOVk0n6XJ/HPXjQc0BR4kGMeHL7Q+o/BNSMo/x0zp6cEGT8gQc3CC2h6LGiPq2DEk6Q9fGSK4tT3au30qlBhmj9HQ+m6aEWKhNWDXXeJnryj5Rjm2GEhRyvklxp1KYlZX5j43RJ9PqroajeLFJV3EJq4lN9S+DWOYFDmBkLIxHbPl+Z50fQIqnk76lbRKF6Th5h5byBJyCWIaEQIDAQAB"

    .line 844
    .local v0, "base64EncodeKey":Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/framework/billing/PurchaseManager;->instance()Lcom/droidhen/framework/billing/PurchaseManager;

    move-result-object v1

    const/16 v2, 0x26e4

    new-instance v3, Lcom/droidhen/fortconquer/GameActivity$11;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/GameActivity$11;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/droidhen/framework/billing/PurchaseManager;->initPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/droidhen/framework/billing/ItemPurchaseListener;)V

    .line 852
    return-void
.end method

.method protected initializeGame()V
    .locals 6

    .prologue
    .line 334
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 335
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 336
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_1

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    .line 337
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 338
    .local v2, "width2Height":F
    :goto_0
    const v3, 0x3fd55555

    div-float v1, v2, v3

    .line 339
    .local v1, "scaleYMakeup":F
    invoke-static {v1}, Lcom/droidhen/fortconquer/AppContext;->setScaleYMakeup(F)V

    .line 341
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->initLocale()V

    .line 342
    invoke-static {}, Lcom/droidhen/fortconquer/layer/GameDlg;->initTexture()V

    .line 343
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->initTexture()V

    .line 344
    invoke-static {}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->initTexture()V

    .line 348
    new-instance v3, Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    sput-object v3, Lcom/droidhen/fortconquer/GameActivity;->mStartMenuScene:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    .line 349
    new-instance v3, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 350
    new-instance v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 351
    new-instance v3, Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/GameScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    sput-object v3, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 352
    new-instance v3, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    .line 353
    new-instance v3, Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/GameActivity;->mUpgradeScene:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    .line 354
    new-instance v3, Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 355
    new-instance v3, Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    sput-object v3, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 356
    new-instance v3, Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    sput-object v3, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 360
    sget-object v3, Lcom/droidhen/fortconquer/kits/ObjectPool;->_pools:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 361
    invoke-static {}, Lcom/droidhen/fortconquer/units/BlankCard;->initPool()V

    .line 362
    invoke-static {}, Lcom/droidhen/fortconquer/units/Mineral;->initPool()V

    .line 363
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->reinit()V

    .line 364
    const/4 v3, 0x0

    sput-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mTexturesAL:Ljava/util/ArrayList;

    .line 368
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->init()V

    .line 371
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->reinit()V

    .line 374
    invoke-static {}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->reinit()V

    .line 377
    new-instance v3, Lcom/droidhen/fortconquer/stages/StageData;

    sget-object v4, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    sget v5, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-direct {v3, v4, v5}, Lcom/droidhen/fortconquer/stages/StageData;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    .line 378
    invoke-direct {p0}, Lcom/droidhen/fortconquer/GameActivity;->initActivity()V

    .line 380
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mStartMenuScene:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->init()V

    .line 382
    sput-object p0, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    .line 383
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->initUnitTextures()V

    .line 386
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->createUnitTextureRegions()V

    .line 387
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->initTextures()V

    .line 388
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->initTextureRegions()V

    .line 392
    invoke-static {p0}, Lcom/droidhen/fortconquer/units/UnitMotion;->init(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 394
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->createPlayer()V

    .line 396
    const-string v3, "bought_coin"

    invoke-static {p0, v3}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 397
    sget v3, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    if-gtz v3, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->createAds()V

    .line 400
    :cond_0
    new-instance v3, Lcom/droidhen/fortconquer/GameActivity$9;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/GameActivity$9;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 410
    return-void

    .line 337
    .end local v1    # "scaleYMakeup":F
    .end local v2    # "width2Height":F
    :cond_1
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float v2, v3, v4

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 857
    invoke-static {}, Lcom/droidhen/framework/billing/PurchaseManager;->instance()Lcom/droidhen/framework/billing/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/droidhen/framework/billing/PurchaseManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    invoke-super {p0, p1, p2, p3}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 860
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0}, Lcom/droidhen/fortconquer/AppContext;->setActivity(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 209
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-direct {p0}, Lcom/droidhen/fortconquer/GameActivity;->loadPrefs()V

    .line 211
    new-instance v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    sput-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    .line 212
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->isSoundEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->setSoundEnabled(Z)V

    .line 213
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->isMusicEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->setMusicEnabled(Z)V

    .line 214
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->setVolumeControlStream(I)V

    .line 215
    sput-object p0, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    .line 217
    invoke-static {}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->getInstance()Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v1

    const-string v2, "WV92cK0Uu158YrTyclq5"

    new-instance v3, Lcom/droidhen/fortconquer/GameActivity$6;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/GameActivity$6;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V

    .line 237
    invoke-static {p0}, Lcom/droidhen/framework/billing/DataProvider;->init(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->initPurchase()V

    .line 239
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/moreexchange/MoreExchange;->register(Landroid/content/Context;)V

    .line 240
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    if-gtz v1, :cond_0

    .line 241
    const/16 v1, 0x4b0

    invoke-static {v1}, Lcom/moreexchange/MoreExchange;->setInterval(I)V

    .line 245
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_FREE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->updateDiscountRate()V

    .line 246
    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->updateDiscountRate()V

    .line 248
    const-string v1, "ca-app-pub-6247246961848012/2343396087"

    invoke-static {p0, v1}, Lcom/game/featured/Interstitial;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 249
    const-string v1, "mm"

    const-string v2, "181322"

    invoke-static {v1, v2}, Lcom/game/featured/Interstitial;->addAd(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {p0}, Lcom/gamepromote/offerwall/OfferWall;->getInstance(Landroid/content/Context;)Lcom/gamepromote/offerwall/OfferWall;

    move-result-object v1

    sput-object v1, Lcom/droidhen/fortconquer/GameActivity;->mOfferWallInstance:Lcom/gamepromote/offerwall/OfferWall;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "userIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mOfferWallInstance:Lcom/gamepromote/offerwall/OfferWall;

    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gamepromote/offerwall/OfferWall;->getAd(Ljava/lang/String;)Lcom/gamepromote/offerwall/AdData;

    .line 257
    invoke-static {p0}, Lcom/droidhen/fortconquer/UMengHelper;->init(Landroid/content/Context;)V

    .line 258
    return-void

    .line 243
    .end local v0    # "userIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/16 v1, 0xe10

    invoke-static {v1}, Lcom/moreexchange/MoreExchange;->setInterval(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 505
    invoke-static {}, Lcom/droidhen/fortconquer/AdController;->destroyAD()V

    .line 506
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 511
    .end local v0    # "i":I
    :cond_0
    const-class v1, Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->cleanStatic(Ljava/lang/Class;)V

    .line 512
    const-class v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->cleanStatic(Ljava/lang/Class;)V

    .line 513
    const-class v1, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->cleanStatic(Ljava/lang/Class;)V

    .line 514
    const-class v1, Lcom/droidhen/fortconquer/units/UnitMotion;

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->cleanStatic(Ljava/lang/Class;)V

    .line 515
    const-class v1, Lcom/droidhen/fortconquer/units/BlankCard;

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->cleanStatic(Ljava/lang/Class;)V

    .line 516
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-direct {p0, v1, v4}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 517
    iget-object v1, p0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-direct {p0, v1, v4}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 518
    invoke-direct {p0, p0, v4}, Lcom/droidhen/fortconquer/GameActivity;->cleanInstance(Ljava/lang/Object;Z)V

    .line 520
    invoke-static {}, Lcom/droidhen/fortconquer/kits/DiscountManager;->clean()V

    .line 521
    sget-object v1, Lcom/droidhen/fortconquer/kits/ObjectPool;->_pools:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 522
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->clear()V

    .line 523
    const-class v1, Lcom/droidhen/fortconquer/AppContext;

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/GameActivity;->cleanStatic(Ljava/lang/Class;)V

    .line 524
    invoke-super {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onDestroy()V

    .line 525
    return-void

    .line 507
    .restart local v0    # "i":I
    :cond_1
    new-array v2, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    const/4 v3, 0x0

    .line 508
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/Texture;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->unloadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 448
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 449
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/GameActivity;->bGameTexturesUnloaded:Z

    if-eqz v1, :cond_1

    move v0, v2

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/GameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/droidhen/fortconquer/GameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v1, p1, p2}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 454
    .local v0, "sceneRet":Z
    if-nez v0, :cond_0

    .line 455
    invoke-static {}, Lcom/game/featured/FeaturedHelper;->getInstance()Lcom/game/featured/FeaturedHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/game/featured/FeaturedHelper;->showFeaturedDialogAtUIThread(I)V

    move v0, v2

    .line 456
    goto :goto_0

    .end local v0    # "sceneRet":Z
    :cond_2
    move v0, v3

    .line 461
    goto :goto_0

    .line 463
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadComplete()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onLoadEngine()Lorg/anddev/andengine/engine/Engine;
    .locals 10

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/GameActivity;->bActivityPaused:Z

    .line 271
    new-instance v0, Lorg/anddev/andengine/engine/camera/SmoothCamera;

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x43f00000    # 480.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, v1

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/engine/camera/SmoothCamera;-><init>(FFFFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mCamera:Lorg/anddev/andengine/engine/camera/SmoothCamera;

    .line 273
    new-instance v8, Lorg/anddev/andengine/engine/options/EngineOptions;

    sget-object v0, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->LANDSCAPE:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    .line 274
    new-instance v1, Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;

    invoke-direct {v1}, Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;-><init>()V

    iget-object v2, p0, Lcom/droidhen/fortconquer/GameActivity;->mCamera:Lorg/anddev/andengine/engine/camera/SmoothCamera;

    .line 273
    invoke-direct {v8, v9, v0, v1, v2}, Lorg/anddev/andengine/engine/options/EngineOptions;-><init>(ZLorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 275
    .local v8, "engineOptions":Lorg/anddev/andengine/engine/options/EngineOptions;
    invoke-virtual {v8, v9}, Lorg/anddev/andengine/engine/options/EngineOptions;->setNeedsSound(Z)Lorg/anddev/andengine/engine/options/EngineOptions;

    .line 276
    invoke-virtual {v8, v9}, Lorg/anddev/andengine/engine/options/EngineOptions;->setNeedsMusic(Z)Lorg/anddev/andengine/engine/options/EngineOptions;

    .line 278
    invoke-virtual {v8}, Lorg/anddev/andengine/engine/options/EngineOptions;->getTouchOptions()Lorg/anddev/andengine/engine/options/TouchOptions;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/anddev/andengine/engine/options/TouchOptions;->setRunOnUpdateThread(Z)Lorg/anddev/andengine/engine/options/TouchOptions;

    .line 279
    invoke-virtual {v8}, Lorg/anddev/andengine/engine/options/EngineOptions;->getRenderOptions()Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->disableExtensionVertexBufferObjects()Lorg/anddev/andengine/engine/options/RenderOptions;

    .line 280
    new-instance v0, Lorg/anddev/andengine/engine/Engine;

    invoke-direct {v0, v8}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    return-object v0
.end method

.method public onLoadResources()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/LogoScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

    .line 286
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->init()V

    .line 287
    return-void
.end method

.method public onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->loadTexture()V

    .line 292
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->animate()V

    .line 293
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity;->mLogoScene:Lcom/droidhen/fortconquer/scenes/LogoScene;

    return-object v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 620
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 622
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/GameActivity;->bActivityPaused:Z

    if-nez v0, :cond_0

    .line 623
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/GameActivity;->bActivityPaused:Z

    .line 624
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/GameActivity;->bGameTexturesUnloaded:Z

    .line 625
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eqz v0, :cond_0

    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    if-lez v0, :cond_0

    .line 626
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->onPause()V

    .line 630
    :cond_0
    invoke-super {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onPause()V

    .line 631
    invoke-static {p0}, Lcom/droidhen/fortconquer/UMengHelper;->onPause(Landroid/content/Context;)V

    .line 632
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 653
    invoke-super {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onResume()V

    .line 654
    invoke-direct {p0}, Lcom/droidhen/fortconquer/GameActivity;->hideSystemUI()V

    .line 656
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/GameActivity;->bActivityPaused:Z

    if-eqz v0, :cond_0

    .line 657
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/GameActivity;->bActivityPaused:Z

    .line 658
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/droidhen/fortconquer/AdController;->restoreADview(Lcom/google/android/gms/ads/AdView;)V

    .line 659
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/GameActivity;->bGameTexturesUnloaded:Z

    .line 662
    :cond_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/UMengHelper;->onResume(Landroid/content/Context;)V

    .line 663
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onStart()V

    .line 264
    invoke-static {}, Lcom/game/featured/FeaturedHelper;->getInstance()Lcom/game/featured/FeaturedHelper;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, p0, v1}, Lcom/game/featured/FeaturedHelper;->retrieveFeaturedInfo(Landroid/app/Activity;I)V

    .line 265
    invoke-static {}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->getInstance()Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->onStart(Landroid/app/Activity;)V

    .line 266
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 614
    invoke-super {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->onStop()V

    .line 615
    invoke-static {}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->getInstance()Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->onStop(Landroid/app/Activity;)V

    .line 616
    return-void
.end method

.method public openMoreGameInterval()V
    .locals 2

    .prologue
    .line 491
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 492
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 493
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->showMoreInterval:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method public openMoreGameScreen()V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 486
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 487
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->showMore:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public openRateScreen()V
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 498
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 500
    invoke-static {p0}, Lcom/moreexchange/util/RateUtil;->Rate(Landroid/app/Activity;)V

    .line 501
    return-void
.end method

.method public requestPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-static {}, Lcom/droidhen/framework/billing/PurchaseManager;->instance()Lcom/droidhen/framework/billing/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/framework/billing/PurchaseManager;->buyItemInMainThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public saveBoughtRecord(III)V
    .locals 2
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "type"    # I

    .prologue
    .line 811
    const-string v0, "bought_coin"

    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 812
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 813
    if-ltz p1, :cond_0

    .line 814
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStoreCoins:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 816
    :cond_0
    if-ltz p2, :cond_1

    .line 817
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStoreCoins:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 827
    :cond_1
    :goto_0
    const-string v0, "bought_coin"

    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    invoke-static {p0, v0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 828
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    if-gtz v0, :cond_4

    .line 829
    const/16 v0, 0x4b0

    invoke-static {v0}, Lcom/moreexchange/MoreExchange;->setInterval(I)V

    .line 833
    :goto_1
    return-void

    .line 819
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 820
    if-ltz p1, :cond_3

    .line 821
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGiftCoins:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    .line 823
    :cond_3
    if-ltz p2, :cond_1

    .line 824
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGiftCoins:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    goto :goto_0

    .line 831
    :cond_4
    const/16 v0, 0xe10

    invoke-static {v0}, Lcom/moreexchange/MoreExchange;->setInterval(I)V

    goto :goto_1
.end method

.method public setADLeftBottom()V
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->setAdLBRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .prologue
    .line 184
    invoke-static {}, Lcom/game/featured/Interstitial;->showInterstitial()V

    .line 185
    return-void
.end method

.method public startInitThread()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/droidhen/fortconquer/GameActivity$8;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/GameActivity$8;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 322
    return-void
.end method

.method public storeBuyCoin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 763
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/GameActivity;->isGiftItem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 764
    invoke-virtual {p0, p1}, Lcom/droidhen/fortconquer/GameActivity;->buyGiftPackageItem(Ljava/lang/String;)V

    .line 802
    :goto_0
    new-instance v3, Lcom/droidhen/fortconquer/GameActivity$10;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/GameActivity$10;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 808
    :cond_0
    return-void

    .line 766
    :cond_1
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/GameActivity;->getIDByItemName(Ljava/lang/String;)I

    move-result v2

    .line 767
    .local v2, "i":I
    if-ltz v2, :cond_0

    .line 769
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/droidhen/fortconquer/GameActivity;->saveBoughtRecord(III)V

    .line 771
    const/4 v1, 0x0

    .line 773
    .local v1, "discountRate":I
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 774
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 779
    :cond_2
    :goto_1
    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v3}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/DiscountManager;->inDiscountTime()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 781
    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v3}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getDiscountRate()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 784
    :cond_3
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mStoreCoins:[I

    aget v3, v3, v2

    sget-object v4, Lcom/droidhen/fortconquer/GameActivity;->mStoreCoins:[I

    aget v4, v4, v2

    mul-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x64

    add-int v0, v3, v4

    .line 785
    .local v0, "coins":I
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mIsCoins:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_5

    .line 786
    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 787
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    if-eqz v3, :cond_4

    .line 788
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3, v5}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 799
    :cond_4
    :goto_2
    sget-object v3, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->PRICE:[I

    aget v3, v3, v2

    invoke-static {p0, v3, p1, v0}, Lcom/droidhen/fortconquer/UMengHelper;->onPurcharse(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    .line 791
    :cond_5
    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 792
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    if-eqz v3, :cond_4

    .line 793
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3, v5}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    goto :goto_2

    .line 776
    .end local v0    # "coins":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
