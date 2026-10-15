.class public Lcom/droidhen/fortconquer/units/Player;
.super Ljava/lang/Object;
.source "Player.java"


# static fields
.field public static final EXP_ARENA_LOSE:I = 0x1

.field public static final EXP_ARENA_WIN:I = 0xf

.field public static final EXP_PER_LV:I = 0x64

.field public static final EXP_STAGE_WIN:I = 0x5

.field public static final GOODS_D_N:I = 0x3

.field public static final GOODS_NUM:I = 0x14

.field public static final GOODS_N_N:I = 0x10

.field public static final GOODS_P_N:I = 0x1

.field public static final INIT_STAMINA:I = 0x1e

.field public static final INIT_STAMINA_COST:I = 0xa

.field public static final MAX_LEVEL:I = 0x1f4

.field public static final STAMINA_PER_CRYSTAL:I = 0xa

.field private static mArenaLost:I

.field private static mArenaLostLasted:I

.field public static mArenaUseCrystalShowed:I

.field private static mArenaWon:I

.field private static mPlayerExp:I

.field private static mPlayerLevel:I

.field private static mPlayerName:Ljava/lang/String;

.field private static mPlayerStamina:I

.field public static sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

.field protected static sCardNum:I

.field protected static sCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation
.end field

.field private static sCoins:I

.field private static sCrystals:I

.field protected static sFort:Lcom/droidhen/fortconquer/units/Fort;

.field protected static sFortLevel:I

.field private static sKillNum:I

.field private static sLastStageCoins:I

.field private static sLastStageCrystals:I

