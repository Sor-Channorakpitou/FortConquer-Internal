.class public Lcom/droidhen/fortconquer/stages/StageDataConstants;
.super Ljava/lang/Object;
.source "StageDataConstants.java"


# static fields
.field public static final ARENA_UNLOCK_STAGE:I = 0x5

.field public static final ATTACK_RATIO:F = 5.0f

.field public static final CAMP_UNIT_CHOSE_BASE:I = 0x4

.field public static final CAMP_UNIT_CHOSE_MAX:I = 0xa

.field public static final CARD_PRICE_BASE:F = 250.0f

.field public static CATAPULT_ATTACK_BASE:F = 0.0f

.field public static CATAPULT_ATTACK_STEP:F = 0.0f

.field public static CATAPULT_HEALTH_BASE:I = 0x0

.field public static CATAPULT_HEALTH_STEP:I = 0x0

.field public static CATAPULT_MONEY_STEP:I = 0x0

.field public static final COINP_INCREASE_STEP:F = 30.0f

.field public static final COMMON_BONUS_BASE:F = 80.0f

.field public static final COOL_DOWN_BASE:F = 9.0f

.field public static final COOL_DOWN_DRAGON:F = 15.0f

.field public static final DRAGON_PRICE_INCR_RATE:F = 8.0f

.field public static final ENEMY_FORT_STEP:I = 0x5

.field public static final ENEMY_FORT_X:I = 0x282

.field public static final ENEMY_FORT_Y:I = 0x10

.field public static final ENEMY_UNIT_INCR_STAGES:I = 0xf

.field public static final FORT_BASE_HEALTH:I = 0xbb8

.field public static final FORT_HEALTH_STEP:I = 0x1f4

.field public static final FORT_LV_MAX:I = 0x3e7

.field public static final FURY_UNIT_INCREASE:F = 1.2f

.field public static final HEALTH_RATIO:F = 0.2f

