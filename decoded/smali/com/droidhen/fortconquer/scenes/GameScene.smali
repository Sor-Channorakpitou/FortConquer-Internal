.class public Lcom/droidhen/fortconquer/scenes/GameScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "GameScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;,
        Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;
    }
.end annotation


# static fields
.field public static final RADAR_LANE_START_Y:I = 0x8

.field public static mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field public static mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

.field public static mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field public static mStageStartLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field public static mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

.field public static mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

.field public static sAttackSoundCount:I

.field public static sDieSoundCount:[I


# instance fields
.field protected bGrabbed:Z

.field protected bXScrolled:Z

.field protected curX:F

.field protected curY:F

.field private isInAnimated:Z

.field private final mAddPlayerUITask:Ljava/lang/Runnable;

.field public mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

.field public mCamera:Lorg/anddev/andengine/engine/camera/Camera;

.field public mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field protected mCameraX:F

.field protected mCameraY:F

.field protected mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field mDetachFBRunnable:Ljava/lang/Runnable;

.field public mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

.field protected mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mFBCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mFireBallIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field public mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mFortHealthBoxLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mFortHealthBoxRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field public mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field public mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field public mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field public mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

.field protected mGamePauseDlg:Lcom/droidhen/fortconquer/scenes/GamePauseDlg;

.field protected mGrabbedX:F

.field protected mIUpdateHandler:Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;

.field protected mInitCameraX:F

.field protected mLaneHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

.field public mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field public mLanes:[Lcom/droidhen/fortconquer/units/Lane;

.field protected mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field public mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mMineralNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mPauseIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field mPauseRunnable:Ljava/lang/Runnable;

.field protected mRadarHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

.field protected mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mRadarMapSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mRadarViewSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field protected mRscText:[Lcom/droidhen/fortconquer/kits/NumberSprite;

.field mSetupDlgTask:Ljava/lang/Runnable;

.field protected mShakeRange:I

.field mShowStopeGuide:Ljava/lang/Runnable;

.field protected mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field protected mSpriteBg:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStageCompleteDlg:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

.field mStageNumberRunnable:Ljava/lang/Runnable;

.field protected mStageNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mStageSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStageStartModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field protected mStageStartNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mStageStartSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field mStartRunnable:Ljava/lang/Runnable;

.field mStartTrigger:Lcom/droidhen/andplugin/modifier/TriggerCondition;

.field protected mStringBuffer:Ljava/lang/StringBuffer;

.field protected mTotalCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mTotalCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field public mUnitAliveNum:[I

.field mUnitSelRunnable:Ljava/lang/Runnable;

.field protected mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mUserSelIndex:I

.field protected mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

.field sSmogX:[I

.field sSmogY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 5
    .param p1, "pGameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 260
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->sSmogX:[I

    .line 73
    new-array v0, v1, [I

    const/4 v1, 0x1

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xbe

    aput v2, v0, v1

    const/16 v1, 0x122

    aput v1, v0, v3

    const/4 v1, 0x4

    const/16 v2, -0xa

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x12c

    aput v2, v0, v1

    const/16 v1, 0x50

    aput v1, v0, v4

    const/4 v1, 0x7

    const/16 v2, 0xb4

    aput v2, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->sSmogY:[I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    .line 161
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitSelRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseRunnable:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStartTrigger:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    .line 198
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$4;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAddPlayerUITask:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$5;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberRunnable:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$6;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStartRunnable:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$7;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDetachFBRunnable:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$8;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$8;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSetupDlgTask:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$9;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$9;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShowStopeGuide:Ljava/lang/Runnable;

    .line 261
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$10;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$10;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    .line 268
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    .line 269
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 270
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mIUpdateHandler:Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;

    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStringBuffer:Ljava/lang/StringBuffer;

    .line 272
    new-array v0, v3, [I

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->sDieSoundCount:[I

    .line 273
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    .line 275
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->createCameraShakeModifier()V

    .line 276
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->createFortShakeModifier()V

    .line 277
    return-void

    .line 72
    :array_0
    .array-data 4
        -0x14
        -0x32
        -0x32
        -0x14
        0x438
        0x424
        0x438
        0x424
    .end array-data
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->addPlayerUI()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1497
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->showMainUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/GameScene;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->isInAnimated:Z

    return v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/GameScene;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAddPlayerUITask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->isInAnimated:Z

    return-void
.end method

.method private addGameMenuSprites()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43d90000    # 434.0f

    const/high16 v7, 0x432a0000    # 170.0f

    const/4 v6, 0x1

    .line 928
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 929
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 930
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 931
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 932
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 933
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v3, v3, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 934
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v3, v3, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    double-to-int v3, v4

    mul-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x19

    int-to-float v3, v3

    const v4, 0x43d48000    # 425.0f

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 935
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 936
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setIgnoreUpdate(Z)V

    .line 937
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 938
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v3, v3, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 939
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 941
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v3

    invoke-virtual {v2, v3, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 942
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getX()F

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 944
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getResource()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 945
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 946
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 950
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFireBallIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 951
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFireBallIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 952
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 953
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 954
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 955
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 956
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 957
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->getFBCrystal()I

    move-result v0

    .line 958
    .local v0, "fbCrystal":I
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v2, v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 959
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 960
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v3, 0x443c4000    # 753.0f

    invoke-virtual {v2, v3, v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 963
    :goto_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 964
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setIgnoreUpdate(Z)V

    .line 966
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 967
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;->detachChildren()V

    .line 968
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarMapSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 969
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarMapSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 970
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarViewSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 971
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortHealthBoxLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 972
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortHealthBoxLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 973
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortHealthBoxRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 974
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortHealthBoxRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 975
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 976
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 977
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 978
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 980
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 982
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 983
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 985
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 986
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 988
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 989
    return-void

    .line 947
    .end local v0    # "fbCrystal":I
    :cond_0
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 948
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setIgnoreUpdate(Z)V

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 962
    .restart local v0    # "fbCrystal":I
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v3, 0x443b0000    # 748.0f

    invoke-virtual {v2, v3, v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    goto/16 :goto_1
.end method

.method private addPlayerUI()V
    .locals 14

    .prologue
    .line 999
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eq v0, v1, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v11

    .line 1003
    .local v11, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1004
    .local v10, "num":I
    new-array v0, v10, [Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    .line 1005
    const/4 v12, 0x0

    .line 1006
    .local v12, "tmpUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-lt v9, v10, :cond_1

    .line 1040
    move v9, v10

    :goto_2
    const/4 v0, 0x6

    if-lt v9, v0, :cond_4

    .line 1047
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1048
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateRscLv()V

    .line 1051
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Fort;->attachSprites(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 1052
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Fort;->attachSprites(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    goto :goto_0

    .line 1007
    :cond_1
    if-eqz v11, :cond_2

    .line 1008
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    const/high16 v1, 0x436d0000    # 237.0f

    const/high16 v2, 0x42960000    # 75.0f

    int-to-float v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1009
    const v2, 0x43c68000    # 397.0f

    .line 1008
    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 1010
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 1011
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    const v1, 0x3f570a3d    # 0.84f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Card;->setScale(F)V

    .line 1012
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v12

    .line 1013
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {v1, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1015
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v9

    const/high16 v1, 0x436d0000    # 237.0f

    const/high16 v2, 0x42960000    # 75.0f

    int-to-float v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    .line 1016
    const v2, 0x43c88000    # 401.0f

    .line 1015
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 1017
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v9

    const/high16 v1, 0x436d0000    # 237.0f

    const/high16 v2, 0x42960000    # 75.0f

    int-to-float v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    .line 1018
    const v2, 0x43c88000    # 401.0f

    .line 1017
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 1019
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1020
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1021
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1023
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscText:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    aget-object v0, v0, v9

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 1025
    iget-object v13, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    if-ge v9, v10, :cond_3

    invoke-virtual {v12}, Lcom/droidhen/fortconquer/units/Unit;->getCD()F

    move-result v1

    :goto_3
    const v2, 0x3f851eb8    # 1.04f

    const v3, 0x3f851eb8    # 1.04f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    .line 1026
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    new-instance v8, Lcom/droidhen/fortconquer/scenes/GameScene$20;

    invoke-direct {v8, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$20;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 1025
    aput-object v0, v13, v9

    .line 1006
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1025
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    .line 1041
    :cond_4
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 1042
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1040
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1044
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v0, v0, v9

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_4
.end method

.method public static getBaseCrystal(I)I
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 1086
    div-int/lit8 v1, p0, 0x32

    add-int/lit8 v0, v1, 0x1

    .line 1087
    .local v0, "baseCrystals":I
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private getFBCrystal()I
    .locals 2

    .prologue
    .line 992
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x32

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x4

    .line 993
    .local v0, "crystal":I
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 994
    const/16 v0, 0x14

    .line 995
    :cond_0
    return v0
.end method

.method private onSceneScrolled()V
    .locals 7

    .prologue
    const/high16 v6, 0x44480000    # 800.0f

    const/high16 v5, 0x43c80000    # 400.0f

    const/high16 v4, 0x43700000    # 240.0f

    .line 488
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-eq v1, v2, :cond_0

    .line 499
    :goto_0
    return-void

    .line 491
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mInitCameraX:F

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGrabbedX:F

    sub-float/2addr v2, v3

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 492
    .local v0, "newX":F
    cmpg-float v1, v0, v5

    if-gtz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1, v5, v4}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    goto :goto_0

    .line 494
    :cond_1
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1, v6, v4}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1, v0, v4}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    goto :goto_0
.end method

.method private playStartShow()V
    .locals 7

    .prologue
    const/high16 v1, 0x44480000    # 800.0f

    const/high16 v2, 0x43700000    # 240.0f

    .line 848
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-result-object v0

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eq v0, v3, :cond_0

    .line 849
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/engine/camera/Camera;->setHUD(Lorg/anddev/andengine/engine/camera/hud/HUD;)V

    .line 850
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->detachChildren()V

    .line 852
    const/16 v6, 0x12c

    .line 853
    .local v6, "cameraSpeed":I
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/EffectUtil;->startQueue(Lorg/anddev/andengine/entity/IEntity;)V

    .line 854
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/16 v3, 0x7d0

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStartTrigger:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    invoke-static {v0, v3, v4}, Lcom/droidhen/fortconquer/EffectUtil;->blockUntil(Lorg/anddev/andengine/entity/IEntity;ILcom/droidhen/andplugin/modifier/TriggerCondition;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 856
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/droidhen/fortconquer/EffectUtil;->delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 857
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/16 v3, 0xc8

    invoke-static {v0, v3}, Lcom/droidhen/fortconquer/EffectUtil;->blank(Lorg/anddev/andengine/entity/IEntity;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 858
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/EffectUtil;->moveCamera(Lorg/anddev/andengine/entity/IEntity;FFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 859
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/high16 v3, 0x43c80000    # 400.0f

    const v5, 0x443b8000    # 750.0f

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/droidhen/fortconquer/EffectUtil;->moveCamera(Lorg/anddev/andengine/entity/IEntity;FFFFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 860
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStartRunnable:Ljava/lang/Runnable;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/EffectUtil;->delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 861
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->executeQueue()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 862
    return-void
.end method

.method private showMainUI()V
    .locals 6

    .prologue
    .line 1498
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachSelf()Z

    .line 1499
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eq v0, p0, :cond_0

    .line 1535
    :goto_0
    return-void

    .line 1502
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v3, 0x43700000    # 240.0f

    invoke-virtual {v0, v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setScaleCenter(FF)V

    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->isInAnimated:Z

    .line 1504
    new-instance v1, Lcom/droidhen/fortconquer/scenes/GameScene$27;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$27;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    .line 1530
    .local v1, "topMove":Ljava/util/TimerTask;
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1531
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1533
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/engine/camera/hud/HUD;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 1534
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->isLoadedToHardware()Z

    move-result v0

    return v0
.end method

.method public afterSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 0
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 1489
    return-void
.end method

.method protected attachBackground()V
    .locals 4

    .prologue
    .line 866
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 870
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 877
    return-void

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSpriteBg:[Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentWorld:I

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_1
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 872
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 870
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 874
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto :goto_2
.end method

.method protected attachEverything()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v2, 0x5

    .line 417
    new-array v0, v2, [Lcom/droidhen/fortconquer/units/Lane;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    .line 418
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v2, :cond_0

    .line 422
    new-array v0, v9, [Lcom/droidhen/fortconquer/kits/NumberSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscText:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 423
    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_1

    .line 428
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    new-instance v1, Lcom/droidhen/fortconquer/units/Lane;

    invoke-direct {v1, p0, v7}, Lcom/droidhen/fortconquer/units/Lane;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V

    aput-object v1, v0, v7

    .line 418
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscText:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x436d0000    # 237.0f

    const/high16 v2, 0x42960000    # 75.0f

    int-to-float v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x41d00000    # 26.0f

    add-float/2addr v1, v2

    .line 425
    const/high16 v2, 0x43c40000    # 392.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "mine_spend_number.png"

    const/4 v5, 0x3

    .line 426
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    .line 424
    aput-object v0, v8, v7

    .line 423
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method cleanBattleField()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 880
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v1, :cond_0

    .line 881
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    array-length v1, v1

    if-ne v1, v2, :cond_3

    .line 891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_4

    .line 894
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 892
    .restart local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Lane;->reset()V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected clearUserUnit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1439
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->detachUnit()V

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDetachFBRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1446
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1448
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1450
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->hideFBCircle()V

    .line 1451
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/high16 v8, -0x3cb80000    # -200.0f

    const/4 v7, 0x4

    const/high16 v6, -0x3f600000    # -5.0f

    .line 378
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameStrings:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    mul-int/2addr v2, v3

    new-array v2, v2, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSpriteBg:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameStrings:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    mul-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 388
    new-array v2, v10, [Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 389
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v10, :cond_2

    .line 394
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortTextureRegion:[Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    array-length v2, v2

    new-array v2, v2, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 395
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 396
    .local v0, "fortX":[I
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 400
    new-array v2, v7, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 401
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v7, :cond_4

    .line 407
    new-instance v2, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGamePauseDlg:Lcom/droidhen/fortconquer/scenes/GamePauseDlg;

    .line 408
    new-instance v2, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageCompleteDlg:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    .line 409
    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x43ca0000    # 404.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMineRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 410
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const-wide/16 v4, 0xb4

    invoke-virtual {v2, v4, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 411
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->createGameUI()V

    .line 412
    return-void

    .line 380
    .end local v0    # "fortX":[I
    :cond_0
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v2, v2

    rem-int v2, v1, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 381
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSpriteBg:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aget-object v4, v4, v1

    invoke-direct {v3, v6, v6, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v3, v2, v1

    .line 385
    :goto_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSpriteBg:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v1

    invoke-virtual {v2, v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSpriteBg:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v4, 0x447d8000    # 1014.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v6, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v3, v2, v1

    goto :goto_4

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    new-instance v3, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->sSmogX:[I

    aget v4, v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->sSmogY:[I

    aget v5, v5, v1

    int-to-float v5, v5

    .line 391
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mSmogTextureRegion:[Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    aget-object v6, v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 390
    aput-object v3, v2, v1

    .line 392
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v2, v2, v1

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setScale(F)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 397
    .restart local v0    # "fortX":[I
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v3, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget v4, v0, v1

    int-to-float v4, v4

    const/4 v5, 0x0

    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortTextureRegion:[Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    aget-object v6, v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v3, v2, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 402
    :cond_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v4, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 403
    const/4 v2, 0x0

    .line 404
    const/16 v5, 0x29

    .line 403
    invoke-static {v2, v5, v9}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v2

    check-cast v2, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v4, v8, v8, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 402
    aput-object v4, v3, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 395
    nop

    :array_0
    .array-data 4
        -0x5
        -0x5
        0x416
        0x40c
    .end array-data
.end method

.method protected createCameraShakeModifier()V
    .locals 7

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    .line 280
    new-instance v1, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v5}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    .line 281
    .local v1, "delayModifier0":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    const/16 v5, 0x9

    new-array v0, v5, [Lorg/anddev/andengine/entity/modifier/DelayModifier;

    .line 282
    .local v0, "delayModifier":[Lorg/anddev/andengine/entity/modifier/DelayModifier;
    const/4 v5, 0x0

    aput-object v1, v0, v5

    .line 283
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 326
    new-instance v5, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v6, Lcom/droidhen/fortconquer/scenes/GameScene$13;

    invoke-direct {v6, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$13;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    .line 336
    invoke-direct {v5, v6, v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 326
    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 337
    return-void

    .line 284
    :cond_0
    new-instance v2, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    new-instance v5, Lcom/droidhen/fortconquer/scenes/GameScene$11;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$11;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    invoke-direct {v2, v6, v5}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 309
    .local v2, "delayModifier1":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    new-instance v3, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    new-instance v5, Lcom/droidhen/fortconquer/scenes/GameScene$12;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$12;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    invoke-direct {v3, v6, v5}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 323
    .local v3, "delayModifier2":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aput-object v2, v0, v5

    .line 324
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x2

    aput-object v3, v0, v5

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected createFortShakeModifier()V
    .locals 7

    .prologue
    const v6, 0x3d4ccccd    # 0.05f

    const/4 v5, 0x0

    .line 340
    const/4 v2, 0x4

    new-array v0, v2, [Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    .line 341
    .local v0, "moveModifier":[Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    const/4 v2, 0x0

    new-instance v3, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v3, v6, v4, v5}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v3, v0, v2

    .line 342
    const/4 v2, 0x1

    new-instance v3, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-direct {v3, v6, v4, v5}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v3, v0, v2

    .line 343
    const/4 v2, 0x2

    new-instance v3, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v6, v5, v4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v3, v0, v2

    .line 344
    const/4 v2, 0x3

    new-instance v3, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v4, -0x3fc00000    # -3.0f

    invoke-direct {v3, v6, v5, v4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v3, v0, v2

    .line 346
    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 347
    .local v1, "shakeModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    new-instance v2, Lcom/droidhen/fortconquer/scenes/GameScene$14;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v1, v3}, Lcom/droidhen/fortconquer/scenes/GameScene$14;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 354
    return-void
.end method

.method protected createGameUI()V
    .locals 11

    .prologue
    .line 502
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    sput-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 503
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    sput-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 504
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 505
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 506
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 507
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    sput-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 508
    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const/16 v4, 0xc8

    invoke-direct {v2, v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    sput-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    .line 510
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->createMainUIBottom()V

    .line 511
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x40800000    # 4.0f

    const v4, 0x43c48000    # 393.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 512
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x41e80000    # 29.0f

    const v2, 0x43d48000    # 425.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "stage_number.png"

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 513
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v3, 0x0

    const/high16 v4, 0x430c0000    # 140.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mStageStartTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 514
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x430c0000    # 140.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 515
    const-string v4, "stage_start_number.png"

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    .line 514
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 521
    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, -0x3d380000    # -100.0f

    const/high16 v3, 0x43660000    # 230.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    .line 522
    .local v0, "moveModifier1":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    new-instance v9, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const v2, 0x3ff33333    # 1.9f

    invoke-direct {v9, v2}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    .line 523
    .local v9, "delayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    new-instance v1, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x43660000    # 230.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    .line 525
    .local v1, "moveModifier2":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    new-instance v2, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v3, Lcom/droidhen/fortconquer/scenes/GameScene$15;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$15;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v5, 0x0

    .line 536
    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 525
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 538
    new-instance v2, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v3, 0x43060000    # 134.0f

    const/high16 v4, 0x43d00000    # 416.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v6, "mine_number.png"

    const/4 v7, 0x5

    .line 539
    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    .line 538
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 540
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 541
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v10, v2, :cond_0

    .line 544
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x442e4000    # 697.0f

    const v4, 0x43d08000    # 417.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFireballIconTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFireBallIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 546
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x443c0000    # 752.0f

    const/high16 v4, 0x43d90000    # 434.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystalBig:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 547
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x442c8000    # 690.0f

    const/high16 v4, 0x43c10000    # 386.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 548
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 549
    new-instance v2, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v3, 0x44338000    # 718.0f

    const/high16 v4, 0x43c30000    # 390.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v6, "mine_number.png"

    .line 550
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    .line 549
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 551
    new-instance v2, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v3, 0x443b0000    # 748.0f

    const v4, 0x43df8000    # 447.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v6, "crystal_number.png"

    .line 552
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    .line 551
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFBCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 553
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortIconLeftTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 554
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x44340000    # 720.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortIconRightTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 555
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 556
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 557
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x42680000    # 58.0f

    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortHealthBoxLeftTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortHealthBoxLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 558
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x44050000    # 532.0f

    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortHealthBoxRightTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortHealthBoxRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 559
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x40a00000    # 5.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mRadarMapTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarMapSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 560
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x43898000    # 275.0f

    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mRadarViewTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarViewSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 561
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarViewSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x3f828f5c    # 1.02f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 562
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x41000000    # 8.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mRadarHLTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 563
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    .line 564
    new-instance v2, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v4, Lcom/droidhen/fortconquer/scenes/GameScene$16;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$16;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    invoke-direct {v2, v3, v4}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    .line 576
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->createPauseButton()V

    .line 577
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mLanesHLTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 578
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleCenter(FF)V

    .line 579
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleX(F)V

    .line 580
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    .line 581
    new-instance v2, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v4, Lcom/droidhen/fortconquer/scenes/GameScene$17;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$17;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    invoke-direct {v2, v3, v4}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    .line 592
    const/4 v2, 0x6

    new-array v2, v2, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 593
    const/4 v2, 0x6

    new-array v2, v2, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 595
    const/4 v10, 0x0

    :goto_1
    const/4 v2, 0x6

    if-lt v10, v2, :cond_1

    .line 603
    return-void

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCardLockSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v3, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v4, 0x436d0000    # 237.0f

    int-to-float v5, v10

    const/high16 v6, 0x42960000    # 75.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 543
    const v5, 0x43c68000    # 397.0f

    sget-object v6, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v6}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 542
    aput-object v3, v2, v10

    .line 541
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 596
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, -0x3cb80000    # -200.0f

    const/high16 v5, -0x3cb80000    # -200.0f

    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mCoolDownTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aget-object v6, v6, v10

    invoke-direct {v3, v4, v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v3, v2, v10

    .line 597
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, -0x3cb80000    # -200.0f

    const/high16 v5, -0x3cb80000    # -200.0f

    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mCoolDownTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aget-object v6, v6, v10

    invoke-direct {v3, v4, v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v3, v2, v10

    .line 598
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v10

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 599
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v10

    const v3, 0x3f851eb8    # 1.04f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleX(F)V

    .line 600
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v10

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 601
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v10

    const v3, 0x3f851eb8    # 1.04f

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleX(F)V

    .line 595
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method protected createMainUIBottom()V
    .locals 4

    .prologue
    .line 606
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$18;

    const/4 v1, 0x0

    const/high16 v2, 0x43bb0000    # 374.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUIBottomTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/scenes/GameScene$18;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 616
    return-void
.end method

.method protected createPauseButton()V
    .locals 4

    .prologue
    .line 788
    new-instance v0, Lcom/droidhen/fortconquer/scenes/GameScene$19;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x42be0000    # 95.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mPauseIconTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/scenes/GameScene$19;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 806
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 807
    return-void
.end method

.method public findNextFortEnemy(I)I
    .locals 6
    .param p1, "lastLane"    # I

    .prologue
    .line 1544
    const/4 v3, -0x1

    .line 1545
    .local v3, "nextLane":I
    const/4 v0, 0x0

    .line 1546
    .local v0, "fortEnemy":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    if-lt v1, v4, :cond_1

    move v1, v3

    .line 1559
    .end local v1    # "i":I
    :cond_0
    return v1

    .line 1547
    .restart local v1    # "i":I
    :cond_1
    if-ne v1, p1, :cond_3

    .line 1546
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    :cond_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Lane;->getFortEnemy()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    .line 1550
    .local v2, "leftUnit":Lcom/droidhen/fortconquer/units/Unit;
    if-eqz v2, :cond_2

    .line 1552
    iget v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    const/16 v5, 0x50

    if-ge v4, v5, :cond_0

    .line 1554
    if-eqz v0, :cond_4

    iget v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    iget v5, v0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    if-le v4, v5, :cond_2

    .line 1555
    :cond_4
    move-object v0, v2

    .line 1556
    move v3, v1

    goto :goto_1
.end method

.method protected getUnitStoneCost(I)I
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 773
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, v2, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v0

    .line 774
    .local v0, "tmpUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    .line 775
    .local v1, "unitStoneCost":I
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 776
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->getStoneCost()I

    move-result v2

    int-to-float v2, v2

    .line 777
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    aget v3, v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 776
    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 782
    :goto_0
    const/16 v2, 0x3e7

    if-le v1, v2, :cond_0

    .line 783
    const/16 v1, 0x3e7

    .line 784
    :cond_0
    return v1

    .line 779
    :cond_1
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->getStoneCost()I

    move-result v2

    int-to-float v2, v2

    .line 780
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    aget v3, v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 779
    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method

.method protected handleSceneScroll(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    .line 459
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curY:F

    const v1, 0x43c68000    # 397.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 461
    iput-boolean v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bGrabbed:Z

    .line 462
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGrabbedX:F

    .line 463
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mInitCameraX:F

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionMove()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bGrabbed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bXScrolled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGrabbedX:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGrabbedX:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 467
    :cond_2
    iput-boolean v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bXScrolled:Z

    .line 468
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->onSceneScrolled()V

    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bGrabbed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bXScrolled:Z

    if-eqz v0, :cond_4

    .line 472
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->onSceneScrolled()V

    .line 474
    :cond_4
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bGrabbed:Z

    .line 475
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->bXScrolled:Z

    .line 476
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curY:F

    const/high16 v1, 0x43f00000    # 480.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 478
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->reset()V

    .line 479
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 481
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->reset()V

    .line 482
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method protected handleUnitDrag(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V
    .locals 11
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    .line 620
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 622
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    .line 623
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 624
    const/high16 v3, 0x436d0000    # 237.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    const v3, 0x44458000    # 790.0f

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    .line 625
    const v3, 0x43c68000    # 397.0f

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x43f00000    # 480.0f

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v0

    .line 627
    .local v0, "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 770
    .end local v0    # "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_0
    :goto_0
    return-void

    .line 629
    .restart local v0    # "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 651
    :goto_2
    const v3, 0x442dc000    # 695.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    const v3, 0x44458000    # 790.0f

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v3

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->getFBCrystal()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 652
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    if-nez v3, :cond_0

    .line 653
    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x42300000    # 44.0f

    sub-float v4, p2, v4

    sub-float v5, p3, v6

    .line 654
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFireballIconTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v3, v4, v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 653
    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 655
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 656
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->getUnitStoneCost(I)I

    move-result v2

    .line 631
    .local v2, "unitPrice":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 632
    const/high16 v3, 0x436d0000    # 237.0f

    const/high16 v4, 0x42960000    # 75.0f

    int-to-float v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_5

    .line 633
    const/high16 v3, 0x436d0000    # 237.0f

    const/high16 v4, 0x42960000    # 75.0f

    add-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gez v3, :cond_5

    .line 634
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 635
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->getSecondsElapsed()F

    move-result v3

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_5

    .line 636
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getResource()F

    move-result v3

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 637
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-lt v3, v8, :cond_5

    .line 639
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->deepCopy()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v3

    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    .line 640
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_4

    .line 641
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3, p2, p3}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    .line 644
    :goto_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3, v9}, Lcom/droidhen/fortconquer/units/Unit;->setAlive(Z)V

    .line 645
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 646
    iput v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    .line 647
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3, v1}, Lcom/droidhen/fortconquer/units/Unit;->setSelectedLink(I)V

    goto/16 :goto_2

    .line 643
    :cond_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    sub-float v4, p2, v6

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_3

    .line 629
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 659
    .end local v0    # "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .end local v1    # "i":I
    .end local v2    # "unitPrice":I
    :cond_6
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionMove()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 660
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    if-eqz v3, :cond_9

    .line 661
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_8

    .line 662
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3, p2, p3}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    .line 671
    :goto_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    const/4 v3, 0x5

    if-lt v1, v3, :cond_a

    .line 689
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, p3, v3

    if-ltz v3, :cond_7

    const/high16 v3, 0x43c30000    # 390.0f

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    .line 690
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-ne v3, v8, :cond_7

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    :cond_7
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 692
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto/16 :goto_0

    .line 664
    .end local v1    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    sub-float v4, p2, v6

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_4

    .line 665
    :cond_9
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v3, :cond_0

    .line 666
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x42300000    # 44.0f

    sub-float v4, p2, v4

    sub-float v5, p3, v6

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_4

    .line 672
    .restart local v1    # "i":I
    :cond_a
    mul-int/lit8 v3, v1, 0x3a

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_e

    .line 673
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x3a

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_e

    .line 674
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-ne v3, v8, :cond_b

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 675
    :cond_b
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    mul-int/lit8 v4, v1, 0x3a

    add-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    invoke-virtual {v3, v10, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 676
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    .line 677
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3, v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 680
    :cond_c
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x43700000    # 240.0f

    mul-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 681
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    .line 682
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3, v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 683
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v3, :cond_d

    .line 684
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v1

    invoke-virtual {v3, v9}, Lcom/droidhen/fortconquer/units/Lane;->showFBCircle(Z)V

    .line 671
    :cond_d
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 686
    :cond_e
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Lcom/droidhen/fortconquer/units/Lane;->showFBCircle(Z)V

    goto :goto_6

    .line 694
    .end local v1    # "i":I
    :cond_f
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    if-eqz v3, :cond_13

    .line 696
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_12

    .line 697
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3, p2, p3}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    .line 706
    :goto_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    const/4 v3, 0x5

    if-lt v1, v3, :cond_14

    .line 762
    :goto_9
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 763
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-ne v3, v8, :cond_10

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 764
    :cond_10
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->reset()V

    .line 765
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 767
    :cond_11
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->reset()V

    .line 768
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLModifier:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto/16 :goto_0

    .line 699
    .end local v1    # "i":I
    :cond_12
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    sub-float v4, p2, v6

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_7

    .line 700
    :cond_13
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v3, :cond_0

    .line 701
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x42300000    # 44.0f

    sub-float v4, p2, v4

    sub-float v5, p3, v6

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_7

    .line 707
    .restart local v1    # "i":I
    :cond_14
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    if-eqz v3, :cond_1d

    .line 708
    if-nez v1, :cond_1a

    const/16 v3, 0x3c

    :goto_a
    mul-int/lit8 v4, v1, 0x3a

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_19

    .line 709
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x3a

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_19

    .line 710
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-ne v3, v8, :cond_15

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 711
    :cond_15
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    mul-int/lit8 v4, v1, 0x3a

    add-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    invoke-virtual {v3, v10, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 717
    :cond_16
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x43700000    # 240.0f

    mul-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 719
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v4, v4, v1

    invoke-virtual {v3, v7, v1, v4}, Lcom/droidhen/fortconquer/units/Unit;->setPos(IILcom/droidhen/fortconquer/units/Lane;)V

    .line 720
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3, v4, v7}, Lcom/droidhen/fortconquer/units/Lane;->addUnit(Lcom/droidhen/fortconquer/units/Unit;I)Z

    .line 722
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->detachFromScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 723
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_1c

    .line 724
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 728
    :goto_b
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->updateRadarPosition()V

    .line 729
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->flashRadarPoint()V

    .line 730
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getSelectedLink()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/scenes/GameScene;->getUnitStoneCost(I)I

    move-result v2

    .line 731
    .restart local v2    # "unitPrice":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Player;->updateResource(F)V

    .line 732
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getSelectedLink()I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 733
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-ne v3, v8, :cond_17

    .line 734
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 736
    :cond_17
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateCDBoxes()V

    .line 737
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateTotalMineral()V

    .line 739
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    array-length v4, v4

    if-ge v3, v4, :cond_18

    .line 740
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->reset()V

    .line 741
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 742
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCoolDownSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCDScaleAtModifier:[Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    iget v5, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 744
    :cond_18
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    .line 706
    .end local v2    # "unitPrice":I
    :cond_19
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 708
    :cond_1a
    const/16 v3, 0x64

    goto/16 :goto_a

    .line 713
    :cond_1b
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3, p2, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_9

    .line 726
    :cond_1c
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    goto/16 :goto_b

    .line 746
    :cond_1d
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v3, :cond_19

    .line 747
    mul-int/lit8 v3, v1, 0x3a

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_19

    .line 748
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x3a

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_19

    .line 749
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    mul-int/lit8 v4, v1, 0x3a

    add-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    invoke-virtual {v3, v10, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 750
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x43700000    # 240.0f

    mul-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 752
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 753
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Lane;->startFireball()V

    .line 754
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->getFBCrystal()I

    move-result v3

    neg-int v3, v3

    invoke-static {v3}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 755
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateTotalCrystalText()V

    .line 757
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 758
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Lcom/droidhen/fortconquer/units/Lane;->showFBCircle(Z)V

    goto :goto_c
.end method

.method hideFBCircle()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 921
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    .line 922
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 925
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 923
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Lane;->showFBCircle(Z)V

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected hideMainUI()V
    .locals 2

    .prologue
    .line 1492
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachSelf()Z

    .line 1493
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->clearTouchAreas()V

    .line 1494
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 1495
    return-void
.end method

.method initBattlefield(Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 5
    .param p1, "stageData"    # Lcom/droidhen/fortconquer/stages/StageData;

    .prologue
    const/4 v4, 0x5

    .line 897
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 898
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 899
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 900
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    array-length v2, v2

    if-ne v2, v4, :cond_0

    .line 901
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 914
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 915
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 916
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 917
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 918
    return-void

    .line 902
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Lane;->reset()V

    .line 903
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/units/Lane;->showFBCircle(Z)V

    .line 904
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 908
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 909
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 911
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 912
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/Lane;->mFireballCircleSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected initTextureRegions()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method protected initTextures()V
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mTexturesAL:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 367
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchArea"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    .param p3, "pTouchAreaLocalX"    # F
    .param p4, "pTouchAreaLocalY"    # F

    .prologue
    .line 1540
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1069
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    :cond_0
    const/4 v0, 0x0

    .line 1082
    :cond_1
    :goto_0
    return v0

    .line 1072
    :cond_2
    sget v1, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-nez v1, :cond_1

    .line 1074
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v1, v2, :cond_3

    .line 1075
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 1076
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->clearTouchAreas()V

    .line 1077
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1080
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitSelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_1

    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    if-lez v0, :cond_1

    .line 1407
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_0

    .line 1408
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 1409
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 1412
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setIgnoreUpdate(Z)V

    .line 1414
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1417
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGamePauseDlg:Lcom/droidhen/fortconquer/scenes/GamePauseDlg;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 1422
    :goto_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 1423
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-eq v0, v1, :cond_0

    .line 1424
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    if-lez v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/GameScene$26;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$26;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1436
    :cond_0
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    goto :goto_0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 443
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 444
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 446
    :cond_0
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    .line 447
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curY:F

    .line 450
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-eq v0, v1, :cond_1

    .line 451
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    .line 453
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->curY:F

    invoke-virtual {p0, p2, v0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->handleUnitDrag(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V

    .line 454
    invoke-virtual {p0, p2}, Lcom/droidhen/fortconquer/scenes/GameScene;->handleSceneScroll(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 455
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 7
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 1467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameStrings:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 1474
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 1478
    invoke-static {p0}, Lcom/droidhen/fortconquer/component/Guide;->shouldLoadTexture(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1479
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_0
    :goto_2
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v3

    return v3

    .line 1468
    :cond_1
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_3
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1469
    :cond_2
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgTexture:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v2, v3, v4

    .line 1470
    .local v2, "texture":Lorg/anddev/andengine/opengl/texture/Texture;
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1475
    .end local v1    # "k":I
    .end local v2    # "texture":Lorg/anddev/andengine/opengl/texture/Texture;
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgTexture:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v5, v5

    .line 1476
    sget v6, Lcom/droidhen/fortconquer/GameActivity;->sCurrentWorld:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v0

    aget-object v4, v4, v5

    .line 1475
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1481
    :cond_4
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 3
    .param p1, "to"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->hideMainUI()V

    .line 1455
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->detachChildren()V

    .line 1456
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    check-cast v0, Lorg/anddev/andengine/engine/camera/SmoothCamera;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->setCenterDirect(FF)V

    .line 1457
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mIUpdateHandler:Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z

    .line 1458
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 1459
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/stages/StageData;->stopTimer()V

    .line 1460
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1461
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->reloadStep()V

    .line 1463
    :cond_0
    return-void
.end method

.method protected playDialog(Z)V
    .locals 5
    .param p1, "playerWin"    # Z

    .prologue
    const/16 v4, 0x1f4

    const/4 v1, 0x5

    .line 1279
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 1280
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->jump(I)V

    .line 1281
    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 1282
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 1283
    if-eqz p1, :cond_0

    .line 1284
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/EffectUtil;->startQueue(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1288
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz p1, :cond_1

    const/16 v0, 0x320

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x43700000    # 240.0f

    const v3, 0x44228000    # 650.0f

    invoke-static {v1, v0, v2, v3}, Lcom/droidhen/fortconquer/EffectUtil;->moveCamera(Lorg/anddev/andengine/entity/IEntity;FFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1289
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/GameScene$22;

    invoke-direct {v1, p0, p1}, Lcom/droidhen/fortconquer/scenes/GameScene$22;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V

    invoke-static {v0, v1, v4}, Lcom/droidhen/fortconquer/EffectUtil;->delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1297
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/GameScene$23;

    invoke-direct {v1, p0, p1}, Lcom/droidhen/fortconquer/scenes/GameScene$23;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V

    .line 1302
    const/16 v2, 0x4b0

    .line 1297
    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/EffectUtil;->delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1303
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/GameScene$24;

    invoke-direct {v1, p0, p1}, Lcom/droidhen/fortconquer/scenes/GameScene$24;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V

    .line 1310
    const/16 v2, 0x3e8

    .line 1303
    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/EffectUtil;->delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1311
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSetupDlgTask:Ljava/lang/Runnable;

    invoke-static {v0, v1, v4}, Lcom/droidhen/fortconquer/EffectUtil;->delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1312
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->executeQueue()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1313
    return-void

    .line 1288
    :cond_1
    const/16 v0, 0x190

    goto :goto_0
.end method

.method public playDragGuide(I)V
    .locals 3
    .param p1, "laneIndex"    # I

    .prologue
    const/4 v2, 0x3

    .line 1252
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    const-class v1, Lcom/droidhen/fortconquer/component/Guide;

    monitor-enter v1

    .line 1256
    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    new-instance v2, Lcom/droidhen/fortconquer/scenes/GameScene$21;

    invoke-direct {v2, p0, p1}, Lcom/droidhen/fortconquer/scenes/GameScene$21;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1255
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected playFortExplode(Z)V
    .locals 14
    .param p1, "bLeftside"    # Z

    .prologue
    const/4 v13, 0x5

    const/4 v7, 0x4

    const/4 v12, -0x5

    const/4 v6, 0x0

    .line 1317
    if-eqz p1, :cond_0

    move v2, v6

    .line 1318
    .local v2, "offset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "rand1":I
    const/4 v4, 0x0

    .line 1319
    .local v4, "rand2":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v7, :cond_1

    .line 1347
    return-void

    .end local v1    # "i":I
    .end local v2    # "offset":I
    .end local v3    # "rand1":I
    .end local v4    # "rand2":I
    :cond_0
    move v2, v7

    .line 1317
    goto :goto_0

    .line 1320
    .restart local v1    # "i":I
    .restart local v2    # "offset":I
    .restart local v3    # "rand1":I
    .restart local v4    # "rand2":I
    :cond_1
    invoke-static {v12, v13}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v3

    .line 1321
    invoke-static {v12, v13}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v4

    .line 1322
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->sSmogX:[I

    add-int v10, v2, v1

    aget v9, v9, v10

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->sSmogY:[I

    add-int v11, v2, v1

    aget v10, v10, v11

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 1323
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 1324
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFrontBgLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1326
    const/16 v8, 0x3e8

    invoke-static {v6, v8}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v5

    .line 1327
    .local v5, "rand3":I
    new-instance v0, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    int-to-float v8, v5

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    .line 1328
    new-instance v9, Lcom/droidhen/fortconquer/scenes/GameScene$25;

    invoke-direct {v9, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$25;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    .line 1327
    invoke-direct {v0, v8, v9}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 1345
    .local v0, "delayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v8, v8, v1

    invoke-virtual {v8, v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected registerHandlers()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mIUpdateHandler:Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z

    .line 359
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mIUpdateHandler:Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    .line 360
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 361
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    .line 362
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public startNextStage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 810
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static {v1}, Lcom/droidhen/fortconquer/UMengHelper;->startLevel(I)V

    .line 811
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/stages/StageData;->stopTimer()V

    .line 812
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 814
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->swithToScene()V

    .line 815
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 818
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 820
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->detachChildren()V

    .line 821
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearTouchAreas()V

    .line 823
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->attachBackground()V

    .line 824
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->hideMainUI()V

    .line 826
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->initBattlefield(Lcom/droidhen/fortconquer/stages/StageData;)V

    .line 828
    new-instance v1, Lcom/droidhen/fortconquer/units/Enemy;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, v2, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-direct {v1, p0, v2}, Lcom/droidhen/fortconquer/units/Enemy;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lcom/droidhen/fortconquer/stages/StageData;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    .line 829
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->reset()V

    .line 831
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->addGameMenuSprites()V

    .line 832
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->registerHandlers()V

    .line 837
    sput v3, Lcom/droidhen/fortconquer/GameActivity;->mCurrentScore:I

    .line 838
    iput-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelUnit:Lcom/droidhen/fortconquer/units/Unit;

    .line 839
    iput-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 841
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 844
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->playStartShow()V

    .line 845
    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    aput v3, v1, v0

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateCDBoxes()V
    .locals 6

    .prologue
    .line 1389
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v4, v4, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v2

    .line 1390
    .local v2, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1391
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1403
    return-void

    .line 1392
    :cond_0
    if-eqz v2, :cond_2

    .line 1393
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->getUnitStoneCost(I)I

    move-result v3

    .line 1394
    .local v3, "unitPrice":I
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscText:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 1396
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v4, v4, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Player;->getResource()F

    move-result v4

    int-to-float v5, v3

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 1397
    :cond_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1391
    .end local v3    # "unitPrice":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1399
    .restart local v3    # "unitPrice":I
    :cond_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mDeactiveSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto :goto_1
.end method

.method public updateGameScene(I)V
    .locals 5
    .param p1, "pTotalTimeSlot"    # I

    .prologue
    const/4 v4, 0x0

    .line 1350
    div-int/lit8 v0, p1, 0xa

    .line 1353
    .local v0, "pTotalTime":I
    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1355
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStringBuffer:Ljava/lang/StringBuffer;

    div-int/lit8 v2, v0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1356
    rem-int/lit8 v1, v0, 0x3c

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    .line 1357
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStringBuffer:Ljava/lang/StringBuffer;

    rem-int/lit8 v2, v0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1361
    :goto_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1363
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 1366
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateTotalCrystalText()V

    .line 1368
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, v2, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getMineralsPerMin()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44160000    # 600.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Player;->updateResource(F)V

    .line 1369
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateCDBoxes()V

    .line 1370
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateTotalMineral()V

    .line 1372
    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_1

    .line 1373
    sput v4, Lcom/droidhen/fortconquer/scenes/GameScene;->sAttackSoundCount:I

    .line 1374
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->sDieSoundCount:[I

    aput v4, v1, v4

    .line 1375
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->sDieSoundCount:[I

    const/4 v2, 0x1

    aput v4, v1, v2

    .line 1376
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->sDieSoundCount:[I

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 1378
    :cond_1
    return-void

    .line 1359
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStringBuffer:Ljava/lang/StringBuffer;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    rem-int/lit8 v2, v0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected updateRscLv()V
    .locals 7

    .prologue
    const/high16 v1, 0x43240000    # 164.0f

    const/high16 v2, 0x43c70000    # 398.0f

    .line 1056
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFontRsc:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, "Lv.1"

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050074

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v6, v6, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 1065
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x432e0000    # 174.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    goto :goto_0
.end method

.method public updateTotalCrystalText()V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mTotalCrystalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 1386
    return-void
.end method

.method protected updateTotalMineral()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getResource()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 1382
    return-void
.end method