.field public static sLastStageReward:[I

.field protected static sMineralsLevel:I

.field protected static sMineralsPerMin:I

.field protected static sRaceLevels:[I


# instance fields
.field protected mBagNum:I

.field protected mCardSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field protected mResource:F

.field protected mStageData:Lcom/droidhen/fortconquer/stages/StageData;

.field protected mUnitCreated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    .line 71
    const-string v0, "Player"

    sput-object v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 3
    .param p1, "pScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;
    .param p2, "pStageData"    # Lcom/droidhen/fortconquer/stages/StageData;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/droidhen/fortconquer/units/Player;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    .line 89
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    .line 92
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/droidhen/fortconquer/units/Card;

    sput-object v1, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    .line 93
    const/4 v1, 0x7

    new-array v1, v1, [I

    sput-object v1, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    .line 95
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v1, v1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    div-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/units/Player;->setResource(F)V

    .line 97
    const/16 v1, 0x3c

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsPerMin:I

    .line 98
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    if-lt v0, v1, :cond_0

    .line 102
    return-void

    .line 100
    :cond_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsPerMin:I

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/Player;->getNextLvIncrPerMin(I)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsPerMin:I

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addItems()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public static declared-synchronized changeCoins(I)Z
    .locals 4
    .param p0, "coins"    # I

    .prologue
    const v2, 0x98967f

    .line 507
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCoins:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, p0

    if-gez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 516
    :goto_0
    monitor-exit v1

    return v0

    .line 511
    :cond_0
    :try_start_1
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    add-int/2addr v0, p0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    .line 512
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    if-le v0, v2, :cond_1

    .line 513
    const v0, 0x98967f

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    .line 514
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "total_coin"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    invoke-static {v0, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 515
    invoke-static {}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateCurText()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized changeCrystals(I)Z
    .locals 4
    .param p0, "pCrystals"    # I

    .prologue
    const v2, 0x1869f

    .line 607
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, p0

    if-gez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 614
    :goto_0
    monitor-exit v1

    return v0

    .line 609
    :cond_0
    :try_start_1
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    add-int/2addr v0, p0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    .line 610
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    if-le v0, v2, :cond_1

    .line 611
    const v0, 0x1869f

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    .line 612
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "TOTAL_CRYSTAL"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    invoke-static {v0, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 613
    invoke-static {}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateCurText()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private genDragonCardIfLucky(FI)Lcom/droidhen/fortconquer/units/Card;
    .locals 2
    .param p1, "probability"    # F
    .param p2, "quality"    # I

    .prologue
    .line 336
    sget-object v1, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 337
    .local v0, "rand":F
    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 338
    invoke-static {p2}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getArenaCrystalCost()I
    .locals 4

    .prologue
    .line 734
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getStamCost()I

    move-result v0

    sget v2, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    if-le v0, v2, :cond_0

    .line 736
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v0

    sget v2, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mArenaUseCrystalShowed:I

    .line 737
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaUseCrystalShowed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getArenaLost()I
    .locals 1

    .prologue
    .line 723
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaLost:I

    return v0
.end method

.method public static getArenaLostLasted()I
    .locals 1

    .prologue
    .line 765
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaLostLasted:I

    return v0
.end method

.method public static getArenaWon()I
    .locals 1

    .prologue
    .line 714
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaWon:I

    return v0
.end method

.method public static getCoins()I
    .locals 1

    .prologue
    .line 499
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    return v0
.end method

.method public static getCrystals()I
    .locals 1

    .prologue
    .line 599
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    return v0
.end method

.method public static getLastStageCoins()I
    .locals 1

    .prologue
    .line 618
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCoins:I

    return v0
.end method

.method public static getLastStageCrystals()I
    .locals 1

    .prologue
    .line 629
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCrystals:I

    return v0
.end method

.method public static getLastStageKill()I
    .locals 1

    .prologue
    .line 643
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sKillNum:I

    return v0
.end method

.method public static getLvUpReward()I
    .locals 2

    .prologue
    .line 758
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 759
    .local v0, "crystalReward":I
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 760
    const/16 v0, 0x14

    .line 761
    :cond_0
    return v0
.end method

.method public static declared-synchronized getNexLvExp()I
    .locals 3

    .prologue
    .line 693
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v0, v2, 0x64

    .line 694
    .local v0, "nextLvExp":I
    monitor-exit v1

    return v0

    .line 693
    .end local v0    # "nextLvExp":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized getPlayerExp()I
    .locals 2

    .prologue
    .line 679
    const-class v0, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerExp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPlayerFullStamina()I
    .locals 3

    .prologue
    .line 658
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1e

    .line 659
    .local v0, "fullStamina":I
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 660
    const/16 v0, 0x3e8

    .line 661
    :cond_0
    monitor-exit v1

    return v0

    .line 658
    .end local v0    # "fullStamina":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized getPlayerLevel()I
    .locals 2

    .prologue
    .line 647
    const-class v0, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPlayerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 705
    const-class v0, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPlayerStamina()I
    .locals 2

    .prologue
    .line 665
    const-class v0, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStamCost()I
    .locals 3

    .prologue
    .line 698
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0xa

    .line 699
    .local v0, "stamCost":I
    const/16 v2, 0xc8

    if-le v0, v2, :cond_0

    .line 700
    const/16 v0, 0xc8

    .line 701
    :cond_0
    monitor-exit v1

    return v0

    .line 698
    .end local v0    # "stamCost":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method protected static declared-synchronized initArenaPrefs()V
    .locals 9

    .prologue
    .line 120
    const-class v7, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    .line 121
    .local v0, "activity":Lcom/droidhen/fortconquer/GameActivity;
    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->getArenaRecord(Landroid/content/Context;)Z

    move-result v1

    .line 122
    .local v1, "hasArenaRecord":Z
    if-nez v1, :cond_0

    .line 124
    sget v6, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v2, v6, 0x5

    .line 125
    .local v2, "playerExp":I
    const-string v6, "player_exp"

    invoke-static {v0, v6, v2}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 126
    div-int/lit8 v6, v2, 0x64

    add-int/lit8 v3, v6, 0x1

    .line 127
    .local v3, "playerLevel":I
    const-string v6, "player_level"

    invoke-static {v0, v6, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 128
    const-string v6, "player_stamina"

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v8

    invoke-static {v0, v6, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 129
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->setArenaRecord(Landroid/content/Context;Z)V

    .line 130
    const-string v6, "player_name"

    const-string v8, "Player"

    invoke-static {v0, v6, v8}, Lcom/droidhen/fortconquer/CCPrefs;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v6, "arena_won"

    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 132
    const-string v6, "arena_lost"

    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    .local v4, "unixTime":J
    const-string v6, "time_stamp"

    invoke-static {v0, v6, v4, v5}, Lcom/droidhen/fortconquer/CCPrefs;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 136
    .end local v2    # "playerExp":I
    .end local v3    # "playerLevel":I
    .end local v4    # "unixTime":J
    :cond_0
    const-string v6, "player_level"

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I

    .line 137
    const-string v6, "player_stamina"

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    .line 138
    const-string v6, "player_exp"

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->mPlayerExp:I

    .line 139
    const-string v6, "player_name"

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/droidhen/fortconquer/units/Player;->mPlayerName:Ljava/lang/String;

    .line 140
    const-string v6, "arena_won"

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->mArenaWon:I

    .line 141
    const-string v6, "arena_lost"

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->mArenaLost:I

    .line 142
    const/4 v6, 0x0

    sput v6, Lcom/droidhen/fortconquer/units/Player;->mArenaLostLasted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v7

    return-void

    .line 120
    .end local v1    # "hasArenaRecord":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized loadPrefs()V
    .locals 4

    .prologue
    .line 105
    const-class v2, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    .line 106
    .local v0, "activity":Lcom/droidhen/fortconquer/GameActivity;
    const-string v1, "total_coin"

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    .line 107
    const-string v1, "TOTAL_CRYSTAL"

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    .line 108
    const-string v1, "Fort_LEVEL"

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    .line 109
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    if-gtz v1, :cond_0

    .line 110
    const-string v1, "Fort_LEVEL"

    const/4 v3, 0x1

    sput v3, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    invoke-static {v0, v1, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 112
    :cond_0
    const-string v1, "MINERAL_LEVEL"

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    .line 113
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    if-gtz v1, :cond_1

    .line 114
    const-string v1, "MINERAL_LEVEL"

    const/4 v3, 0x1

    sput v3, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    invoke-static {v0, v1, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->initArenaPrefs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v2

    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized payArenaCrystal()V
    .locals 2

    .prologue
    .line 747
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaUseCrystalShowed:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 748
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaUseCrystalShowed:I

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerStamina(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit v1

    return-void

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized payArenaStam()V
    .locals 2

    .prologue
    .line 753
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getStamCost()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerStamina(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    monitor-exit v1

    return-void

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readGoodsList()V
    .locals 4

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "cardString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 333
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v2, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getGood(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Card;->str2card(Ljava/lang/String;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    aput-object v3, v2, v1

    .line 324
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_1
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1
.end method

.method public static declared-synchronized setArenaLostLasted(I)V
    .locals 2
    .param p0, "pArenaLostLasted"    # I

    .prologue
    .line 769
    const-class v0, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/droidhen/fortconquer/units/Player;->mArenaLostLasted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit v0

    return-void

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setLastStageCrystals(I)V
    .locals 2
    .param p0, "pLastStageCrystals"    # I

    .prologue
    .line 633
    const-class v0, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCrystals:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit v0

    return-void

    .line 633
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setPlayerName(Ljava/lang/String;)V
    .locals 3
    .param p0, "pPlayerName"    # Ljava/lang/String;

    .prologue
    .line 709
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "player_name"

    invoke-static {v0, v2, p0}, Lcom/droidhen/fortconquer/CCPrefs;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    sput-object p0, Lcom/droidhen/fortconquer/units/Player;->mPlayerName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit v1

    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sortCards(Ljava/util/List;I)V
    .locals 0
    .param p1, "compareType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-static {p1}, Lcom/droidhen/fortconquer/units/Card;->setCompareType(I)V

    .line 485
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 486
    return-void
.end method

.method public static declared-synchronized updateArenaLost()V
    .locals 4

    .prologue
    .line 727
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaLost:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mArenaLost:I

    .line 728
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "arena_lost"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->mArenaLost:I

    invoke-static {v0, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit v1

    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateArenaWon()V
    .locals 4

    .prologue
    .line 718
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaWon:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mArenaWon:I

    .line 719
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "arena_won"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->mArenaWon:I

    invoke-static {v0, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit v1

    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateLastStageCoins(I)V
    .locals 2
    .param p0, "pLastStageCoins"    # I

    .prologue
    .line 622
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCoins:I

    add-int/2addr v0, p0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCoins:I

    .line 623
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCoins:I

    if-gez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sLastStageCoins:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_0
    monitor-exit v1

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateLastStageKill()V
    .locals 2

    .prologue
    .line 638
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sKillNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sKillNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit v1

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updatePlayerExp(I)V
    .locals 5
    .param p0, "pPlayerExp"    # I

    .prologue
    .line 683
    const-class v2, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getNexLvExp()I

    move-result v0

    .line 685
    .local v0, "nextLvExp":I
    sget v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerExp:I

    add-int/2addr v1, p0

    sput v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerExp:I

    .line 686
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    const-string v3, "player_exp"

    sget v4, Lcom/droidhen/fortconquer/units/Player;->mPlayerExp:I

    invoke-static {v1, v3, v4}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 688
    sget v1, Lcom/droidhen/fortconquer/units/Player;->mPlayerExp:I

    if-lt v1, v0, :cond_0

    .line 689
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_0
    monitor-exit v2

    return-void

    .line 683
    .end local v0    # "nextLvExp":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized updatePlayerLevel()V
    .locals 4

    .prologue
    const/16 v2, 0x1f4

    .line 651
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I

    .line 652
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I

    if-le v0, v2, :cond_0

    .line 653
    const/16 v0, 0x1f4

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I

    .line 654
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "player_level"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->mPlayerLevel:I

    invoke-static {v0, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit v1

    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updatePlayerStamina(I)V
    .locals 4
    .param p0, "pPlayerStamina"    # I

    .prologue
    .line 669
    const-class v1, Lcom/droidhen/fortconquer/units/Player;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    add-int/2addr v0, p0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    .line 670
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    if-gez v0, :cond_1

    .line 671
    const/4 v0, 0x0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    .line 675
    :cond_0
    :goto_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v2, "player_stamina"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    invoke-static {v0, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    monitor-exit v1

    return-void

    .line 672
    :cond_1
    :try_start_1
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 673
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerFullStamina()I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->mPlayerStamina:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public attachUnits()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Player;->addItems()V

    .line 522
    return-void
.end method

.method public genAllRaceCards()V
    .locals 6

    .prologue
    const v5, 0x3f99999a    # 1.2f

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 455
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sput v2, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 456
    return-void

    .line 448
    :cond_0
    new-instance v1, Lcom/droidhen/fortconquer/units/Unit;

    .end local v1    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v2, 0x1

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 449
    .restart local v1    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    iget v2, v1, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    mul-float/2addr v2, v5

    .line 450
    iget v3, v1, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    mul-float/2addr v3, v5

    .line 451
    iget v4, v1, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 449
    invoke-virtual {v1, v2, v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    .line 453
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    new-instance v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v3, v1}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public genCards()Z
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->getRecord(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->genRecordCards()V

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->readChosenCard()V

    .line 217
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v1, "good_recoed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->genGoodsList()V

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->getRecord(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->genInitialCards()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Player;->readGoodsList()V

    goto :goto_1
.end method

.method public genFirstFreeDragon()Lcom/droidhen/fortconquer/units/Card;
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->genFirstDragonCard()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 437
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 439
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->saveCardRecord()V

    .line 440
    return-object v0
.end method

.method public genGoodsList()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 345
    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 346
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    new-instance v3, Lcom/droidhen/fortconquer/units/TroopsCard;

    invoke-direct {v3}, Lcom/droidhen/fortconquer/units/TroopsCard;-><init>()V

    aput-object v3, v2, v4

    .line 347
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    sget-object v3, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    sget-object v4, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    aput-object v6, v3, v8

    aput-object v6, v2, v7

    .line 348
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    const/4 v3, 0x4

    invoke-static {v7}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    aput-object v4, v2, v3

    .line 349
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    const/4 v3, 0x5

    invoke-static {v8}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    aput-object v4, v2, v3

    .line 350
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    const/4 v3, 0x6

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    aput-object v4, v2, v3

    .line 351
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->saveGoodsList()V

    .line 368
    return-void

    .line 352
    :cond_1
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->genRandomCard()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    aput-object v3, v2, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    move v1, v0

    .line 356
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-lt v1, v7, :cond_3

    .line 359
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p0, v3, v8}, Lcom/droidhen/fortconquer/units/Player;->genDragonCardIfLucky(FI)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    aput-object v3, v2, v1

    .line 360
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, v3, v7}, Lcom/droidhen/fortconquer/units/Player;->genDragonCardIfLucky(FI)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    aput-object v3, v2, v0

    .line 361
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    aput-object v3, v2, v1

    .line 362
    :goto_2
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 363
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->genRandomCard()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    aput-object v3, v2, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 357
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_3
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    new-instance v3, Lcom/droidhen/fortconquer/units/TroopsCard;

    invoke-direct {v3}, Lcom/droidhen/fortconquer/units/TroopsCard;-><init>()V

    aput-object v3, v2, v1

    .line 356
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public genInitialCards()V
    .locals 2

    .prologue
    .line 422
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Card;->genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 431
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->saveCardRecord()V

    .line 432
    return-void
.end method

.method public genRecordCards()V
    .locals 4

    .prologue
    .line 312
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v2}, Lcom/droidhen/fortconquer/CCPrefs;->getCardNum(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "cardString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    if-lt v1, v2, :cond_0

    .line 319
    return-void

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v2, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getCard(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 317
    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Card;->str2card(Ljava/lang/String;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBagNumber()I
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v1, "pack_number"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getChosenCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurLvFortHealth()I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->getFortLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0xbb8

    return v0
.end method

.method public getFort()Lcom/droidhen/fortconquer/units/Fort;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sFort:Lcom/droidhen/fortconquer/units/Fort;

    return-object v0
.end method

.method public getFortLevel()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    return v0
.end method

.method public getFortUpgradeMoney()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    invoke-static {v0}, Lcom/droidhen/fortconquer/Calculator;->fortUpgrade(I)I

    move-result v0

    return v0
.end method

.method public getMineralsLevel()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    return v0
.end method

.method public getMineralsPerMin()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sMineralsPerMin:I

    return v0
.end method

.method public getMineralsUpgradeMoney()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    invoke-static {v0}, Lcom/droidhen/fortconquer/Calculator;->mineralsUpgrade(I)I

    move-result v0

    return v0
.end method

.method public getNextLvIncrPerMin(I)I
    .locals 1
    .param p1, "pCurrentLv"    # I

    .prologue
    .line 166
    const/16 v0, 0xa

    .line 167
    .local v0, "nextLvIncrPerMin":I
    return v0
.end method

.method public getResource()F
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F

    return v0
.end method

.method public getUnlockPackMoney()I
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/droidhen/fortconquer/Calculator$ECONOMY;->UNLOCK_PACK:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    aget v0, v0, v1

    return v0
.end method

.method public lost()Z
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sFort:Lcom/droidhen/fortconquer/units/Fort;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdate()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public readChosenCard()V
    .locals 7

    .prologue
    .line 394
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 395
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 407
    return-void

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v4, v4, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CHOSEN_PREFIX"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/CCPrefs;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "cardStr":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 395
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {v2}, Lcom/droidhen/fortconquer/units/Card;->str2card(Ljava/lang/String;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 401
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    sget-object v4, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    sget-object v4, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    sget-object v5, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/Card;

    .line 403
    .local v1, "cardOri":Lcom/droidhen/fortconquer/units/Card;
    iget v4, v1, Lcom/droidhen/fortconquer/units/Card;->id:I

    iput v4, v0, Lcom/droidhen/fortconquer/units/Card;->id:I

    .line 404
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public readFileFromSD()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 278
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "sdStatus":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 281
    const-string v10, "TestFile"

    const-string v11, "SD card is not avaiable/writeable right now."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-object v9

    .line 285
    :cond_0
    :try_start_0
    const-string v5, "/mnt/sdcard/"

    .line 286
    .local v5, "pathName":Ljava/lang/String;
    const-string v3, "infinitewar.txt"

    .line 287
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, "path":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 290
    const-string v10, "TestFile"

    const-string v11, "Path does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "pathName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "TestFile"

    const-string v10, "Error on writeFilToSD."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v9, "readFileFromSD"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 293
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "path":Ljava/io/File;
    .restart local v5    # "pathName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 294
    const-string v10, "TestFile"

    const-string v11, "Fire does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 299
    .local v8, "stream":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    .line 302
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 300
    :cond_3
    int-to-char v9, v0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public recoverRecord()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->readFileFromSD()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "cardString":Ljava/lang/String;
    if-nez v1, :cond_0

    move v6, v7

    .line 273
    :goto_0
    return v6

    .line 232
    :cond_0
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "pieces":[Ljava/lang/String;
    array-length v10, v4

    move v9, v7

    :goto_1
    if-lt v9, v10, :cond_1

    .line 272
    const-string v6, "recoverRecord"

    const-string v7, "succ"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 273
    goto :goto_0

    .line 234
    :cond_1
    aget-object v3, v4, v9

    .line 235
    .local v3, "piece":Ljava/lang/String;
    const-string v6, "card_num="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    const-string v6, "card_num="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 237
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v6, v8}, Lcom/droidhen/fortconquer/CCPrefs;->setRecord(Landroid/content/Context;Z)V

    .line 238
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    sget v11, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    invoke-static {v6, v11}, Lcom/droidhen/fortconquer/CCPrefs;->setCardNum(Landroid/content/Context;I)V

    .line 234
    :cond_2
    :goto_2
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_1

    .line 239
    :cond_3
    const-string v6, "level_passed0="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 240
    const-string v6, "level_passed0="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    .line 241
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v6, v6, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    sget v11, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    iput v11, v6, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    .line 242
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    sget v11, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v11, v11, -0x1

    invoke-static {v6, v7, v11}, Lcom/droidhen/fortconquer/CCPrefs;->setLevelPassed(Landroid/content/Context;II)V

    goto :goto_2

    .line 243
    :cond_4
    const-string v6, "pack_number="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 244
    const-string v6, "pack_number="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/droidhen/fortconquer/units/Player;->mBagNum:I

    .line 245
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v11, "pack_number"

    iget v12, p0, Lcom/droidhen/fortconquer/units/Player;->mBagNum:I

    invoke-static {v6, v11, v12}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 246
    :cond_5
    const-string v6, "total_coin="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 247
    const-string v6, "total_coin="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    .line 248
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v6

    const-string v11, "total_coin"

    sget v12, Lcom/droidhen/fortconquer/units/Player;->sCoins:I

    invoke-static {v6, v11, v12}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 249
    :cond_6
    const-string v6, "TOTAL_CRYSTAL="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 250
    const-string v6, "TOTAL_CRYSTAL="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    .line 251
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v11, "TOTAL_CRYSTAL"

    sget v12, Lcom/droidhen/fortconquer/units/Player;->sCrystals:I

    invoke-static {v6, v11, v12}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 252
    :cond_7
    const-string v6, "Fort_LEVEL="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 253
    const-string v6, "Fort_LEVEL="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    .line 254
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v11, "Fort_LEVEL"

    sget v12, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    invoke-static {v6, v11, v12}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 255
    :cond_8
    const-string v6, "MINERAL_LEVEL="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 256
    const-string v6, "MINERAL_LEVEL="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    .line 257
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v11, "MINERAL_LEVEL"

    sget v12, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    invoke-static {v6, v11, v12}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 259
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget v6, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    if-ge v2, v6, :cond_2

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "card"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/droidhen/fortconquer/units/Card;->str2card(Ljava/lang/String;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 266
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v11, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Card;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v2, v6}, Lcom/droidhen/fortconquer/CCPrefs;->setCard(Landroid/content/Context;ILjava/lang/String;)V

    .line 259
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public removeChosenCard(I)Lcom/droidhen/fortconquer/units/Card;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 468
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getSelectedLink()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getSelectedLink()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Card;->setSelectedLink(Lcom/droidhen/fortconquer/units/Card;)V

    .line 471
    :cond_0
    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/units/Card;->setSelectedLink(Lcom/droidhen/fortconquer/units/Card;)V

    .line 472
    return-object v0
.end method

.method public reset()V
    .locals 9

    .prologue
    const/high16 v8, 0x41c00000    # 24.0f

    const/4 v7, 0x0

    .line 527
    new-instance v3, Lcom/droidhen/fortconquer/units/Fort;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    sget v5, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/droidhen/fortconquer/units/Fort;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;IZ)V

    sput-object v3, Lcom/droidhen/fortconquer/units/Player;->sFort:Lcom/droidhen/fortconquer/units/Fort;

    .line 528
    sget-object v3, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sput v3, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    if-lt v0, v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Player;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v3, v3, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    div-int/lit8 v3, v3, 0x1e

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iput v3, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F

    .line 535
    iget v3, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    .line 536
    iput v8, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F

    .line 538
    :cond_0
    sput v7, Lcom/droidhen/fortconquer/units/Player;->sKillNum:I

    .line 540
    sput v7, Lcom/droidhen/fortconquer/units/Player;->sLastStageCoins:I

    .line 541
    sput v7, Lcom/droidhen/fortconquer/units/Player;->sLastStageCrystals:I

    .line 542
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x7

    if-lt v0, v3, :cond_2

    .line 546
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 547
    .local v1, "selected":I
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_3

    .line 554
    return-void

    .line 531
    .end local v1    # "selected":I
    :cond_1
    sget-object v3, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Card;->setSelectedLink(Lcom/droidhen/fortconquer/units/Card;)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_2
    sget-object v3, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    aput v7, v3, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .restart local v1    # "selected":I
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    .line 550
    .local v2, "unit":Lcom/droidhen/fortconquer/units/Unit;
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->resetCopylist()V

    .line 551
    iget-object v3, v2, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    if-nez v3, :cond_4

    .line 552
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->createModifiers()V

    .line 547
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public declared-synchronized saveCardRecord()V
    .locals 3

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    .line 412
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->setRecord(Landroid/content/Context;Z)V

    .line 413
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    sget v2, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->setCardNum(Landroid/content/Context;I)V

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sCardNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->sCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/droidhen/fortconquer/CCPrefs;->setCard(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public saveChosenCard()V
    .locals 4

    .prologue
    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 391
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CHOSEN_PREFIX"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mCardSelected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/droidhen/fortconquer/CCPrefs;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CHOSEN_PREFIX"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveGoodsList()V
    .locals 4

    .prologue
    .line 371
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v2, "good_recoed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 380
    return-void

    .line 374
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "good_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    sget-object v2, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/droidhen/fortconquer/CCPrefs;->saveGood(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public setResource(F)V
    .locals 1
    .param p1, "pResource"    # F

    .prologue
    .line 580
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 581
    const/4 p1, 0x0

    .line 582
    :cond_0
    const v0, 0x47c34f80    # 99999.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 583
    const p1, 0x47c34f80    # 99999.0f

    .line 584
    :cond_1
    monitor-enter p0

    .line 585
    :try_start_0
    iput p1, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F

    .line 584
    monitor-exit p0

    .line 587
    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized updateResource(F)V
    .locals 1
    .param p1, "pResource"    # F

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Player;->mResource:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 593
    const/4 p1, 0x0

    .line 594
    :cond_0
    const v0, 0x47c34f80    # 99999.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 595
    const p1, 0x47c34f80    # 99999.0f

    .line 596
    :cond_1
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized upgradeBagNumber()V
    .locals 3

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v1, "pack_number"

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public upgradeFort()V
    .locals 3

    .prologue
    const/16 v1, 0x3e7

    .line 188
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    .line 189
    sget v0, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    if-le v0, v1, :cond_0

    .line 190
    sput v1, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v1, "Fort_LEVEL"

    sget v2, Lcom/droidhen/fortconquer/units/Player;->sFortLevel:I

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method public declared-synchronized upgradeMineralsLevel()V
    .locals 4

    .prologue
    const/16 v2, 0x3c

    .line 150
    monitor-enter p0

    :try_start_0
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/units/Player;->getNextLvIncrPerMin(I)I

    move-result v0

    .line 152
    .local v0, "nextLvIncrPerMin":I
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    .line 153
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    if-le v1, v2, :cond_0

    .line 154
    const/16 v1, 0x3c

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Player;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v2, "MINERAL_LEVEL"

    sget v3, Lcom/droidhen/fortconquer/units/Player;->sMineralsLevel:I

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 158
    sget v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsPerMin:I

    add-int/2addr v1, v0

    sput v1, Lcom/droidhen/fortconquer/units/Player;->sMineralsPerMin:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v0    # "nextLvIncrPerMin":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
