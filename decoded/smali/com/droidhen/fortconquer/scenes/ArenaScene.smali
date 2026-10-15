.class public Lcom/droidhen/fortconquer/scenes/ArenaScene;
.super Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;
.source "ArenaScene.java"


# static fields
.field public static bArenaFinished:Z

.field protected static mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

.field protected static mFontGreen:Lorg/anddev/andengine/opengl/font/Font;

.field protected static mFontInfoTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected static mFontPlayerInfo:Lorg/anddev/andengine/opengl/font/Font;

.field protected static mFontWhite:Lorg/anddev/andengine/opengl/font/Font;


# instance fields
.field protected final CARD_POS_LEFT:[[[I

.field protected final CARD_SEAT_LEFT:[[I

.field protected final STEP_BATTLE:I

.field protected final STEP_DATA_RECEIVED:I

.field protected final STEP_LOSE:I

.field protected final STEP_PREPARING:I

.field protected final STEP_WIN:I

.field protected mArenaBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

.field mArenaCompleteRunnable:Ljava/lang/Runnable;

.field mAttachInfoRunnable:Ljava/lang/Runnable;

.field protected mAttackEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mAttackExplodeTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mBattleEyeTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mBattleStartTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mBgTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mCancelButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected mCancelTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mCurrentAttackStep:I

.field protected mCurrentDragonIndex:I

.field protected mCurrentTotalDamage:F

.field mDelayShowRunnable:Ljava/lang/Runnable;

.field protected mEnemyCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected mEnemyHP:F

.field protected mEnemyInfoRight:Ljava/lang/String;

.field protected mEnemyLevel:I

.field public mEnemyName:Ljava/lang/String;

.field protected mEnemyText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field protected mEnemyTotalHP:F

.field protected mErrorCode:I

.field protected mErrorIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mErrorIconTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field mExplodeListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

.field protected mFontError:Lorg/anddev/andengine/opengl/font/Font;

.field protected mFontErrorTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected mFontGreenTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected mFontWhiteTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field public mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

.field protected mLeftAttackIndex:I

.field protected mLeftAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mLeftBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mLeftColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field mLeftDamageDoneRunnable:Ljava/lang/Runnable;

.field protected mLeftDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mLeftSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field private mLoadingCircle:Lcom/droidhen/fortconquer/component/LoadingCircle;

.field private mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field mNetworkDataRunnable:Ljava/lang/Runnable;

.field mNetworkErrorRunnable:Ljava/lang/Runnable;

.field protected mPlayerCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayerHP:F

.field protected mPlayerInfoLeft:Ljava/lang/String;

.field protected mPlayerText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field protected mPlayerTotalHP:F

.field protected mRetryButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field mRetryRunnable:Ljava/lang/Runnable;

.field protected mRetryTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected mRightAttackIndex:I

.field protected mRightAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mRightBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mRightColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field mRightDamageDoneRunnable:Ljava/lang/Runnable;

.field protected mRightDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mRightSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mSScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

.field protected mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mSTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field mShowDlgRunnable:Ljava/lang/Runnable;

.field protected mSpriteBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

.field mUnitSelRunnable:Ljava/lang/Runnable;

.field protected mVScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

.field protected mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mVTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->bArenaFinished:Z

    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 10
    .param p1, "gameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 265
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 58
    iput v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->STEP_PREPARING:I

    .line 59
    iput v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->STEP_DATA_RECEIVED:I

    .line 60
    iput v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->STEP_BATTLE:I

    .line 61
    iput v8, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->STEP_WIN:I

    .line 62
    iput v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->STEP_LOSE:I

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 66
    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    .line 67
    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 68
    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    .line 69
    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    .line 70
    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_POS_LEFT:[[[I

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v8

    new-array v1, v5, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_SEAT_LEFT:[[I

    .line 78
    iput v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    .line 79
    iput v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentDragonIndex:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentTotalDamage:F

    .line 158
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mNetworkDataRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mNetworkErrorRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mUnitSelRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$4;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryRunnable:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$5;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightDamageDoneRunnable:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$6;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftDamageDoneRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$7;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteRunnable:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$8;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$8;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mAttachInfoRunnable:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mShowDlgRunnable:Ljava/lang/Runnable;

    .line 244
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mDelayShowRunnable:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaScene$11;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$11;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mExplodeListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .line 266
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    .line 267
    return-void

    .line 65
    nop

    :array_0
    .array-data 4
        0x37
        0x7a
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x4b
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x4b
        0x128
    .end array-data

    .line 67
    :array_3
    .array-data 4
        0xa2
        0x22
    .end array-data

    :array_4
    .array-data 4
        0x1f
        0x9e
    .end array-data

    :array_5
    .array-data 4
        0xa2
        0x128
    .end array-data

    .line 68
    :array_6
    .array-data 4
        0xc1
        0x9
    .end array-data

    :array_7
    .array-data 4
        0x25
        0x4b
    .end array-data

    :array_8
    .array-data 4
        0x25
        0xfc
    .end array-data

    :array_9
    .array-data 4
        0xc1
        0x133
    .end array-data

    .line 69
    :array_a
    .array-data 4
        0xec
        0xa
    .end array-data

    :array_b
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_c
    .array-data 4
        0x7b
        0x9c
    .end array-data

    :array_d
    .array-data 4
        0xec
        0x12e
    .end array-data

    :array_e
    .array-data 4
        0xb
        0x12e
    .end array-data

    .line 70
    :array_f
    .array-data 4
        0xec
        0xa
    .end array-data

    :array_10
    .array-data 4
        0x7b
        0x28
    .end array-data

    :array_11
    .array-data 4
        0xa
        0x4b
    .end array-data

    :array_12
    .array-data 4
        0xa
        0xfc
    .end array-data

    :array_13
    .array-data 4
        0x7b
        0x118
    .end array-data

    :array_14
    .array-data 4
        0xec
        0x12e
    .end array-data

    .line 74
    :array_15
    .array-data 4
        0x7e
        0x93
    .end array-data

    :array_16
    .array-data 4
        0x5a
        0xac
    .end array-data

    :array_17
    .array-data 4
        0x49
        0xb9
    .end array-data

    :array_18
    .array-data 4
        0x3b
        0xb9
    .end array-data

    :array_19
    .array-data 4
        0x2d
        0xb9
    .end array-data

    :array_1a
    .array-data 4
        0x1f
        0xb9
    .end array-data
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    return v0
.end method

.method protected attachEverything()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSpriteBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 388
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->createSeatModifiers()V

    .line 389
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->createAttackModifiers()V

    .line 390
    return-void
.end method

.method protected attachPlayerCards(ZLjava/util/ArrayList;)F
    .locals 11
    .param p1, "bLeftside"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 694
    .local p2, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    iget v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 695
    :cond_0
    const/4 v8, 0x0

    .line 734
    :cond_1
    :goto_0
    return v8

    .line 696
    :cond_2
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v9

    invoke-virtual {v9}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v9

    if-eq v9, p0, :cond_3

    .line 697
    const/4 v8, 0x0

    goto :goto_0

    .line 699
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 700
    .local v3, "num":I
    const/4 v8, 0x0

    .line 701
    .local v8, "totalHp":F
    const/4 v7, 0x0

    .line 703
    .local v7, "tmpUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 705
    if-eqz p2, :cond_5

    .line 707
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_POS_LEFT:[[[I

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    aget-object v6, v9, v2

    .line 708
    .local v6, "pos":[I
    const/4 v9, 0x0

    aget v4, v6, v9

    .line 709
    .local v4, "pX":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 710
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 711
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 712
    const/high16 v1, 0x431c0000    # 156.0f

    .line 713
    .local v1, "cardWidth":F
    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    if-nez v2, :cond_6

    .line 714
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/Card;->setScale(F)V

    .line 720
    :goto_2
    if-nez p1, :cond_4

    .line 721
    rsub-int v9, v4, 0x320

    int-to-float v9, v9

    sub-float/2addr v9, v1

    float-to-int v4, v9

    .line 722
    :cond_4
    const/4 v9, 0x1

    aget v5, v6, v9

    .line 723
    .local v5, "pY":I
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {v0, v9, v10}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 724
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->showHPBar()V

    .line 725
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/Card;->setHPercentDirect(F)V

    .line 726
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v7

    .line 727
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/droidhen/fortconquer/units/Unit;->setHealth(F)V

    .line 728
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v9

    add-float/2addr v8, v9

    .line 729
    const/4 v9, 0x0

    invoke-virtual {p0, v0, v9}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 730
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/Card;->setVisible(Z)V

    .line 731
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mAttackEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v7, v9}, Lcom/droidhen/fortconquer/units/Unit;->attachAttackEffects(Lorg/anddev/andengine/entity/Entity;)V

    .line 703
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    .end local v1    # "cardWidth":F
    .end local v4    # "pX":I
    .end local v5    # "pY":I
    .end local v6    # "pos":[I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 717
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    .restart local v1    # "cardWidth":F
    .restart local v4    # "pX":I
    .restart local v6    # "pos":[I
    :cond_6
    const v9, 0x3f3851ec    # 0.72f

    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/Card;->setScale(F)V

    .line 718
    const v9, 0x3f3851ec    # 0.72f

    mul-float/2addr v1, v9

    goto :goto_2
.end method

.method public attachPlayersInfo()V
    .locals 11

    .prologue
    const/16 v5, 0x1e

    const/high16 v10, 0x43d70000    # 430.0f

    .line 567
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 573
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lv."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerInfoLeft:Ljava/lang/String;

    .line 576
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x42be0000    # 95.0f

    const/high16 v2, 0x41b00000    # 22.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontPlayerInfo:Lorg/anddev/andengine/opengl/font/Font;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerInfoLeft:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 577
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 579
    iget v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyLevel:I

    .line 580
    .local v6, "enemyLevel":I
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyName:Ljava/lang/String;

    .line 582
    .local v7, "enemyName":Ljava/lang/String;
    const/16 v8, 0xc

    .line 583
    .local v8, "nameEnd":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v8, v0, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 584
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, "shortName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lv."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyInfoRight:Ljava/lang/String;

    .line 586
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    rsub-int v1, v1, 0x28a

    int-to-float v1, v1

    sget-object v3, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontPlayerInfo:Lorg/anddev/andengine/opengl/font/Font;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyInfoRight:Ljava/lang/String;

    move v2, v10

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 587
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x442f0000    # 700.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v10}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 588
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_0
.end method

.method protected bothSideBeAttacked()V
    .locals 14

    .prologue
    .line 916
    iget v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v9

    invoke-virtual {v9}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v9

    if-ne v9, p0, :cond_0

    .line 921
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    iget v10, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    .line 922
    .local v3, "leftCard":Lcom/droidhen/fortconquer/units/Card;
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    iget v10, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/droidhen/fortconquer/units/Card;

    .line 923
    .local v7, "rightCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    .line 924
    .local v1, "leftAttack":F
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v5

    .line 925
    .local v5, "rightAttack":F
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 926
    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v9

    .line 927
    :cond_2
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 928
    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v9

    .line 929
    :cond_3
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v9

    div-float v6, v9, v5

    .line 930
    .local v6, "rightAttackTimes":F
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v9

    div-float v2, v9, v1

    .line 931
    .local v2, "leftAttackTimes":F
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 933
    .local v0, "attackTimes":F
    mul-float v4, v5, v0

    .line 934
    .local v4, "leftDamage":F
    mul-float v8, v1, v0

    .line 936
    .local v8, "rightDamage":F
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v9}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 937
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getCardFrame()Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v9

    iget-object v10, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v9, v10}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 938
    cmpl-float v9, v6, v2

    if-ltz v9, :cond_4

    .line 939
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/droidhen/fortconquer/units/Unit;->setHealth(F)V

    .line 942
    :goto_1
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v9

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v10

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightDamageDoneRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v7, v9, v10, v12, v13}, Lcom/droidhen/fortconquer/units/Card;->setHPercent(FLjava/lang/Runnable;J)V

    .line 943
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v9}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 944
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v7, v9}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 946
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v9}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 947
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getCardFrame()Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v9

    iget-object v10, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v9, v10}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 948
    cmpg-float v9, v6, v2

    if-gez v9, :cond_5

    .line 949
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/droidhen/fortconquer/units/Unit;->setHealth(F)V

    .line 952
    :goto_2
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v9

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v10

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftDamageDoneRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v3, v9, v10, v12, v13}, Lcom/droidhen/fortconquer/units/Card;->setHPercent(FLjava/lang/Runnable;J)V

    .line 953
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v9}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 954
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v3, v9}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 956
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->updateLeftHealthBar()V

    .line 957
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->updateRightHealthBar()V

    .line 959
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 960
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 961
    invoke-virtual {p0, v3, v7}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->playExplode(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;)V

    goto/16 :goto_0

    .line 941
    :cond_4
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v10

    sub-float/2addr v10, v8

    invoke-virtual {v9, v10}, Lcom/droidhen/fortconquer/units/Unit;->setHealth(F)V

    goto/16 :goto_1

    .line 951
    :cond_5
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v10

    sub-float/2addr v10, v4

    invoke-virtual {v9, v10}, Lcom/droidhen/fortconquer/units/Unit;->setHealth(F)V

    goto :goto_2
.end method

.method public checkLeftCardDead()V
    .locals 3

    .prologue
    .line 965
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 966
    .local v0, "leftCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 967
    const/high16 v1, 0x429c0000    # 78.0f

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Card;->setRotationCenter(FF)V

    .line 968
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 969
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 971
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->scrollCards(Z)V

    .line 972
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->checkWinLose()V

    .line 974
    :cond_0
    return-void
.end method

.method public checkRightCardDead()V
    .locals 3

    .prologue
    .line 977
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 978
    .local v0, "rightCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 979
    const/high16 v1, 0x429c0000    # 78.0f

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Card;->setRotationCenter(FF)V

    .line 980
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 981
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 983
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->scrollCards(Z)V

    .line 984
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->checkWinLose()V

    .line 986
    :cond_0
    return-void
.end method

.method public declared-synchronized checkWinLose()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 895
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_1

    .line 912
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 897
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 900
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyHP:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 902
    const/4 v0, 0x3

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    .line 903
    new-instance v0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v1, 0x3f99999a    # 1.2f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mDelayShowRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 906
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerHP:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 908
    const/4 v0, 0x4

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    .line 909
    new-instance v0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    const v1, 0x3f99999a    # 1.2f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mDelayShowRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public clearCardModifiers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1050
    :cond_0
    return-void

    .line 1043
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1044
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1046
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 1047
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->clearEntityModifiers()V

    .line 1048
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/units/Card;->setRotation(F)V

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 2
    .param p1, "pSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    const/4 v1, 0x0

    .line 1054
    if-eqz p1, :cond_0

    .line 1056
    invoke-virtual {p1, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 1057
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->clearEntityModifiers()V

    .line 1058
    instance-of v0, p1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 1059
    check-cast p1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local p1    # "pSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    invoke-virtual {p1, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    .line 1061
    :cond_0
    return-void
.end method

.method protected clearModifiers()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 1030
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 1031
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 1032
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 1033
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 1034
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifier(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 1036
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearCardModifiers(Ljava/util/ArrayList;)V

    .line 1037
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearCardModifiers(Ljava/util/ArrayList;)V

    .line 1038
    return-void
.end method

.method protected createAttackModifiers()V
    .locals 8

    .prologue
    const v1, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 465
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ColorModifier;

    move v3, v2

    move v5, v2

    move v6, v4

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 466
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ColorModifier;

    move v3, v2

    move v5, v2

    move v6, v4

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightColorModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->createOneSideModifiers(Z)V

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->createOneSideModifiers(Z)V

    .line 470
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, -0x3e600000    # -20.0f

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x0

    .line 323
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 324
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v2, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 325
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v2, 0x44520000    # 840.0f

    const/high16 v4, 0x44020000    # 520.0f

    invoke-virtual {v0, v2, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 326
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    .line 328
    new-instance v0, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBgTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v2, v8, v8, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-direct {v0, v2}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSpriteBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    .line 329
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v4, 0x41300000    # 11.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortIconLeftTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 330
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v2, 0x44318000    # 710.0f

    const/high16 v4, 0x43c10000    # 386.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortIconRightTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 331
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFortIconLeftSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 332
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFortIconRightSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 333
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x435e0000    # 222.0f

    const/high16 v4, 0x42fe0000    # 127.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 335
    new-instance v7, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;

    invoke-direct {v7, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    .line 354
    .local v7, "startBattleRunnable":Ljava/lang/Runnable;
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v2, 0x43af4000    # 350.5f

    const/high16 v4, 0x43420000    # 194.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v2, v4, v5, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 355
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43a40000    # 328.0f

    const/high16 v4, 0x433a0000    # 186.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 356
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43ca0000    # 404.0f

    const/high16 v4, 0x43520000    # 210.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 357
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getScaleCenterY()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    .line 358
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getScaleCenterY()F

    move-result v5

    new-instance v6, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;

    invoke-direct {v6, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    .line 371
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x43bc8000    # 377.0f

    const/high16 v2, 0x42f00000    # 120.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorIconTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 372
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x439b0000    # 310.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontError:Lorg/anddev/andengine/opengl/font/Font;

    const v2, 0x7f05004c

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 373
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43c80000    # 400.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v9}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 374
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x43d00000    # 416.0f

    const/high16 v2, 0x43610000    # 225.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 375
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x43830000    # 262.0f

    const/high16 v2, 0x43610000    # 225.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mUnitSelRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 377
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mAttackEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 378
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    .line 379
    new-instance v0, Lcom/droidhen/fortconquer/component/LoadingCircle;

    const/16 v1, 0x168

    const/16 v2, 0xb4

    sget-object v3, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "waiting_point.png"

    invoke-static {v3, v4}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v3

    const/16 v4, 0x28

    const/16 v5, 0x10

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/component/LoadingCircle;-><init>(IILorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingCircle:Lcom/droidhen/fortconquer/component/LoadingCircle;

    .line 380
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingCircle:Lcom/droidhen/fortconquer/component/LoadingCircle;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/LoadingCircle;->animate(F)V

    .line 381
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x439b0000    # 310.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontError:Lorg/anddev/andengine/opengl/font/Font;

    const v2, 0x7f05004b

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 382
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43c80000    # 400.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 383
    return-void
.end method

.method protected createOneSideModifiers(Z)V
    .locals 11
    .param p1, "bLeftSide"    # Z

    .prologue
    .line 473
    new-instance v5, Lcom/droidhen/fortconquer/scenes/ArenaScene$15;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$15;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    .line 485
    .local v5, "leftAttackListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    new-instance v3, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v7}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    .line 486
    .local v3, "delayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v8, 0x3e800000    # 0.25f

    if-eqz p1, :cond_0

    const/16 v7, 0xec

    :goto_0
    int-to-float v7, v7

    const/4 v9, 0x0

    new-instance v10, Lcom/droidhen/fortconquer/scenes/ArenaScene$16;

    invoke-direct {v10, p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene$16;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    invoke-direct {v0, v8, v7, v9, v10}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 502
    .local v0, "attack0":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    if-eqz p1, :cond_1

    .line 503
    new-instance v7, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-direct {v7, v5, v8}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 508
    :goto_1
    new-instance v1, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const v8, 0x3d4ccccd    # 0.05f

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    const/16 v7, -0xa

    :goto_2
    int-to-float v7, v7

    invoke-direct {v1, v8, v9, v7}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 509
    .local v1, "beAttacked1":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const v8, 0x3d4ccccd    # 0.05f

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    const/16 v7, 0xa

    :goto_3
    int-to-float v7, v7

    invoke-direct {v2, v8, v9, v7}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 510
    .local v2, "beAttacked2":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    if-eqz p1, :cond_4

    .line 511
    new-instance v7, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-direct {v7, v8}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 516
    :goto_4
    new-instance v6, Lorg/anddev/andengine/entity/modifier/RotationByModifier;

    const v8, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_5

    const/high16 v7, -0x3bcc0000    # -720.0f

    :goto_5
    invoke-direct {v6, v8, v7}, Lorg/anddev/andengine/entity/modifier/RotationByModifier;-><init>(FF)V

    .line 517
    .local v6, "rotationByModifier":Lorg/anddev/andengine/entity/modifier/RotationByModifier;
    new-instance v4, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const v8, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_6

    const/16 v7, -0x12c

    :goto_6
    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct {v4, v8, v7, v9}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 518
    .local v4, "dismissByModifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    if-eqz p1, :cond_7

    .line 519
    new-instance v7, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-direct {v7, v8}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 523
    :goto_7
    return-void

    .line 486
    .end local v0    # "attack0":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .end local v1    # "beAttacked1":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .end local v2    # "beAttacked2":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .end local v4    # "dismissByModifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .end local v6    # "rotationByModifier":Lorg/anddev/andengine/entity/modifier/RotationByModifier;
    :cond_0
    const/16 v7, -0xec

    goto :goto_0

    .line 505
    .restart local v0    # "attack0":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    :cond_1
    new-instance v7, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-direct {v7, v8}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    goto :goto_1

    .line 508
    :cond_2
    const/16 v7, 0xa

    goto :goto_2

    .line 509
    .restart local v1    # "beAttacked1":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    :cond_3
    const/16 v7, -0xa

    goto :goto_3

    .line 513
    .restart local v2    # "beAttacked2":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    :cond_4
    new-instance v7, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-direct {v7, v8}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightBeAttackedModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    goto :goto_4

    .line 516
    :cond_5
    const/high16 v7, 0x44340000    # 720.0f

    goto :goto_5

    .line 517
    .restart local v6    # "rotationByModifier":Lorg/anddev/andengine/entity/modifier/RotationByModifier;
    :cond_6
    const/16 v7, 0x12c

    goto :goto_6

    .line 521
    .restart local v4    # "dismissByModifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    :cond_7
    new-instance v7, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-direct {v7, v8}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightDeadModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    goto :goto_7
.end method

.method protected createOneSideSeatModifiers(Z[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 25
    .param p1, "bLeftSide"    # Z
    .param p2, "pSeatModifiers"    # [[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 402
    const/high16 v3, 0x3e800000    # 0.25f

    .line 403
    .local v3, "duration":F
    const/4 v10, 0x0

    .local v10, "cardNum":I
    :goto_0
    const/16 v22, 0x6

    move/from16 v0, v22

    if-lt v10, v0, :cond_0

    .line 462
    return-void

    .line 405
    :cond_0
    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v22, v0

    aput-object v22, p2, v10

    .line 406
    const/4 v9, 0x0

    .local v9, "cardIndex":I
    :goto_1
    if-le v9, v10, :cond_1

    .line 403
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 408
    :cond_1
    if-nez v10, :cond_3

    const/high16 v16, 0x3f800000    # 1.0f

    .line 409
    .local v16, "fromScale":F
    :goto_2
    if-nez v9, :cond_4

    const/high16 v21, 0x3f800000    # 1.0f

    .line 410
    .local v21, "toScale":F
    :goto_3
    new-instance v11, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v11, v3, v0, v1}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    .line 412
    .local v11, "cardScaleModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_POS_LEFT:[[[I

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    aget-object v22, v22, v9

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v4, v0

    .line 413
    .local v4, "fromX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_POS_LEFT:[[[I

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    aget-object v22, v22, v9

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v6, v0

    .line 414
    .local v6, "fromY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_SEAT_LEFT:[[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v5, v0

    .line 415
    .local v5, "toX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_SEAT_LEFT:[[I

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v7, v0

    .line 416
    .local v7, "toY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_SEAT_LEFT:[[I

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v14, v0

    .line 417
    .local v14, "finalX":F
    const/high16 v22, 0x431c0000    # 156.0f

    mul-float v15, v22, v16

    .line 418
    .local v15, "fromCardWidth":F
    const/high16 v22, 0x431c0000    # 156.0f

    mul-float v20, v22, v21

    .line 419
    .local v20, "toCardWidth":F
    if-nez p1, :cond_2

    .line 421
    const/high16 v22, 0x44480000    # 800.0f

    sub-float v22, v22, v4

    sub-float v4, v22, v15

    .line 422
    const/high16 v22, 0x44480000    # 800.0f

    sub-float v22, v22, v5

    sub-float v5, v22, v20

    .line 423
    const/high16 v22, 0x44480000    # 800.0f

    sub-float v22, v22, v14

    sub-float v14, v22, v20

    .line 425
    :cond_2
    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    invoke-direct/range {v2 .. v7}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    .line 427
    .local v2, "cardMoveModifier":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    new-instance v19, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    .line 453
    .local v19, "seatListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    new-instance v8, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v11, v22, v23

    const/16 v23, 0x1

    aput-object v2, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 454
    .local v8, "cardGatherModifier":Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
    new-instance v18, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v22, 0x3e800000    # 0.25f

    const v23, 0x3d4ccccd    # 0.05f

    int-to-float v0, v9

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    .line 455
    .local v18, "preDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    new-instance v13, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    invoke-direct {v13, v3}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    .line 456
    .local v13, "delayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    new-instance v17, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v5, v14, v1}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 458
    .local v17, "layModifier":Lorg/anddev/andengine/entity/modifier/MoveXModifier;
    new-instance v12, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    aput-object v8, v22, v23

    const/16 v23, 0x2

    aput-object v13, v22, v23

    const/16 v23, 0x3

    aput-object v17, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 459
    .local v12, "cardSeatModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    aget-object v22, p2, v10

    aput-object v12, v22, v9

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 408
    .end local v2    # "cardMoveModifier":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    .end local v4    # "fromX":F
    .end local v5    # "toX":F
    .end local v6    # "fromY":F
    .end local v7    # "toY":F
    .end local v8    # "cardGatherModifier":Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
    .end local v11    # "cardScaleModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    .end local v12    # "cardSeatModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .end local v13    # "delayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    .end local v14    # "finalX":F
    .end local v15    # "fromCardWidth":F
    .end local v16    # "fromScale":F
    .end local v17    # "layModifier":Lorg/anddev/andengine/entity/modifier/MoveXModifier;
    .end local v18    # "preDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    .end local v19    # "seatListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .end local v20    # "toCardWidth":F
    .end local v21    # "toScale":F
    :cond_3
    const v16, 0x3f3851ec    # 0.72f

    goto/16 :goto_2

    .line 409
    .restart local v16    # "fromScale":F
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_5

    const v21, 0x3f4ccccd    # 0.8f

    goto/16 :goto_3

    :cond_5
    const v21, 0x3f333333    # 0.7f

    goto/16 :goto_3
.end method

.method protected createSeatModifiers()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 394
    new-array v0, v1, [[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 395
    new-array v0, v1, [[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 396
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->createOneSideSeatModifiers(Z[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 397
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->createOneSideSeatModifiers(Z[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 398
    return-void
.end method

.method protected detachNetworkError()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 686
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 687
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 688
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 689
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 690
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    goto :goto_0
.end method

.method protected declared-synchronized getNextCardSeated(Z)V
    .locals 7
    .param p1, "bLeftSide"    # Z

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 755
    :cond_0
    monitor-exit p0

    return-void

    .line 741
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 744
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    .line 745
    .local v3, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 746
    .local v2, "num":I
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 747
    .local v4, "pEntityModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :goto_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 749
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 750
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v4, v5

    aget-object v5, v5, v1

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 751
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v4, v5

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 752
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 753
    sget-object v5, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 747
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 744
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    .end local v1    # "index":I
    .end local v2    # "num":I
    .end local v3    # "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .end local v4    # "pEntityModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    goto :goto_0

    .line 746
    .restart local v2    # "num":I
    .restart local v3    # "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_4
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightSeatModifiers:[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 739
    .end local v2    # "num":I
    .end local v3    # "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized handleNetworkData()V
    .locals 3

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 647
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 624
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    if-nez v1, :cond_0

    .line 627
    const/4 v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    .line 629
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 630
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    .line 632
    .local v0, "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->payArenaStam()V

    .line 633
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 635
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    .line 636
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachPlayerCards(ZLjava/util/ArrayList;)F

    move-result v1

    iput v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyTotalHP:F

    .line 637
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyTotalHP:F

    iput v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyHP:F

    .line 639
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingCircle:Lcom/droidhen/fortconquer/component/LoadingCircle;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/component/LoadingCircle;->detachSelf()Z

    .line 640
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->detachSelf()Z

    .line 641
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 642
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 643
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 644
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 645
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 646
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mAttackEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    .end local v0    # "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleNetworkError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 657
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 661
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 663
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 664
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 665
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorIconSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 666
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorCode:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 667
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v1, 0x7f05004c

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 671
    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 672
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 673
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 674
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 675
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 676
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingCircle:Lcom/droidhen/fortconquer/component/LoadingCircle;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/LoadingCircle;->detachSelf()Z

    .line 677
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/text/ChangeableText;->detachSelf()Z

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorText:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v1, 0x7f05004d

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected initTextureRegions()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v2, "gfx/bg/arena_bg.jpg"

    invoke-static {v0, v1, v2, v3, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBgTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 310
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "light_eye.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 311
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_attack_up.png"

    aput-object v2, v1, v3

    const-string v2, "btn_attack_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 312
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "arena_error.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorIconTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 313
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_retry_up.png"

    aput-object v2, v1, v3

    const-string v2, "btn_retry_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRetryTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 314
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_cancel_up.png"

    aput-object v2, v1, v3

    const-string v2, "btn_cancel_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCancelTR:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 315
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "font_v.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 316
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "font_s.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 318
    return-void
.end method

.method protected initTextures()V
    .locals 12

    .prologue
    const/16 v5, 0x80

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 277
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x400

    const/16 v2, 0x200

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 278
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x100

    const/16 v2, 0x100

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontErrorTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 279
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v5, v5, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontWhiteTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 280
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v5, v5, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontGreenTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 281
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x100

    const/16 v2, 0x100

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontInfoTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 283
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontInfoTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v9}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    .line 284
    const/16 v5, 0x13

    const/16 v8, 0xc

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 283
    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontPlayerInfo:Lorg/anddev/andengine/opengl/font/Font;

    .line 285
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontErrorTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v10, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    .line 286
    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 285
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontError:Lorg/anddev/andengine/opengl/font/Font;

    .line 287
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontWhiteTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v10, v9}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontWhite:Lorg/anddev/andengine/opengl/font/Font;

    .line 288
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontGreenTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v10, v9}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const v5, -0xff0100

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontGreen:Lorg/anddev/andengine/opengl/font/Font;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 290
    sget-object v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontInfoTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontErrorTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontGreenTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontWhiteTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/font/Font;

    .line 291
    sget-object v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontPlayerInfo:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontError:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v4

    sget-object v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontGreen:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v10

    sget-object v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontWhite:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 293
    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "arena.png"

    aput-object v0, v6, v9

    const-string v0, "arena_kr.png"

    aput-object v0, v6, v4

    const-string v0, "arena_yn.png"

    aput-object v0, v6, v10

    .line 294
    .local v6, "cbPic":[Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/String;

    const-string v0, "arena.plist"

    aput-object v0, v7, v9

    const-string v0, "arena_kr.plist"

    aput-object v0, v7, v4

    const-string v0, "arena_yn.plist"

    aput-object v0, v7, v10

    .line 295
    .local v7, "cbPlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/game_common/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    .line 296
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v7, v3

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 295
    invoke-static {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 298
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1078
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1080
    :cond_0
    const/4 v0, 0x0

    .line 1087
    :cond_1
    :goto_0
    return v0

    .line 1082
    :cond_2
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1084
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopBGMusic()V

    .line 1085
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mUnitSelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 5
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 1093
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameStrings:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 1099
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v3

    return v3

    .line 1094
    :cond_0
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgTexture:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mBgNameExtStrings:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v2, v3, v4

    .line 1096
    .local v2, "texture":Lorg/anddev/andengine/opengl/texture/Texture;
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public playExplode(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;)V
    .locals 10
    .param p1, "leftCard"    # Lcom/droidhen/fortconquer/units/Card;
    .param p2, "rightCard"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/high16 v9, 0x437a0000    # 250.0f

    const/high16 v8, 0x43700000    # 240.0f

    const/high16 v7, 0x434c0000    # 204.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 989
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 994
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getExplodeSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 995
    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getExplodeSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "bNeedPlaySond":Z
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_4

    .line 1000
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const/high16 v2, 0x44150000    # 596.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 1001
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    div-float/2addr v3, v6

    sub-float v3, v8, v3

    .line 1000
    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 1002
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-ne v1, v5, :cond_2

    .line 1003
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const/high16 v2, 0x44150000    # 596.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v9}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 1004
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 1005
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    instance-of v1, v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v1, :cond_3

    .line 1006
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const-wide/16 v2, 0x53

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mExplodeListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 1007
    :cond_3
    const/4 v0, 0x1

    .line 1009
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_7

    .line 1011
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setFlippedHorizontal(Z)V

    .line 1012
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    sub-float v2, v7, v2

    .line 1013
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    div-float/2addr v3, v6

    sub-float v3, v8, v3

    .line 1012
    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 1014
    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-ne v1, v5, :cond_5

    .line 1015
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    sub-float v2, v7, v2

    invoke-virtual {v1, v2, v9}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 1016
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 1017
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    instance-of v1, v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v1, :cond_6

    .line 1018
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightExplodeSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const-wide/16 v2, 0x53

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mExplodeListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 1019
    :cond_6
    const/4 v0, 0x1

    .line 1021
    :cond_7
    if-eqz v0, :cond_0

    .line 1023
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    goto/16 :goto_0
.end method

.method public receiveNetworkData(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "enemyLevel"    # I
    .param p2, "enemyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p3, "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyLevel:I

    .line 614
    iput-object p2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyName:Ljava/lang/String;

    .line 615
    iput-object p3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    .line 616
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mNetworkDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public receiveNetworkError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 651
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mErrorCode:I

    .line 652
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mNetworkErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method protected scrollCards(Z)V
    .locals 22
    .param p1, "bLeftSide"    # Z

    .prologue
    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 848
    :cond_0
    return-void

    .line 777
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 780
    sget-object v20, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 781
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 782
    .local v16, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :goto_0
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    .line 783
    .local v10, "curAttackIndex":I
    :goto_1
    const/4 v15, 0x0

    .line 784
    .local v15, "num":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v13, v0, :cond_8

    .line 790
    const v3, 0x3e4ccccd    # 0.2f

    .line 791
    .local v3, "duration":F
    const/4 v14, 0x0

    .local v14, "j":I
    :cond_2
    if-ge v14, v15, :cond_0

    .line 793
    add-int/lit8 v20, v10, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    rem-int v13, v20, v21

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_2

    .line 795
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/droidhen/fortconquer/units/Card;

    .line 796
    .local v11, "curCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v11}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_5

    .line 798
    invoke-virtual {v11}, Lcom/droidhen/fortconquer/units/Card;->getScaleX()F

    move-result v12

    .line 799
    .local v12, "fromScale":F
    if-nez v14, :cond_a

    const/high16 v19, 0x3f800000    # 1.0f

    .line 800
    .local v19, "toScale":F
    :goto_4
    new-instance v8, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    move/from16 v0, v19

    invoke-direct {v8, v3, v12, v0}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    .line 802
    .local v8, "cardScaleModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    invoke-virtual {v11}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v4

    .line 803
    .local v4, "fromX":F
    invoke-virtual {v11}, Lcom/droidhen/fortconquer/units/Card;->getY()F

    move-result v6

    .line 804
    .local v6, "fromY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_SEAT_LEFT:[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v14

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v5, v0

    .line 805
    .local v5, "toX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->CARD_SEAT_LEFT:[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v14

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v7, v0

    .line 806
    .local v7, "toY":F
    const/high16 v20, 0x431c0000    # 156.0f

    mul-float v18, v20, v19

    .line 807
    .local v18, "toCardWidth":F
    if-nez p1, :cond_3

    .line 809
    const/high16 v20, 0x44480000    # 800.0f

    sub-float v20, v20, v5

    sub-float v5, v20, v18

    .line 811
    :cond_3
    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    invoke-direct/range {v2 .. v7}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    .line 813
    .local v2, "cardMoveModifier":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    new-instance v17, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V

    .line 831
    .local v17, "seatListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    new-instance v9, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    const/16 v21, 0x1

    aput-object v2, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 832
    .local v9, "cardSeatModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    invoke-virtual {v11, v9}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 834
    if-nez v14, :cond_4

    .line 836
    if-eqz p1, :cond_c

    .line 837
    move-object/from16 v0, p0

    iput v13, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    .line 841
    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 842
    if-eq v14, v15, :cond_2

    .line 793
    .end local v2    # "cardMoveModifier":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    .end local v4    # "fromX":F
    .end local v5    # "toX":F
    .end local v6    # "fromY":F
    .end local v7    # "toY":F
    .end local v8    # "cardScaleModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    .end local v9    # "cardSeatModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .end local v12    # "fromScale":F
    .end local v17    # "seatListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .end local v18    # "toCardWidth":F
    .end local v19    # "toScale":F
    :cond_5
    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    rem-int v13, v20, v21

    goto/16 :goto_3

    .line 781
    .end local v3    # "duration":F
    .end local v10    # "curAttackIndex":I
    .end local v11    # "curCard":Lcom/droidhen/fortconquer/units/Card;
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v15    # "num":I
    .end local v16    # "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 782
    .restart local v16    # "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    goto/16 :goto_1

    .line 786
    .restart local v10    # "curAttackIndex":I
    .restart local v13    # "i":I
    .restart local v15    # "num":I
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual/range {v20 .. v20}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_9

    .line 787
    add-int/lit8 v15, v15, 0x1

    .line 784
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 799
    .restart local v3    # "duration":F
    .restart local v11    # "curCard":Lcom/droidhen/fortconquer/units/Card;
    .restart local v12    # "fromScale":F
    .restart local v14    # "j":I
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_b

    const v19, 0x3f4ccccd    # 0.8f

    goto/16 :goto_4

    :cond_b
    const v19, 0x3f333333    # 0.7f

    goto/16 :goto_4

    .line 839
    .restart local v2    # "cardMoveModifier":Lorg/anddev/andengine/entity/modifier/MoveModifier;
    .restart local v4    # "fromX":F
    .restart local v5    # "toX":F
    .restart local v6    # "fromY":F
    .restart local v7    # "toY":F
    .restart local v8    # "cardScaleModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    .restart local v9    # "cardSeatModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .restart local v17    # "seatListener":Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .restart local v18    # "toCardWidth":F
    .restart local v19    # "toScale":F
    :cond_c
    move-object/from16 v0, p0

    iput v13, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    goto :goto_5
.end method

.method public showVSandStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mAttachInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 762
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 763
    iput v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    .line 764
    iput v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    .line 765
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 766
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->reset()V

    .line 767
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 768
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 769
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->reset()V

    .line 770
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSScaleAtModifier:Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public startBattle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->swithToScene()V

    .line 528
    iput v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    .line 529
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 530
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChildren()V

    .line 531
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->clear()V

    .line 533
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 534
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 536
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    .line 537
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachPlayerCards(ZLjava/util/ArrayList;)F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerTotalHP:F

    .line 538
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 539
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerTotalHP:F

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerHP:F

    .line 540
    iput v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentDragonIndex:I

    .line 542
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingCircle:Lcom/droidhen/fortconquer/component/LoadingCircle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 543
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLoadingText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 544
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 545
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->getInstance()Lcom/droidhen/fortconquer/kits/ArenaAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->requestBattle()V

    .line 548
    return-void
.end method

.method protected startNextBattleStep()V
    .locals 13

    .prologue
    const v12, 0x44018000    # 518.0f

    const/high16 v11, 0x438d0000    # 282.0f

    const/high16 v10, 0x437a0000    # 250.0f

    const/high16 v9, 0x43700000    # 240.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 852
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 857
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    .line 858
    .local v1, "leftCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 860
    .local v2, "leftSize":I
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    if-ge v5, v2, :cond_3

    .line 861
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 862
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getAttackSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v5

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 863
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v5, :cond_3

    .line 865
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float v6, v11, v6

    .line 866
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    sub-float v7, v9, v7

    .line 865
    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 867
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    iget-object v5, v5, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v5, v5, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 868
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float v6, v11, v6

    invoke-virtual {v5, v6, v10}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 869
    :cond_2
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 870
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 871
    sget-object v5, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v7

    iget-object v7, v7, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v7, v7, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    aget-object v6, v6, v7

    const/4 v7, 0x7

    aget v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 875
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    .line 876
    .local v3, "rightCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 877
    .local v4, "rightSize":I
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    if-ge v5, v4, :cond_0

    .line 878
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 879
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getAttackSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v5

    iput-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 880
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v5, :cond_0

    .line 882
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setFlippedHorizontal(Z)V

    .line 883
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float v6, v12, v6

    .line 884
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    sub-float v7, v9, v7

    .line 883
    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 885
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    iget-object v5, v5, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v5, v5, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_4

    .line 886
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float v6, v12, v6

    invoke-virtual {v5, v6, v10}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 887
    :cond_4
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 888
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackModifiers:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 889
    sget-object v5, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v7

    iget-object v7, v7, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v7, v7, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    aget-object v6, v6, v7

    const/4 v7, 0x7

    aget v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    goto/16 :goto_0
.end method

.method protected updateLeftHealthBar()V
    .locals 4

    .prologue
    .line 592
    const/4 v1, 0x0

    .line 593
    .local v1, "tmpHP":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 598
    int-to-float v2, v1

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerHP:F

    .line 599
    return-void

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 596
    int-to-float v3, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 593
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateRightHealthBar()V
    .locals 4

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, "tmpHP":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 608
    int-to-float v2, v1

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyHP:F

    .line 609
    return-void

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 606
    int-to-float v3, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public uploadFakeData()V
    .locals 6

    .prologue
    .line 551
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    .line 564
    return-void

    .line 553
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x1f4

    if-le v1, v3, :cond_1

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_2
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->getInstance()Lcom/droidhen/fortconquer/kits/ArenaAgent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->requestBattle(I)V

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
