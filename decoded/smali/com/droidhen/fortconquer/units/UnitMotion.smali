.class public abstract Lcom/droidhen/fortconquer/units/UnitMotion;
.super Ljava/lang/Object;
.source "UnitMotion.java"


# static fields
.field public static final ATTACK_FRAME_START:I = 0x18

.field public static final ATTACK_RATE_LEN_1:[F

.field public static final ATTACK_RATE_LEN_2:[F

.field public static final CELE_FRAME_START:[I

.field public static final FRAME_RATE:F = 24.0f

.field protected static mAssetManager:Landroid/content/res/AssetManager;

.field protected static final sBipedChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sBipedChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sBipedHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sBipedHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sBipedRArmCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sBipedRArmPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sDragonChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sDragonChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sDragonHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sDragonHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sQuadChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sQuadChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sQuadHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sQuadHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

.field protected static final sStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    const/16 v1, 0x8

    .line 35
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 36
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 37
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 38
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 39
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 40
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 42
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 43
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 44
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 45
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 47
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 48
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 49
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 50
    new-array v0, v1, [Lcom/droidhen/fortconquer/units/Vector2;

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 53
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    .line 54
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_2:[F

    .line 56
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    .line 58
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x41e80000    # 29.0f
        0x41a80000    # 21.0f
        0x42100000    # 36.0f
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x42240000    # 41.0f
        0x41a80000    # 21.0f
        0x42100000    # 36.0f
    .end array-data

    .line 56
    :array_2
    .array-data 4
        0x60
        0x44
        0x3d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized getMotionInfo(III)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .locals 7
    .param p0, "camp"    # I
    .param p1, "pRace"    # I
    .param p2, "pPartType"    # I

    .prologue
    const/4 v6, 0x2

    .line 534
    const-class v4, Lcom/droidhen/fortconquer/units/UnitMotion;

    monitor-enter v4

    const/4 v0, 0x0

    .line 535
    .local v0, "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    :try_start_0
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampRaceNames:[[Ljava/lang/String;

    aget-object v2, v3, p0

    .line 536
    .local v2, "raceNames":[Ljava/lang/String;
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampPartNames:[[Ljava/lang/String;

    aget-object v1, v3, p0

    .line 538
    .local v1, "partNames":[Ljava/lang/String;
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 539
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    aget-object v5, v2, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    aget-object v5, v1, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    const-string v5, ".xml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const/16 v3, 0xf

    if-ne p2, v3, :cond_2

    .line 546
    if-ne p0, v6, :cond_1

    .line 547
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 576
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v0

    .line 548
    :cond_1
    if-nez p0, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 549
    :try_start_1
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    const-string v5, "Gorilla_attack_1.xml"

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    .line 551
    goto :goto_0

    .line 552
    :cond_2
    const/16 v3, 0xe

    if-eq p2, v3, :cond_0

    .line 555
    const/16 v3, 0x10

    if-ne p2, v3, :cond_3

    .line 557
    if-eq p0, v6, :cond_0

    invoke-static {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    .line 559
    goto :goto_0

    .line 560
    :cond_3
    const/16 v3, 0x11

    if-ne p2, v3, :cond_4

    .line 562
    if-eq p0, v6, :cond_0

    invoke-static {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    .line 564
    goto :goto_0

    .line 565
    :cond_4
    const/16 v3, 0x12

    if-ne p2, v3, :cond_5

    .line 566
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    const-string v5, "Blood.xml"

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_5
    const/16 v3, 0x13

    if-ne p2, v3, :cond_6

    .line 568
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    const-string v5, "ghost.xml"

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_6
    const/16 v3, 0x14

    if-ne p2, v3, :cond_7

    .line 570
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    const-string v5, "die_effect.xml"

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_7
    const/16 v3, 0x15

    if-ne p2, v3, :cond_8

    .line 572
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    const-string v5, "die_blood.xml"

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_8
    sget-object v3, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 534
    .end local v1    # "partNames":[Ljava/lang/String;
    .end local v2    # "raceNames":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static init(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 1
    .param p0, "mGameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    .line 63
    invoke-static {p0}, Lcom/droidhen/fortconquer/units/UnitMotion;->initMotionInfos(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 64
    invoke-static {}, Lcom/droidhen/fortconquer/units/UnitMotion;->initRefPartPositions()V

    .line 66
    return-void
.end method

.method protected static initCampModifiers(III[[[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 10
    .param p0, "camp"    # I
    .param p1, "campRaceNumber"    # I
    .param p2, "campPartNumber"    # I
    .param p3, "campModifiers"    # [[[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 243
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p2, :cond_1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v3, v5}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampModifiersWithSpeed(IIIFZ)[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v2

    .line 233
    .local v2, "tmpModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    if-eqz v2, :cond_2

    .line 235
    aget-object v3, p3, v5

    aget-object v3, v3, v0

    aget-object v4, v2, v5

    aput-object v4, v3, v1

    .line 236
    aget-object v3, p3, v6

    aget-object v3, v3, v0

    aget-object v4, v2, v6

    aput-object v4, v3, v1

    .line 237
    aget-object v3, p3, v7

    aget-object v3, v3, v0

    aget-object v4, v2, v7

    aput-object v4, v3, v1

    .line 238
    aget-object v3, p3, v8

    aget-object v3, v3, v0

    aget-object v4, v2, v8

    aput-object v4, v3, v1

    .line 239
    aget-object v3, p3, v9

    aget-object v3, v3, v0

    aget-object v4, v2, v9

    aput-object v4, v3, v1

    .line 240
    const/4 v3, 0x5

    aget-object v3, p3, v3

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget-object v4, v2, v4

    aput-object v4, v3, v1

    .line 229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected static initCampModifiersWithSpeed(IIIFZ)[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 54
    .param p0, "camp"    # I
    .param p1, "campRace"    # I
    .param p2, "campPart"    # I
    .param p3, "durationMakeup"    # F
    .param p4, "bNoRotation"    # Z

    .prologue
    .line 247
    const/16 v39, 0x0

    .line 248
    .local v39, "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    const/16 v51, 0xc

    move/from16 v0, v51

    new-array v0, v0, [[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v29, v0

    .line 249
    .local v29, "campModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move/from16 v41, p1

    .line 250
    .local v41, "pRace":I
    move/from16 v40, p2

    .line 252
    .local v40, "pPartType":I
    const/16 v51, 0x0

    cmpg-float v51, p3, v51

    if-gtz v51, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 254
    :cond_0
    move/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v51

    if-nez v51, :cond_1

    .line 255
    const/16 v29, 0x0

    .line 530
    .end local v29    # "campModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :goto_0
    return-object v29

    .line 257
    .restart local v29    # "campModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_1
    move/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->getMotionInfo(III)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v39

    .line 258
    if-nez v39, :cond_2

    .line 260
    const/16 v29, 0x0

    goto :goto_0

    .line 263
    :cond_2
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v44

    .line 264
    .local v44, "totalFrameNum":I
    const/16 v47, 0x0

    .local v47, "walkFrameNum":I
    const/16 v20, 0x0

    .local v20, "attackFrameNum":I
    const/16 v21, 0x0

    .local v21, "attackFrameNum2":I
    const/16 v30, 0x0

    .line 265
    .local v30, "celeFrameNum":I
    const/16 v48, 0x0

    .local v48, "walkFrameStart":I
    const/16 v22, 0x0

    .local v22, "attackFrameStart":I
    const/16 v23, 0x0

    .local v23, "attackFrameStart2":I
    const/16 v31, 0x0

    .line 266
    .local v31, "celeFrameStart":I
    const/16 v28, 0x0

    .local v28, "beginFrame":I
    const/16 v34, 0x0

    .line 267
    .local v34, "curFrame":I
    move-object/from16 v0, v39

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pRotation:F

    move/from16 v37, v0

    .line 268
    .local v37, "fromRotation":F
    move-object/from16 v0, v39

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pRotation:F

    move/from16 v43, v0

    .line 269
    .local v43, "toRotation":F
    move-object/from16 v0, v39

    iget v5, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleX:F

    .local v5, "fromScaleX":F
    move v6, v5

    .line 270
    .local v6, "toScaleX":F
    move-object/from16 v0, v39

    iget v7, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleY:F

    .local v7, "fromScaleY":F
    move v8, v7

    .line 271
    .local v8, "toScaleY":F
    const/16 v35, 0x0

    .line 274
    .local v35, "extraAttackFrameAdded":Z
    const/16 v38, 0x0

    .local v38, "k":I
    :goto_1
    move/from16 v0, v38

    move/from16 v1, v44

    if-lt v0, v1, :cond_7

    .line 306
    const/16 v49, 0x0

    .line 307
    .local v49, "walkModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v50, 0x0

    .line 308
    .local v50, "walkModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v24, 0x0

    .line 309
    .local v24, "attackModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v26, 0x0

    .line 310
    .local v26, "attackModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v25, 0x0

    .line 311
    .local v25, "attackModifier2":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v27, 0x0

    .line 312
    .local v27, "attackModifierRight2":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v32, 0x0

    .line 313
    .local v32, "celeModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v33, 0x0

    .line 314
    .local v33, "celeModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v45, 0x0

    .line 315
    .local v45, "w2aModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v46, 0x0

    .line 316
    .local v46, "w2aModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v9, 0x0

    .line 317
    .local v9, "a2wModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v10, 0x0

    .line 318
    .local v10, "a2wModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    if-lez v47, :cond_3

    .line 319
    move/from16 v0, v47

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v49, v0

    .line 320
    move/from16 v0, v47

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v50, v0

    .line 322
    :cond_3
    if-lez v20, :cond_4

    .line 323
    move/from16 v0, v20

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v24, v0

    .line 324
    move/from16 v0, v20

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v26, v0

    .line 326
    :cond_4
    if-lez v21, :cond_5

    .line 327
    move/from16 v0, v21

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v25, v0

    .line 328
    move/from16 v0, v21

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v27, v0

    .line 330
    :cond_5
    if-lez v30, :cond_6

    .line 331
    move/from16 v0, v30

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v32, v0

    .line 332
    move/from16 v0, v30

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v33, v0

    .line 334
    :cond_6
    const/16 v38, 0x1

    :goto_2
    move/from16 v0, v38

    move/from16 v1, v44

    if-lt v0, v1, :cond_d

    .line 517
    const/16 v51, 0x0

    aput-object v49, v29, v51

    .line 518
    const/16 v51, 0x1

    aput-object v50, v29, v51

    .line 519
    const/16 v51, 0x2

    aput-object v24, v29, v51

    .line 520
    const/16 v51, 0x3

    aput-object v26, v29, v51

    .line 521
    const/16 v51, 0x4

    aput-object v25, v29, v51

    .line 522
    const/16 v51, 0x5

    aput-object v27, v29, v51

    .line 523
    const/16 v51, 0x6

    aput-object v32, v29, v51

    .line 524
    const/16 v51, 0x7

    aput-object v33, v29, v51

    .line 525
    const/16 v51, 0x8

    aput-object v45, v29, v51

    .line 526
    const/16 v51, 0x9

    aput-object v46, v29, v51

    .line 527
    const/16 v51, 0xa

    aput-object v9, v29, v51

    .line 528
    const/16 v51, 0xb

    aput-object v10, v29, v51

    goto/16 :goto_0

    .line 275
    .end local v9    # "a2wModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v10    # "a2wModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v24    # "attackModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v25    # "attackModifier2":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v26    # "attackModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v27    # "attackModifierRight2":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v32    # "celeModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v33    # "celeModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v45    # "w2aModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v46    # "w2aModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v49    # "walkModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v50    # "walkModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_7
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    .line 276
    .local v36, "frameInfo":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    if-nez v51, :cond_9

    .line 274
    :cond_8
    :goto_3
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 278
    :cond_9
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    const/16 v52, 0x18

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_a

    .line 280
    add-int/lit8 v47, v47, 0x1

    .line 281
    if-nez v48, :cond_8

    .line 282
    move/from16 v48, v38

    .line 283
    goto :goto_3

    :cond_a
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    const/16 v52, 0x18

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_8

    .line 286
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    const/high16 v52, 0x41c00000    # 24.0f

    sget-object v53, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    aget v53, v53, p0

    add-float v52, v52, v53

    cmpg-float v51, v51, v52

    if-gtz v51, :cond_b

    .line 287
    add-int/lit8 v20, v20, 0x1

    .line 288
    if-nez v22, :cond_8

    .line 289
    move/from16 v22, v38

    .line 290
    goto :goto_3

    :cond_b
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    const/high16 v52, 0x41c00000    # 24.0f

    sget-object v53, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    aget v53, v53, p0

    add-float v52, v52, v53

    const/high16 v53, 0x3f800000    # 1.0f

    add-float v52, v52, v53

    cmpl-float v51, v51, v52

    if-eqz v51, :cond_8

    .line 292
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    sget-object v52, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v52, v52, p0

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_c

    .line 293
    add-int/lit8 v21, v21, 0x1

    .line 294
    if-nez v23, :cond_8

    .line 295
    move/from16 v23, v38

    .line 296
    goto :goto_3

    :cond_c
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    sget-object v52, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v52, v52, p0

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_8

    .line 299
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v51, v0

    const/16 v52, 0xc8

    move/from16 v0, v51

    move/from16 v1, v52

    if-gt v0, v1, :cond_8

    .line 300
    add-int/lit8 v30, v30, 0x1

    .line 301
    if-nez v31, :cond_8

    .line 302
    move/from16 v31, v38

    goto/16 :goto_3

    .line 335
    .end local v36    # "frameInfo":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    .restart local v9    # "a2wModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v10    # "a2wModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v24    # "attackModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v25    # "attackModifier2":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v26    # "attackModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v27    # "attackModifierRight2":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v32    # "celeModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v33    # "celeModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v45    # "w2aModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v46    # "w2aModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v49    # "walkModifier":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v50    # "walkModifierRight":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_d
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    .line 336
    .restart local v36    # "frameInfo":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    add-int/lit8 v52, v38, -0x1

    invoke-virtual/range {v51 .. v52}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    .line 337
    .local v42, "preFrameInfo":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    move/from16 v34, v0

    .line 339
    if-nez v34, :cond_f

    .line 334
    :cond_e
    :goto_4
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 342
    :cond_f
    if-nez v35, :cond_10

    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-lt v0, v1, :cond_10

    .line 343
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-virtual/range {v51 .. v52}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "frameInfo":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    check-cast v36, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    .line 346
    .restart local v36    # "frameInfo":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    :cond_10
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    move/from16 v51, v0

    const/16 v52, 0x0

    cmpl-float v51, v51, v52

    if-nez v51, :cond_11

    .line 347
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    .line 348
    :cond_11
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    move/from16 v51, v0

    const/16 v52, 0x0

    cmpl-float v51, v51, v52

    if-nez v51, :cond_12

    .line 349
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    .line 350
    :cond_12
    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    move/from16 v51, v0

    const/16 v52, 0x0

    cmpl-float v51, v51, v52

    if-nez v51, :cond_13

    .line 351
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    move-object/from16 v1, v42

    iput v0, v1, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    .line 352
    :cond_13
    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    move/from16 v51, v0

    const/16 v52, 0x0

    cmpl-float v51, v51, v52

    if-nez v51, :cond_14

    .line 353
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    move-object/from16 v1, v42

    iput v0, v1, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    .line 356
    :cond_14
    const/4 v11, 0x0

    .line 357
    .local v11, "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v12, 0x0

    .line 358
    .local v12, "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    sub-int v51, v34, v28

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    const/high16 v52, 0x41c00000    # 24.0f

    div-float v51, v51, v52

    mul-float v4, v51, p3

    .line 359
    .local v4, "duration":F
    if-nez v35, :cond_20

    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-lt v0, v1, :cond_20

    .line 360
    const v51, 0x3d2aaaab

    mul-float v4, v51, p3

    .line 367
    :cond_15
    :goto_5
    const/16 v17, 0x0

    .local v17, "anRotationModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v18, 0x0

    .line 368
    .local v18, "anRotationModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v15, 0x0

    .local v15, "anMoveModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v16, 0x0

    .line 369
    .local v16, "anMoveModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v3, 0x0

    .local v3, "anScaleModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v19, 0x0

    .line 370
    .local v19, "anScaleModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v13, 0x0

    .local v13, "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v14, 0x0

    .line 373
    .local v14, "anFadeModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x1

    move/from16 v0, v40

    move/from16 v1, v51

    if-eq v0, v1, :cond_16

    .line 374
    if-nez p4, :cond_18

    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    move/from16 v51, v0

    const/high16 v52, 0x43b40000    # 360.0f

    cmpl-float v51, v51, v52

    if-eqz v51, :cond_18

    .line 375
    move-object/from16 v0, v39

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pRotation:F

    move/from16 v51, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    move/from16 v52, v0

    add-float v51, v51, v52

    sub-float v51, v51, v37

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->abs(F)F

    move-result v51

    const/high16 v52, 0x3f800000    # 1.0f

    cmpl-float v51, v51, v52

    if-ltz v51, :cond_18

    .line 377
    :cond_16
    move-object/from16 v0, v39

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pRotation:F

    move/from16 v51, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    move/from16 v52, v0

    add-float v43, v51, v52

    .line 379
    new-instance v17, Lorg/anddev/andengine/entity/modifier/RotationModifier;

    .end local v17    # "anRotationModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move-object/from16 v0, v17

    move/from16 v1, v37

    move/from16 v2, v43

    invoke-direct {v0, v4, v1, v2}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFF)V

    .line 380
    .restart local v17    # "anRotationModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v18, Lorg/anddev/andengine/entity/modifier/RotationModifier;

    .end local v18    # "anRotationModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move/from16 v0, v37

    neg-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v43

    neg-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v18

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-direct {v0, v4, v1, v2}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFF)V

    .line 382
    .restart local v18    # "anRotationModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    if-nez v35, :cond_17

    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_18

    .line 383
    :cond_17
    move/from16 v37, v43

    .line 385
    :cond_18
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v51, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->abs(F)F

    move-result v51

    const v52, 0x3dcccccd    # 0.1f

    cmpl-float v51, v51, v52

    if-gez v51, :cond_19

    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v51, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->abs(F)F

    move-result v51

    const v52, 0x3dcccccd    # 0.1f

    cmpl-float v51, v51, v52

    if-ltz v51, :cond_1a

    .line 386
    :cond_19
    new-instance v15, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    .end local v15    # "anMoveModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v51, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    .line 387
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v52, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v53, v0

    sub-float v52, v52, v53

    .line 386
    move/from16 v0, v51

    move/from16 v1, v52

    invoke-direct {v15, v4, v0, v1}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 388
    .restart local v15    # "anMoveModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v16, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    .end local v16    # "anMoveModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v51, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    move/from16 v0, v51

    neg-float v0, v0

    move/from16 v51, v0

    .line 389
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v52, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v53, v0

    sub-float v52, v52, v53

    .line 388
    move-object/from16 v0, v16

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-direct {v0, v4, v1, v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 391
    .restart local v16    # "anMoveModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_1a
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    move/from16 v51, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->abs(F)F

    move-result v51

    const v52, 0x3ca3d70a    # 0.02f

    cmpl-float v51, v51, v52

    if-gez v51, :cond_1b

    .line 392
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    move/from16 v51, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->abs(F)F

    move-result v51

    const v52, 0x3ca3d70a    # 0.02f

    cmpl-float v51, v51, v52

    if-ltz v51, :cond_1d

    .line 393
    :cond_1b
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    move/from16 v51, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleX:F

    move/from16 v52, v0

    mul-float v6, v51, v52

    .line 394
    move-object/from16 v0, v36

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    move/from16 v51, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleY:F

    move/from16 v52, v0

    mul-float v8, v51, v52

    .line 395
    new-instance v3, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    .end local v3    # "anScaleModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-direct/range {v3 .. v8}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFF)V

    .line 397
    .restart local v3    # "anScaleModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move-object/from16 v19, v3

    .line 399
    if-nez v35, :cond_1c

    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_1d

    .line 401
    :cond_1c
    move v5, v6

    .line 402
    move v7, v8

    .line 405
    :cond_1d
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->bBlank:Z

    move/from16 v51, v0

    if-eqz v51, :cond_21

    .line 407
    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->bBlank:Z

    move/from16 v51, v0

    if-nez v51, :cond_1e

    .line 409
    new-instance v13, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    .end local v13    # "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v51, Lcom/droidhen/fortconquer/units/UnitMotion$1;

    invoke-direct/range {v51 .. v51}, Lcom/droidhen/fortconquer/units/UnitMotion$1;-><init>()V

    move-object/from16 v0, v51

    invoke-direct {v13, v4, v0}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 426
    .restart local v13    # "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_1e
    move-object v14, v13

    .line 449
    :cond_1f
    :goto_6
    if-eqz v13, :cond_23

    .line 451
    move-object v11, v13

    .line 452
    move-object v12, v14

    .line 481
    :goto_7
    const/16 v51, 0x18

    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_2b

    .line 483
    sub-int v51, v38, v48

    aput-object v11, v49, v51

    .line 484
    sub-int v51, v38, v48

    aput-object v12, v50, v51

    .line 485
    move/from16 v28, v34

    .line 486
    goto/16 :goto_4

    .line 362
    .end local v3    # "anScaleModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v13    # "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v14    # "anFadeModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v15    # "anMoveModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v16    # "anMoveModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v17    # "anRotationModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v18    # "anRotationModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v19    # "anScaleModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_20
    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-le v0, v1, :cond_15

    .line 364
    sub-int v51, v34, v28

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    const/high16 v52, 0x41c00000    # 24.0f

    div-float v4, v51, v52

    goto/16 :goto_5

    .line 427
    .restart local v3    # "anScaleModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v13    # "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v14    # "anFadeModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v15    # "anMoveModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v16    # "anMoveModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v17    # "anRotationModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v18    # "anRotationModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v19    # "anScaleModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_21
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->bBlank:Z

    move/from16 v51, v0

    if-nez v51, :cond_1f

    .line 429
    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->bBlank:Z

    move/from16 v51, v0

    if-eqz v51, :cond_22

    .line 430
    new-instance v13, Lorg/anddev/andengine/entity/modifier/FadeInModifier;

    .end local v13    # "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v51, Lcom/droidhen/fortconquer/units/UnitMotion$2;

    invoke-direct/range {v51 .. v51}, Lcom/droidhen/fortconquer/units/UnitMotion$2;-><init>()V

    move-object/from16 v0, v51

    invoke-direct {v13, v4, v0}, Lorg/anddev/andengine/entity/modifier/FadeInModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 445
    .restart local v13    # "anFadeModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_22
    move-object v14, v13

    goto :goto_6

    .line 454
    :cond_23
    if-eqz v17, :cond_24

    if-eqz v15, :cond_24

    if-eqz v3, :cond_24

    .line 455
    new-instance v11, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v17, v51, v52

    const/16 v52, 0x1

    aput-object v15, v51, v52

    const/16 v52, 0x2

    aput-object v3, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v11, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 456
    .restart local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v12, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v18, v51, v52

    const/16 v52, 0x1

    aput-object v16, v51, v52

    const/16 v52, 0x2

    aput-object v19, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v12, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 458
    .restart local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto/16 :goto_7

    :cond_24
    if-eqz v17, :cond_25

    if-eqz v15, :cond_25

    .line 459
    new-instance v11, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v15, v51, v52

    const/16 v52, 0x1

    aput-object v17, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v11, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 460
    .restart local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v12, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v18, v51, v52

    const/16 v52, 0x1

    aput-object v16, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v12, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 461
    .restart local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto/16 :goto_7

    :cond_25
    if-eqz v17, :cond_26

    if-eqz v3, :cond_26

    .line 462
    new-instance v11, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v17, v51, v52

    const/16 v52, 0x1

    aput-object v3, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v11, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 463
    .restart local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v12, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v18, v51, v52

    const/16 v52, 0x1

    aput-object v19, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v12, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 464
    .restart local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto/16 :goto_7

    :cond_26
    if-eqz v15, :cond_27

    if-eqz v3, :cond_27

    .line 465
    new-instance v11, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v15, v51, v52

    const/16 v52, 0x1

    aput-object v3, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v11, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 466
    .restart local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    new-instance v12, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    .end local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v16, v51, v52

    const/16 v52, 0x1

    aput-object v19, v51, v52

    move-object/from16 v0, v51

    invoke-direct {v12, v0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 467
    .restart local v12    # "anEntityModifierRight":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto/16 :goto_7

    :cond_27
    if-eqz v17, :cond_28

    .line 468
    move-object/from16 v11, v17

    .line 469
    move-object/from16 v12, v18

    .line 470
    goto/16 :goto_7

    :cond_28
    if-eqz v15, :cond_29

    .line 471
    move-object v11, v15

    .line 472
    move-object/from16 v12, v16

    .line 473
    goto/16 :goto_7

    :cond_29
    if-eqz v3, :cond_2a

    .line 474
    move-object v11, v3

    .line 475
    move-object/from16 v12, v19

    .line 476
    goto/16 :goto_7

    .line 477
    :cond_2a
    new-instance v11, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    .end local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-direct {v11, v4}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    .line 478
    .restart local v11    # "anEntityModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    move-object v12, v11

    goto/16 :goto_7

    .line 486
    :cond_2b
    const/16 v51, 0x18

    move/from16 v0, v34

    move/from16 v1, v51

    if-ne v0, v1, :cond_2c

    .line 488
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v45, v0

    .line 489
    const/16 v51, 0x0

    aput-object v11, v45, v51

    .line 490
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v46, v0

    .line 491
    const/16 v51, 0x0

    aput-object v12, v46, v51

    .line 492
    move/from16 v28, v34

    .line 493
    goto/16 :goto_4

    :cond_2c
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v51, v0

    const/high16 v52, 0x41c00000    # 24.0f

    sget-object v53, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    aget v53, v53, p0

    add-float v52, v52, v53

    cmpg-float v51, v51, v52

    if-gtz v51, :cond_2d

    .line 494
    sub-int v51, v38, v22

    aput-object v11, v24, v51

    .line 495
    sub-int v51, v38, v22

    aput-object v12, v26, v51

    .line 496
    move/from16 v28, v34

    .line 497
    goto/16 :goto_4

    :cond_2d
    if-nez v35, :cond_2e

    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-lt v0, v1, :cond_2e

    .line 498
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v9, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 499
    const/16 v51, 0x0

    aput-object v11, v9, v51

    .line 500
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v10, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 501
    const/16 v51, 0x0

    aput-object v12, v10, v51

    .line 502
    const/16 v35, 0x1

    .line 504
    move/from16 v28, v34

    .line 505
    goto/16 :goto_4

    :cond_2e
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v51, v0

    const/high16 v52, 0x41c00000    # 24.0f

    sget-object v53, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    aget v53, v53, p0

    add-float v52, v52, v53

    const/high16 v53, 0x3f800000    # 1.0f

    add-float v52, v52, v53

    cmpl-float v51, v51, v52

    if-nez v51, :cond_2f

    .line 506
    move/from16 v28, v34

    .line 507
    goto/16 :goto_4

    :cond_2f
    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-ge v0, v1, :cond_30

    .line 508
    sub-int v51, v38, v23

    aput-object v11, v25, v51

    .line 509
    sub-int v51, v38, v23

    aput-object v12, v27, v51

    .line 510
    move/from16 v28, v34

    .line 511
    goto/16 :goto_4

    :cond_30
    sget-object v51, Lcom/droidhen/fortconquer/units/UnitMotion;->CELE_FRAME_START:[I

    aget v51, v51, p0

    move/from16 v0, v34

    move/from16 v1, v51

    if-le v0, v1, :cond_e

    .line 512
    sub-int v51, v38, v31

    aput-object v11, v32, v51

    .line 513
    sub-int v51, v38, v31

    aput-object v12, v33, v51

    .line 514
    move/from16 v28, v34

    goto/16 :goto_4
.end method

.method protected static initCampMotionInfo(III)V
    .locals 12
    .param p0, "camp"    # I
    .param p1, "raceNumber"    # I
    .param p2, "partNumber"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 70
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampRaceNames:[[Ljava/lang/String;

    aget-object v5, v6, p0

    .line 71
    .local v5, "raceNames":[Ljava/lang/String;
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampPartNames:[[Ljava/lang/String;

    aget-object v3, v6, p0

    .line 72
    .local v3, "partNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 120
    return-void

    .line 73
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, p2, :cond_1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v6

    if-nez v6, :cond_3

    .line 73
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_3
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 80
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    const-string v7, "gfx/xml/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "path":Ljava/lang/String;
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 84
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "fileName":Ljava/lang/String;
    const/16 v6, 0xf

    if-ne v2, v6, :cond_5

    .line 89
    if-ne p0, v10, :cond_4

    .line 90
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v4, v0}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto :goto_2

    .line 91
    :cond_4
    if-nez p0, :cond_2

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    .line 92
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v8, "gfx/xml/Gorilla/"

    const-string v9, "Gorilla_attack_1.xml"

    invoke-virtual {v6, v7, v8, v9}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto :goto_2

    .line 95
    :cond_5
    const/16 v6, 0xe

    if-eq v2, v6, :cond_2

    .line 99
    const/16 v6, 0x10

    if-ne v2, v6, :cond_6

    .line 101
    if-eq p0, v10, :cond_2

    invoke-static {p0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v4, v0}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto :goto_2

    .line 104
    :cond_6
    const/16 v6, 0x11

    if-ne v2, v6, :cond_7

    .line 106
    if-eq p0, v10, :cond_2

    invoke-static {p0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v4, v0}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto/16 :goto_2

    .line 109
    :cond_7
    const/16 v6, 0x12

    if-ne v2, v6, :cond_8

    .line 110
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v8, "gfx/xml/"

    const-string v9, "Blood.xml"

    invoke-virtual {v6, v7, v8, v9}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto/16 :goto_2

    .line 111
    :cond_8
    const/16 v6, 0x13

    if-ne v2, v6, :cond_9

    .line 112
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v8, "gfx/xml/"

    const-string v9, "ghost.xml"

    invoke-virtual {v6, v7, v8, v9}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto/16 :goto_2

    .line 113
    :cond_9
    const/16 v6, 0x14

    if-ne v2, v6, :cond_a

    .line 114
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v8, "gfx/xml/"

    const-string v9, "die_effect.xml"

    invoke-virtual {v6, v7, v8, v9}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto/16 :goto_2

    .line 115
    :cond_a
    const/16 v6, 0x15

    if-ne v2, v6, :cond_b

    .line 116
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v8, "gfx/xml/"

    const-string v9, "die_blood.xml"

    invoke-virtual {v6, v7, v8, v9}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto/16 :goto_2

    .line 118
    :cond_b
    sget-object v6, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v4, v0}, Lcom/droidhen/andplugin/FlashMotionCache;->initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    goto/16 :goto_2
.end method

.method protected static initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V
    .locals 10
    .param p0, "camp"    # I
    .param p1, "raceNumber"    # I
    .param p2, "partType"    # I
    .param p3, "partPosition"    # [Lcom/droidhen/fortconquer/units/Vector2;
    .param p4, "partCenter"    # [Lcom/droidhen/fortconquer/units/Vector2;

    .prologue
    .line 175
    sget-object v8, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampRaceNames:[[Ljava/lang/String;

    aget-object v5, v8, p0

    .line 176
    .local v5, "raceNames":[Ljava/lang/String;
    sget-object v8, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampPartNames:[[Ljava/lang/String;

    aget-object v4, v8, p0

    .line 177
    .local v4, "partNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 204
    return-void

    .line 182
    :cond_0
    sget-object v8, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 183
    sget-object v8, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    aget-object v9, v5, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    aget-object v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    sget-object v8, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    .line 185
    sget-object v9, Lcom/droidhen/fortconquer/units/UnitMotion;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-virtual {v8, v9}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v1

    .line 186
    iget v8, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->width:F

    iget v9, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointX:F

    mul-float/2addr v8, v9

    iget v9, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->left:F

    add-float v6, v8, v9

    .line 187
    .local v6, "rotationCenterX":F
    iget v8, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->height:F

    iget v9, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointY:F

    mul-float/2addr v8, v9

    iget v9, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->top:F

    add-float v7, v8, v9

    .line 190
    .local v7, "rotationCenterY":F
    iget v2, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pX:F

    .line 191
    .local v2, "motionX":F
    iget v3, v1, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pY:F

    .line 193
    .local v3, "motionY":F
    new-instance v8, Lcom/droidhen/fortconquer/units/Vector2;

    invoke-direct {v8}, Lcom/droidhen/fortconquer/units/Vector2;-><init>()V

    aput-object v8, p3, v0

    .line 194
    aget-object v8, p3, v0

    iput v2, v8, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    .line 195
    aget-object v8, p3, v0

    iput v3, v8, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    .line 197
    if-eqz p4, :cond_1

    .line 199
    new-instance v8, Lcom/droidhen/fortconquer/units/Vector2;

    invoke-direct {v8}, Lcom/droidhen/fortconquer/units/Vector2;-><init>()V

    aput-object v8, p4, v0

    .line 200
    aget-object v8, p4, v0

    iput v6, v8, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    .line 201
    aget-object v8, p4, v0

    iput v7, v8, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static initMotionInfos(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 8
    .param p0, "mGameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 150
    :try_start_0
    sget-object v4, Lcom/droidhen/fortconquer/units/UnitMotion;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v5, "gfx/xml/AllMotions.oos"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 151
    .local v2, "is":Ljava/io/InputStream;
    sget-object v4, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    invoke-virtual {v4, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->restoreMotionData(Ljava/io/InputStream;)Z

    .line 152
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "eRead":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    const/16 v4, 0x17

    invoke-static {v6, v7, v4}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampMotionInfo(III)V

    .line 158
    const/4 v4, 0x1

    const/16 v5, 0x1b

    invoke-static {v4, v7, v5}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampMotionInfo(III)V

    .line 159
    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0x20

    invoke-static {v4, v5, v6}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampMotionInfo(III)V

    .line 162
    :try_start_1
    const-string v4, "AllMotions.oos"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/droidhen/fortconquer/GameActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 163
    .local v3, "os":Ljava/io/FileOutputStream;
    sget-object v4, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    invoke-virtual {v4, v3}, Lcom/droidhen/andplugin/FlashMotionCache;->saveMotionData(Ljava/io/FileOutputStream;)Z

    .line 164
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 165
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "eWrite":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static initRefPartPositions()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 208
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 207
    invoke-static {v3, v4, v3, v0, v1}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 210
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 209
    invoke-static {v5, v4, v3, v0, v1}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 212
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 211
    invoke-static {v2, v6, v3, v0, v1}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 215
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 214
    invoke-static {v3, v4, v2, v0, v1}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 217
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 216
    invoke-static {v5, v4, v2, v0, v1}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 219
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 218
    invoke-static {v2, v6, v2, v0, v1}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 221
    const/4 v0, 0x7

    .line 222
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    .line 221
    invoke-static {v3, v4, v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampPartPosition(III[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    .line 223
    return-void
.end method

.method public static unitPartExist(III)Z
    .locals 7
    .param p0, "camp"    # I
    .param p1, "race"    # I
    .param p2, "unitPart"    # I

    .prologue
    const/16 v6, 0x1a

    const/16 v5, 0xf

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    if-ne p0, v1, :cond_2

    .line 124
    const/16 v2, 0x18

    if-eq p2, v2, :cond_0

    const/16 v2, 0x19

    if-ne p2, v2, :cond_2

    .line 125
    :cond_0
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v2, v2, p0

    add-int/2addr v2, p1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    .line 145
    :cond_1
    :goto_0
    return v0

    .line 128
    :cond_2
    if-ne p0, v1, :cond_3

    .line 129
    if-ne p2, v6, :cond_3

    .line 130
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v2, v2, p0

    add-int/2addr v2, p1

    if-ne v2, v5, :cond_1

    .line 133
    :cond_3
    if-ne p2, v1, :cond_4

    .line 134
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->UNIT_RACE_NO_MOUTH:[I

    sget-object v3, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v3, v3, p0

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_1

    .line 136
    :cond_4
    if-nez p0, :cond_5

    if-ne p2, v4, :cond_5

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipudTailType:[I

    aget v2, v2, p1

    if-eqz v2, :cond_1

    .line 138
    :cond_5
    if-ne p0, v1, :cond_6

    if-ne p2, v4, :cond_6

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v2, v2, p0

    add-int/2addr v2, p1

    if-eq v2, v5, :cond_1

    .line 140
    :cond_6
    if-nez p0, :cond_7

    const/16 v2, 0x16

    if-ne p2, v2, :cond_7

    if-ne p1, v4, :cond_1

    .line 142
    :cond_7
    const/4 v2, 0x2

    if-ne p0, v2, :cond_8

    if-eq p2, v6, :cond_1

    :cond_8
    move v0, v1

    .line 145
    goto :goto_0
.end method