.field public static final INCREASE_CHANGE_STAGE:[I

.field public static final INCREASE_VALUE_STEP:[F

.field public static final INIT_DECK_INCREASE:F = 1.2f

.field public static final INIT_UNLOCK_NUMBER:I = 0x6

.field public static final MAX_BAG_NUM:I = 0x6

.field public static final MAX_SPEED:F = 45.0f

.field public static final PLAYER_FORT_X:I = 0x32

.field public static final PLAYER_FORT_Y:I = 0x10

.field private static final QUICK_CALC_VALUE:[F

.field public static final RESOURCE_INCR_LV_STEP:I = 0xa

.field public static final RESOURCE_INCR_RATE:I = 0x3c

.field public static final RESOURCE_LV_MAX:I = 0x3c

.field public static final REWARD_BASE_CRYSTAL_MAX:I = 0xa

.field public static final RSC_EXPIRE:I = 0x190

.field public static final RSC_PER_KILL:I = 0x4

.field public static final RSC_PER_KILL_MAX:I = 0x8

.field public static final SPEED_MAKEUP:F = 1.3f

.field public static final SPEED_MAKEUP_DRAGON:F = 1.1f

.field public static final STONE_COST_BASE:I = 0xa

.field public static final STONE_COST_MAX:I = 0x1e

.field public static final TEAM_INTERVAL_MAX:I = 0x10

.field public static final TEAM_INTERVAL_MIN:I = 0xe

.field public static final TEAM_MEMBER_MAX:I = 0x3

.field public static final TEAM_MEMBER_MIN:I = 0x1

.field public static final TEAM_START_TIME:I = 0x4

.field public static final TOWER_ATTACK_DIST:I = 0xc

.field public static final TOWER_ATTACK_DURA:F = 0.3f

.field public static final TOWER_DAMAGE_BASE:I = 0x14

.field public static final TOWER_DAMAGE_STEP:I = 0xa

.field public static final TOWER_HEALTH_BASE:F = 200.0f

.field public static final UNIT_BASE_PROPS:[[F

.field public static UNIT_POWER_AVERAGE:F = 0.0f

.field public static UNIT_POWER_AVERAGE_DRAGON:F = 0.0f

.field public static final UNIT_PRICE_FIREBALL:I = 0x4

.field public static final UNIT_PRICE_INCR_RATE:F = 8.0f

.field public static UNIT_PROPS_AVARAGE_BIPED:[F = null

.field public static UNIT_PROPS_AVARAGE_DRAGON:[F = null

.field public static UNIT_PROPS_AVARAGE_QUADRUPED:[F = null

.field public static final UNIT_SPEED_BASE:F = 30.0f

.field public static final UNIT_STEP_LEN:F = 36.0f

.field public static final WAVE_INTERVAL:I = 0x14

.field public static final WAVE_START_TIME:I = 0x1e

.field public static final WAVE_UNIT_INCR_STAGES:F = 25.0f


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/16 v4, 0x8

    .line 26
    const/16 v1, 0x32

    sput v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->CATAPULT_HEALTH_BASE:I

    .line 27
    const/16 v1, 0xa

    sput v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->CATAPULT_HEALTH_STEP:I

    .line 28
    const/16 v1, 0x1f4

    sput v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->CATAPULT_MONEY_STEP:I

    .line 29
    sput v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->CATAPULT_ATTACK_BASE:F

    .line 30
    sput v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->CATAPULT_ATTACK_STEP:F

    .line 73
    const/16 v1, 0x18

    new-array v1, v1, [[F

    .line 75
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, v7

    const/4 v2, 0x1

    .line 76
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    .line 77
    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    .line 78
    new-array v3, v4, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 79
    new-array v3, v4, [F

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    .line 80
    new-array v2, v4, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    const/4 v2, 0x6

    .line 81
    new-array v3, v4, [F

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 82
    new-array v3, v4, [F

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    .line 83
    new-array v2, v4, [F

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    const/16 v2, 0x9

    .line 84
    new-array v3, v4, [F

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 85
    new-array v3, v4, [F

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 86
    new-array v3, v4, [F

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 87
    new-array v3, v4, [F

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 88
    new-array v3, v4, [F

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 89
    new-array v3, v4, [F

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 90
    new-array v3, v4, [F

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 91
    new-array v3, v4, [F

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 92
    new-array v3, v4, [F

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 93
    new-array v3, v4, [F

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 94
    new-array v3, v4, [F

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 95
    new-array v3, v4, [F

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 96
    new-array v3, v4, [F

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 97
    new-array v3, v4, [F

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 98
    new-array v3, v4, [F

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    .line 73
    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    .line 110
    new-array v1, v5, [F

    fill-array-data v1, :array_14

    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_PROPS_AVARAGE_BIPED:[F

    .line 111
    new-array v1, v5, [F

    fill-array-data v1, :array_15

    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_PROPS_AVARAGE_QUADRUPED:[F

    .line 112
    new-array v1, v5, [F

    fill-array-data v1, :array_16

    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_PROPS_AVARAGE_DRAGON:[F

    .line 114
    const v1, 0x4361999a    # 225.6f

    .line 113
    sput v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_POWER_AVERAGE:F

    .line 116
    const v1, 0x43c12666    # 386.3f

    .line 115
    sput v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_POWER_AVERAGE_DRAGON:F

    .line 119
    new-array v1, v6, [F

    fill-array-data v1, :array_17

    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    .line 120
    new-array v1, v6, [I

    const/4 v2, 0x1

    const/16 v3, 0x3c

    aput v3, v1, v2

    const/16 v2, 0xa0

    aput v2, v1, v5

    const/4 v2, 0x3

    const/16 v3, 0x140

    aput v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x230

    aput v3, v1, v2

    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    .line 123
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    new-array v1, v1, [F

    sput-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    .line 124
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v7

    .line 125
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 129
    return-void

    .line 126
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sget-object v3, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    aget v3, v3, v0

    sget-object v4, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 127
    sget-object v4, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 126
    aput v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :array_0
    .array-data 4
        0x43f00000    # 480.0f
        0x41c80000    # 25.0f
        0x41900000    # 18.0f
        0x41a80000    # 21.0f
        0x40c00000    # 6.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 76
    :array_1
    .array-data 4
        0x43e60000    # 460.0f
        0x41d00000    # 26.0f
        0x41900000    # 18.0f
        0x41e80000    # 29.0f
        0x40e00000    # 7.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
    .end array-data

    .line 77
    :array_2
    .array-data 4
        0x43d20000    # 420.0f
        0x41e80000    # 29.0f
        0x41900000    # 18.0f
        0x41c00000    # 24.0f
        0x41000000    # 8.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
    .end array-data

    .line 78
    :array_3
    .array-data 4
        0x43d98000    # 435.0f
        0x41d00000    # 26.0f
        0x41900000    # 18.0f
        0x41c00000    # 24.0f
        0x40c00000    # 6.0f
        0x0
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 79
    :array_4
    .array-data 4
        0x43f00000    # 480.0f
        0x41d00000    # 26.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41100000    # 9.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
    .end array-data

    .line 80
    :array_5
    .array-data 4
        0x43ea0000    # 468.0f
        0x41d80000    # 27.0f
        0x41900000    # 18.0f
        0x41b80000    # 23.0f
        0x41000000    # 8.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    .line 81
    :array_6
    .array-data 4
        0x43c80000    # 400.0f
        0x41f00000    # 30.0f
        0x41900000    # 18.0f
        0x41d80000    # 27.0f
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
    .end array-data

    .line 82
    :array_7
    .array-data 4
        0x43e10000    # 450.0f
        0x41e00000    # 28.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41100000    # 9.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 83
    :array_8
    .array-data 4
        0x44048000    # 530.0f
        0x41b00000    # 22.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x40c00000    # 6.0f
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 84
    :array_9
    .array-data 4
        0x43f78000    # 495.0f
        0x41c80000    # 25.0f
        0x41900000    # 18.0f
        0x41f80000    # 31.0f
        0x41000000    # 8.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 85
    :array_a
    .array-data 4
        0x43ff0000    # 510.0f
        0x41c00000    # 24.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x40e00000    # 7.0f
        0x3f800000    # 1.0f
        0x40e00000    # 7.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 86
    :array_b
    .array-data 4
        0x43fa0000    # 500.0f
        0x41d80000    # 27.0f
        0x41900000    # 18.0f
        0x42040000    # 33.0f
        0x40e00000    # 7.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 87
    :array_c
    .array-data 4
        0x43f00000    # 480.0f
        0x41c80000    # 25.0f
        0x41900000    # 18.0f
        0x41d00000    # 26.0f
        0x41100000    # 9.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
    .end array-data

    .line 88
    :array_d
    .array-data 4
        0x44020000    # 520.0f
        0x41c80000    # 25.0f
        0x41900000    # 18.0f
        0x41b80000    # 23.0f
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
    .end array-data

    .line 89
    :array_e
    .array-data 4
        0x43eb0000    # 470.0f
        0x41d80000    # 27.0f
        0x41900000    # 18.0f
        0x41c80000    # 25.0f
        0x40e00000    # 7.0f
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 90
    :array_f
    .array-data 4
        0x44098000    # 550.0f
        0x41c00000    # 24.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x40c00000    # 6.0f
        0x3f800000    # 1.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data

    .line 91
    :array_10
    .array-data 4
        0x44480000    # 800.0f
        0x42300000    # 44.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 92
    :array_11
    .array-data 4
        0x443b8000    # 750.0f
        0x423c0000    # 47.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 93
    :array_12
    .array-data 4
        0x444e4000    # 825.0f
        0x42300000    # 44.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x40e00000    # 7.0f
    .end array-data

    .line 94
    :array_13
    .array-data 4
        0x44480000    # 800.0f
        0x423c0000    # 47.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x41100000    # 9.0f
    .end array-data

    .line 95
    :array_1e
    .array-data 4
        0x44480000    # 800.0f  (Earth Dragon - clone Desert Dragon)
        0x42300000    # 44.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 96
    :array_1f
    .array-data 4
        0x443b8000    # 750.0f  (Light Dragon - clone Ice Dragon)
        0x423c0000    # 47.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 97
    :array_20
    .array-data 4
        0x444e4000    # 825.0f  (Poison Dragon - clone Swamp Dragon)
        0x42300000    # 44.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x40e00000    # 7.0f
    .end array-data

    .line 98
    :array_21
    .array-data 4
        0x44480000    # 800.0f  (Storm Dragon - clone Fire Dragon)
        0x423c0000    # 47.0f
        0x41900000    # 18.0f
        0x41f00000    # 30.0f
        0x41000000    # 8.0f
        0x0
        0x40800000    # 4.0f
        0x41100000    # 9.0f
    .end array-data

    .line 110
    :array_14
    .array-data 4
        0x43e09000    # 449.125f
        0x41d90000    # 27.125f
    .end array-data

    .line 111
    :array_15
    .array-data 4
        0x43fd7000    # 506.875f
        0x41c70000    # 24.875f
    .end array-data

    .line 112
    :array_16
    .array-data 4
        0x44467000    # 793.75f
        0x42360000    # 45.5f
    .end array-data

    .line 119
    :array_17
    .array-data 4
        0x3d088889
        0x3d23d70a    # 0.04f
        0x3d4ccccd    # 0.05f
        0x3d888889
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoinIncrSpeed(I)F
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p0

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static getCureentIncrSpeed(I)F
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 138
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_1
    return v1

    .line 134
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    aget v1, v1, v0

    if-ge p0, v1, :cond_1

    .line 135
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getIncrFactorFromLevel(I)F
    .locals 4
    .param p0, "level"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 144
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p0, v1, :cond_2

    .line 145
    :cond_1
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    aget v1, v1, v0

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    aget v2, v2, v0

    sub-int v2, p0, v2

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getLevelFromIncrFactor(F)I
    .locals 4
    .param p0, "factor"    # F

    .prologue
    .line 152
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    .line 153
    const/4 v1, 0x1

    .line 158
    :goto_0
    return v1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 156
    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 157
    :cond_1
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    cmpg-float v1, p0, v1

    if-gez v1, :cond_3

    .line 158
    :cond_2
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    aget v1, v1, v0

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->QUICK_CALC_VALUE:[F

    aget v2, v2, v0

    sub-float v2, p0, v2

    sget-object v3, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    aget v3, v3, v0

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 156
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
