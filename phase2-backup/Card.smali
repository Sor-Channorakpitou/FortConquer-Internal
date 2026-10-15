.class public Lcom/droidhen/fortconquer/units/Card;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "Card.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/anddev/andengine/entity/shape/IShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/units/Card$COMPARE_TYPE;,
        Lcom/droidhen/fortconquer/units/Card$TEXT_SIZE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/droidhen/fortconquer/scenes/SmartEntity;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/droidhen/fortconquer/units/Card;",
        ">;",
        "Lorg/anddev/andengine/entity/shape/IShape;"
    }
.end annotation


# static fields
.field public static final CARD_PACK_NUM:I = 0x8

.field public static CHEST:Ljava/lang/String; = null

.field public static DAMAGE:Ljava/lang/String; = null

.field public static HEAD:Ljava/lang/String; = null

.field public static HP:Ljava/lang/String; = null

.field public static final LEVEL_PLUS:I = 0x3

.field private static final LEVEL_PLUS_FIRST:I = 0x7

.field public static LIMBS:Ljava/lang/String; = null

.field public static final MAX_CARD_NUM:I = 0x28

.field public static QUALITY:Ljava/lang/String; = null

.field protected static final REVERSE:I = -0x1

.field public static final SELECTED_CARD_MAX:I = 0x6

.field public static final SELECTED_CARD_START_X:F = 237.0f

.field public static final SELECTED_CARD_START_Y:F = 397.0f

.field public static final SELECTED_CARD_WIDTH:F = 75.0f

.field public static SPEED:Ljava/lang/String; = null

.field public static SPLITTER:Ljava/lang/String; = null

.field static final STAGE_PLUS_BLUE:I = 0xa

.field static final STAGE_PLUS_PURPLE:I = 0x14

.field public static VALUE:Ljava/lang/String;

.field private static compareType:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected id:I

.field private isSmall:Z

.field private mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

.field private mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field protected mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

.field private mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field protected mEvolveProto:Lcom/droidhen/fortconquer/units/Card;

.field protected mSelectLink:Lcom/droidhen/fortconquer/units/Card;

.field protected mUnit:Lcom/droidhen/fortconquer/units/Unit;

.field private mValue:I

.field private msCover:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

.field private msHPBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private msHurt:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snRangeS:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private snSpeedS:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private unitLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private valueTextSize:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const-string v0, ";"

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    .line 318
    const-string v0, "h="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->HEAD:Ljava/lang/String;

    .line 319
    const-string v0, "c="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->CHEST:Ljava/lang/String;

    .line 320
    const-string v0, "l="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->LIMBS:Ljava/lang/String;

    .line 321
    const-string v0, "hp="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->HP:Ljava/lang/String;

    .line 322
    const-string v0, "da="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->DAMAGE:Ljava/lang/String;

    .line 323
    const-string v0, "sp="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->SPEED:Ljava/lang/String;

    .line 324
    const-string v0, "qu="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->QUALITY:Ljava/lang/String;

    .line 325
    const-string v0, "va="

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->VALUE:Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/units/Card;->compareType:Ljava/lang/ThreadLocal;

    .line 430
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    .line 58
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 60
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 62
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 64
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 66
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 68
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 70
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    .line 71
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    .line 78
    iput-byte v1, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    .line 100
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Card;->id:I

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 2
    .param p1, "property"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    .line 58
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 60
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 62
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 64
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 66
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 68
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 70
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    .line 71
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    .line 78
    iput-byte v1, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    .line 111
    iget-object v0, p1, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->deepCopy()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    .line 112
    iget v0, p1, Lcom/droidhen/fortconquer/units/Card;->mValue:I

    iput v0, p0, Lcom/droidhen/fortconquer/units/Card;->mValue:I

    .line 113
    iget-object v0, p1, Lcom/droidhen/fortconquer/units/Card;->mSelectLink:Lcom/droidhen/fortconquer/units/Card;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mSelectLink:Lcom/droidhen/fortconquer/units/Card;

    .line 114
    iget-object v0, p1, Lcom/droidhen/fortconquer/units/Card;->mEvolveProto:Lcom/droidhen/fortconquer/units/Card;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mEvolveProto:Lcom/droidhen/fortconquer/units/Card;

    .line 115
    iget v0, p1, Lcom/droidhen/fortconquer/units/Card;->id:I

    iput v0, p0, Lcom/droidhen/fortconquer/units/Card;->id:I

    .line 116
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/units/Unit;)V
    .locals 2
    .param p1, "pUnit"    # Lcom/droidhen/fortconquer/units/Unit;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    .line 58
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 60
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 62
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 64
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 66
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 68
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 70
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    .line 71
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    .line 78
    iput-byte v1, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    .line 105
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mSelectLink:Lcom/droidhen/fortconquer/units/Card;

    .line 106
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Card;->id:I

    .line 108
    return-void
.end method

.method public static calcDragonBaseValue()I
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "value":I
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x32

    if-gt v1, v2, :cond_0

    .line 193
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, 0x9

    .line 206
    :goto_0
    return v0

    .line 194
    :cond_0
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x96

    if-gt v1, v2, :cond_1

    .line 195
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v1, v1, -0x33

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0xe

    goto :goto_0

    .line 196
    :cond_1
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0xfa

    if-gt v1, v2, :cond_2

    .line 197
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit16 v1, v1, -0x97

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x22

    goto :goto_0

    .line 198
    :cond_2
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x15e

    if-gt v1, v2, :cond_3

    .line 199
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit16 v1, v1, -0xfb

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0x40

    goto :goto_0

    .line 200
    :cond_3
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x1c2

    if-gt v1, v2, :cond_4

    .line 201
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit16 v1, v1, -0x15f

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v1, 0x68

    goto :goto_0

    .line 202
    :cond_4
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x226

    if-gt v1, v2, :cond_5

    .line 203
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit16 v1, v1, -0x1c3

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x6

    add-int/lit16 v0, v1, 0x9a

    goto :goto_0

    .line 205
    :cond_5
    const/16 v0, 0xd6

    goto :goto_0
.end method

.method public static genCardForNewbie(I)Lcom/droidhen/fortconquer/units/Card;
    .locals 5
    .param p0, "race"    # I

    .prologue
    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, "quality":I
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v3

    .line 289
    .local v3, "stage":I
    new-instance v1, Lcom/droidhen/fortconquer/units/Unit;

    const/4 v4, 0x1

    invoke-direct {v1, p0, p0, p0, v4}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 290
    .local v1, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const v4, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v4}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 291
    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Unit;->rebuildAttributes(I)V

    .line 292
    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 294
    new-instance v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 295
    .local v0, "newCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getSellPrice()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/droidhen/fortconquer/units/Card;->setValue(I)V

    .line 296
    return-object v0
.end method

.method public static genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;
    .locals 9
    .param p0, "qualityIndicator"    # I

    .prologue
    const/4 v8, 0x2

    .line 174
    sget-object v6, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v6, v6, v8

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v3

    .line 175
    .local v3, "race":I
    new-instance v2, Lcom/droidhen/fortconquer/units/Unit;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v3, v3, v6}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 176
    .local v2, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const v6, 0x3eb33333    # 0.35f

    invoke-virtual {v2, v6}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 177
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v6

    invoke-static {p0}, Lcom/droidhen/fortconquer/units/Card;->getQualityStagePlus(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/droidhen/fortconquer/units/Unit;->rebuildAttributes(I)V

    .line 180
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->calcLevelFromAttr()I

    move-result v5

    .line 181
    .local v5, "unitLevel":I
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v4

    .line 182
    .local v4, "standardLevel":I
    sub-int v1, v5, v4

    .line 183
    .local v1, "levelDelta":I
    invoke-virtual {v2, p0}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 184
    new-instance v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v0, v2}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 185
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->calcDragonBaseValue()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/units/Card;->getValueModifierViaLevelDetla(ILcom/droidhen/fortconquer/units/Unit;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lcom/droidhen/fortconquer/units/Card;->setValue(I)V

    .line 186
    return-object v0
.end method

.method public static genFirstDragonCard()Lcom/droidhen/fortconquer/units/Card;
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 210
    new-instance v1, Lcom/droidhen/fortconquer/units/Unit;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 211
    .local v1, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 212
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->rebuildAttributes(I)V

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 215
    new-instance v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 216
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    return-object v0
.end method

.method public static genGiftPackageDragonCard(I)Lcom/droidhen/fortconquer/units/Card;
    .locals 5
    .param p0, "dragonType"    # I

    .prologue
    const/4 v4, 0x1

    .line 220
    const/16 v2, 0x11

    .line 221
    .local v2, "type":I
    if-ne p0, v4, :cond_0

    .line 222
    const/16 v2, 0x11

    .line 230
    :goto_0
    new-instance v1, Lcom/droidhen/fortconquer/units/Unit;

    invoke-direct {v1, v2, v2, v2, v4}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 231
    .local v1, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const v3, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 232
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Unit;->rebuildAttributes(I)V

    .line 233
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 234
    new-instance v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 235
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    return-object v0

    .line 223
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    .end local v1    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    :cond_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    .line 224
    const/16 v2, 0x10

    .line 225
    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    .line 226
    const/16 v2, 0x13

    .line 227
    goto :goto_0

    .line 228
    :cond_2
    const/16 v2, 0x12

    goto :goto_0
.end method

.method private genNum()V
    .locals 13

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/high16 v1, 0x42680000    # 58.0f

    .line 600
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 602
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 603
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeedS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 604
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRangeS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-nez v0, :cond_1

    .line 607
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0x2

    .line 608
    .local v12, "h":I
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v2, v12, 0xa9

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 609
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 610
    new-instance v6, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v0, v12, 0xb9

    int-to-float v8, v0

    sget-object v9, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v10, 0x6

    move v7, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 611
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 612
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v2, v12, 0xc9

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 613
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getAttackDistance()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 614
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v2, v12, 0xd9

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 615
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 617
    .end local v12    # "h":I
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 618
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 619
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 620
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 621
    return-void
.end method

.method private genNumS()V
    .locals 13

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/high16 v1, 0x42680000    # 58.0f

    .line 624
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 626
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 627
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 628
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->detachSelf()Z

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-nez v0, :cond_1

    .line 631
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0x2

    .line 632
    .local v12, "h":I
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v2, v12, 0xa9

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 633
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 634
    new-instance v6, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v0, v12, 0xb9

    int-to-float v8, v0

    sget-object v9, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v10, 0x6

    move v7, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 635
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 636
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v2, v12, 0xc9

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRangeS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 637
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRangeS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getAttackDistance()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 638
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    rsub-int v2, v12, 0xd9

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeedS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 639
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeedS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 641
    .end local v12    # "h":I
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 642
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 643
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeedS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 644
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRangeS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 645
    return-void
.end method

.method public static genRandomCard()Lcom/droidhen/fortconquer/units/Card;
    .locals 15

    .prologue
    const/16 v14, 0x64

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 239
    const/4 v4, 0x0

    .line 240
    .local v4, "qualityIndicator":I
    invoke-static {v13, v14}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v6

    .line 241
    .local v6, "rand":I
    const/16 v10, 0xf

    if-gt v6, v10, :cond_3

    .line 242
    const/4 v4, 0x2

    .line 246
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 248
    .local v5, "race":I
    sget-object v10, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v10, v10, v12

    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v0, v10, -0x1

    .line 250
    .local v0, "end":I
    sget v10, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v11, 0x65

    if-gt v10, v11, :cond_1

    .line 251
    sget-object v10, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v10, v10, v12

    add-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, -0x1

    .line 252
    sget v11, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0xa

    .line 251
    add-int v0, v10, v11

    .line 254
    :cond_1
    sget-object v10, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v10, v10, v12

    invoke-static {v10, v0}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v5

    .line 255
    rem-int/lit8 v10, v5, 0x2

    if-nez v10, :cond_4

    .line 256
    sget-object v10, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v10, v10, v12

    div-int/lit8 v11, v5, 0x2

    add-int v5, v10, v11

    .line 260
    :goto_1
    invoke-static {v13, v14}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v6

    .line 261
    const/4 v7, 0x0

    .line 262
    .local v7, "stage":I
    const/16 v10, 0x21

    if-ge v6, v10, :cond_5

    .line 263
    const/4 v7, -0x1

    .line 267
    :cond_2
    :goto_2
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v10

    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Card;->getQualityStagePlus(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 269
    new-instance v3, Lcom/droidhen/fortconquer/units/Unit;

    invoke-direct {v3, v5, v5, v5, v13}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 270
    .local v3, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const v10, 0x3eb33333    # 0.35f

    invoke-virtual {v3, v10}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 271
    invoke-virtual {v3, v7}, Lcom/droidhen/fortconquer/units/Unit;->rebuildAttributes(I)V

    .line 274
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->calcLevelFromAttr()I

    move-result v9

    .line 275
    .local v9, "unitLevel":I
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v8

    .line 276
    .local v8, "standardLevel":I
    sub-int v1, v9, v8

    .line 278
    .local v1, "levelDelta":I
    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 280
    new-instance v2, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v2, v3}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 281
    .local v2, "newCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getSellPrice()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v1, v3}, Lcom/droidhen/fortconquer/units/Card;->getValueModifierViaLevelDetla(ILcom/droidhen/fortconquer/units/Unit;)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Lcom/droidhen/fortconquer/units/Card;->setValue(I)V

    .line 282
    return-object v2

    .line 243
    .end local v0    # "end":I
    .end local v1    # "levelDelta":I
    .end local v2    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    .end local v3    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    .end local v5    # "race":I
    .end local v7    # "stage":I
    .end local v8    # "standardLevel":I
    .end local v9    # "unitLevel":I
    :cond_3
    const/16 v10, 0x28

    if-gt v6, v10, :cond_0

    .line 244
    const/4 v4, 0x1

    goto :goto_0

    .line 258
    .restart local v0    # "end":I
    .restart local v5    # "race":I
    :cond_4
    sget-object v10, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    aget v10, v10, v13

    div-int/lit8 v11, v5, 0x2

    add-int v5, v10, v11

    goto :goto_1

    .line 264
    .restart local v7    # "stage":I
    :cond_5
    const/16 v10, 0x42

    if-ge v6, v10, :cond_2

    .line 265
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public static getCardStandardLevel()I
    .locals 2

    .prologue
    .line 129
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 130
    const/4 v0, 0x7

    .line 132
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static getQualifyViaLevelDelta(I)I
    .locals 1
    .param p0, "levelDelta"    # I

    .prologue
    .line 147
    const/16 v0, 0x14

    if-lt p0, v0, :cond_0

    .line 148
    const/4 v0, 0x2

    .line 152
    :goto_0
    return v0

    .line 149
    :cond_0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQualityStagePlus(I)I
    .locals 1
    .param p0, "qualityIndicator"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 139
    const/16 v0, 0xa

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 141
    const/16 v0, 0x14

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValueModifierViaLevelDetla(ILcom/droidhen/fortconquer/units/Unit;)F
    .locals 4
    .param p0, "levelDelta"    # I
    .param p1, "unit"    # Lcom/droidhen/fortconquer/units/Unit;

    .prologue
    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    .line 158
    if-gez p0, :cond_0

    .line 159
    invoke-virtual {p1, v3}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 169
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v1, 0x5

    if-ge p0, v1, :cond_1

    .line 162
    invoke-virtual {p1, v3}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 163
    int-to-float v1, p0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 164
    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 166
    const/high16 v0, 0x40200000    # 2.5f

    add-int/lit8 v1, p0, -0xa

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 169
    const/high16 v0, 0x40800000    # 4.0f

    add-int/lit8 v1, p0, -0x14

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static setCompareType(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 427
    sget-object v0, Lcom/droidhen/fortconquer/units/Card;->compareType:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method public static str2card(Ljava/lang/String;)Lcom/droidhen/fortconquer/units/Card;
    .locals 15
    .param p0, "cardString"    # Ljava/lang/String;

    .prologue
    .line 344
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 345
    :cond_0
    const/4 v2, 0x0

    .line 381
    :goto_0
    return-object v2

    .line 346
    :cond_1
    const-string v12, "__TroopsCard__"

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 347
    new-instance v2, Lcom/droidhen/fortconquer/units/TroopsCard;

    invoke-direct {v2}, Lcom/droidhen/fortconquer/units/TroopsCard;-><init>()V

    goto :goto_0

    .line 349
    :cond_2
    const/4 v2, 0x0

    .line 350
    .local v2, "newCard":Lcom/droidhen/fortconquer/units/Card;
    const/4 v8, 0x0

    .local v8, "raceHead":I
    const/4 v7, 0x0

    .local v7, "raceChest":I
    const/4 v9, 0x0

    .local v9, "raceLimbs":I
    const/4 v6, 0x0

    .local v6, "quality":I
    const/4 v11, 0x0

    .line 351
    .local v11, "value":I
    const/4 v1, 0x0

    .local v1, "health":F
    const/4 v0, 0x0

    .local v0, "damage":F
    const/4 v10, 0x0

    .line 352
    .local v10, "speed":F
    sget-object v12, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "pieces":[Ljava/lang/String;
    array-length v13, v5

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_3

    .line 374
    new-instance v3, Lcom/droidhen/fortconquer/units/Unit;

    const/4 v12, 0x1

    invoke-direct {v3, v8, v7, v9, v12}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 375
    .local v3, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    invoke-virtual {v3, v1, v0, v10}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    .line 376
    invoke-virtual {v3, v6}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 378
    const v12, 0x3eb33333    # 0.35f

    invoke-virtual {v3, v12}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 379
    new-instance v2, Lcom/droidhen/fortconquer/units/Card;

    .end local v2    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-direct {v2, v3}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 380
    .restart local v2    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    iput v11, v2, Lcom/droidhen/fortconquer/units/Card;->mValue:I

    goto :goto_0

    .line 354
    .end local v3    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    :cond_3
    aget-object v4, v5, v12

    .line 355
    .local v4, "piece":Ljava/lang/String;
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->HEAD:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 356
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->HEAD:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 354
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 357
    :cond_5
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->CHEST:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 358
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->CHEST:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 359
    goto :goto_2

    :cond_6
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->LIMBS:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 360
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->LIMBS:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 361
    goto :goto_2

    :cond_7
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->HP:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 362
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->HP:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 363
    goto :goto_2

    :cond_8
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->DAMAGE:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 364
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->DAMAGE:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 365
    goto :goto_2

    :cond_9
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->SPEED:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 366
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->SPEED:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 367
    goto :goto_2

    :cond_a
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->QUALITY:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 368
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->QUALITY:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 369
    goto/16 :goto_2

    :cond_b
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->VALUE:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 370
    sget-object v14, Lcom/droidhen/fortconquer/units/Card;->VALUE:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_2
.end method


# virtual methods
.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 1
    .param p1, "pOtherShape"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z

    move-result v0

    .line 791
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/droidhen/fortconquer/units/Card;)I
    .locals 6
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/high16 v5, 0x41c80000    # 25.0f

    const v4, 0x47c35000    # 100000.0f

    .line 434
    instance-of v1, p1, Lcom/droidhen/fortconquer/units/BlankCard;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/droidhen/fortconquer/units/TroopsCard;

    if-eqz v1, :cond_1

    .line 435
    :cond_0
    const/4 v1, -0x1

    .line 452
    :goto_0
    return v1

    .line 437
    :cond_1
    sget-object v1, Lcom/droidhen/fortconquer/units/Card;->compareType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 438
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 449
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getStoneCost()I

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getStoneCost()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 440
    :pswitch_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    iget v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v2

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v3

    iget v3, v3, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    add-int/lit8 v3, v3, 0x19

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 442
    :pswitch_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 444
    :pswitch_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 446
    :pswitch_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v1

    iget-object v2, p1, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getStoneCost()I

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getStoneCost()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p0, p1}, Lcom/droidhen/fortconquer/units/Card;->compareTo(Lcom/droidhen/fortconquer/units/Card;)I

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->contains(FF)Z

    move-result v0

    .line 696
    :goto_0
    return v0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->contains(FF)Z

    move-result v0

    goto :goto_0

    .line 696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deepCopy()Lcom/droidhen/fortconquer/units/Card;
    .locals 3

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 387
    .local v0, "newCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 388
    return-object v0
.end method

.method public deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Card;)V

    return-object v0
.end method

.method public detachHPBar()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msCover:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 560
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->detachSelf()Z

    .line 561
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 562
    return-void
.end method

.method public detachHurt()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHurt:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 556
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 706
    if-nez p1, :cond_1

    .line 715
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 708
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_0

    .line 709
    iget v1, p0, Lcom/droidhen/fortconquer/units/Card;->id:I

    move-object v0, p1

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    iget v0, v0, Lcom/droidhen/fortconquer/units/Card;->id:I

    if-ne v1, v0, :cond_2

    .line 710
    const/4 v0, 0x1

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    check-cast p1, Lcom/droidhen/fortconquer/units/Card;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Unit;->isPropertyEq(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public evolve(Lcom/droidhen/fortconquer/units/Card;)Lcom/droidhen/fortconquer/units/Card;
    .locals 0
    .param p1, "pairCard"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 126
    return-object p0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getBaseHeight()F

    move-result v0

    .line 764
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getBaseHeight()F

    move-result v0

    goto :goto_0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getBaseWidth()F

    move-result v0

    .line 755
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getBaseWidth()F

    move-result v0

    goto :goto_0
.end method

.method public getCardBack()Lorg/anddev/andengine/entity/shape/IShape;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    return-object v0
.end method

.method public getCardFrame()Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    return-object v0
.end method

.method public getCardFront()Lorg/anddev/andengine/entity/shape/IShape;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeight()F

    move-result v0

    .line 746
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeight()F

    move-result v0

    goto :goto_0
.end method

.method public getHeightScaled()F
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeightScaled()F

    move-result v0

    .line 782
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeightScaled()F

    move-result v0

    goto :goto_0
.end method

.method public getRecycleValue()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->getSellPrice()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSelectedLink()Lcom/droidhen/fortconquer/units/Card;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mSelectLink:Lcom/droidhen/fortconquer/units/Card;

    return-object v0
.end method

.method public getUnit()Lcom/droidhen/fortconquer/units/Unit;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/droidhen/fortconquer/units/Card;->mValue:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidth()F

    move-result v0

    .line 737
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidth()F

    move-result v0

    goto :goto_0
.end method

.method public getWidthScaled()F
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidthScaled()F

    move-result v0

    .line 773
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidthScaled()F

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/droidhen/fortconquer/units/Card;->id:I

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public onAttached()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, v0, v0}, Lcom/droidhen/fortconquer/units/Card;->setScaleCenter(FF)V

    .line 686
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 687
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 680
    invoke-super {p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->onDetached()V

    .line 681
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/Card;->setVisible(Z)V

    .line 834
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Unit;->setHealth(F)V

    .line 835
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "pAlpha"    # F

    .prologue
    .line 806
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setAlpha(F)V

    .line 807
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setAlpha(F)V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setAlpha(F)V

    .line 813
    :cond_1
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 1
    .param p1, "pSourceBlendFunction"    # I
    .param p2, "pDestinationBlendFunction"    # I

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setBlendFunction(II)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setBlendFunction(II)V

    goto :goto_0
.end method

.method public setCardBack(Lorg/anddev/andengine/entity/shape/IShape;)V
    .locals 0
    .param p1, "mCardBack"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    .line 821
    return-void
.end method

.method public setCardFront(Lorg/anddev/andengine/entity/shape/IShape;)V
    .locals 0
    .param p1, "mCardFront"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    .line 829
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 1
    .param p1, "pCullingEnabled"    # Z

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCullingEnabled(Z)V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCullingEnabled(Z)V

    goto :goto_0
.end method

.method public setHPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 569
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(F)V

    .line 570
    return-void
.end method

.method public setHPercent(FLjava/lang/Runnable;)V
    .locals 1
    .param p1, "percent"    # F
    .param p2, "pTask"    # Ljava/lang/Runnable;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(FLjava/lang/Runnable;)V

    .line 578
    return-void
.end method

.method public setHPercent(FLjava/lang/Runnable;J)V
    .locals 1
    .param p1, "percent"    # F
    .param p2, "pTask"    # Ljava/lang/Runnable;
    .param p3, "minAffectMs"    # J

    .prologue
    .line 581
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(FLjava/lang/Runnable;J)V

    .line 582
    return-void
.end method

.method public setHPercentDirect(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 573
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 574
    return-void
.end method

.method public setIsSmall(Z)V
    .locals 1
    .param p1, "isSmall"    # Z

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    .line 460
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 462
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "pScale"    # F

    .prologue
    .line 586
    invoke-virtual {p0, p1, p1}, Lcom/droidhen/fortconquer/units/Card;->setScale(FF)V

    .line 587
    return-void
.end method

.method public setScale(FF)V
    .locals 4
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 649
    invoke-super {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setScale(FF)V

    .line 650
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 651
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->unitLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-nez v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->hasParent()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-nez v0, :cond_3

    iget-byte v0, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    if-eqz v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 655
    :cond_4
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Card;->genNumS()V

    .line 657
    :cond_5
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-nez v0, :cond_6

    iget-byte v0, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    if-eqz v0, :cond_7

    :cond_6
    iget-byte v0, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->hasParent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 658
    :cond_8
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Card;->genNum()V

    .line 660
    :cond_9
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    if-nez v0, :cond_a

    .line 661
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttack:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 662
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealth:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 663
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRange:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 664
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeed:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 666
    :cond_a
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snAttackS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 668
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snHealthS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 669
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snRangeS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    .line 670
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->snSpeedS:Lcom/droidhen/fortconquer/kits/NumberSprite;

    div-float v1, v3, p1

    div-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(FF)V

    goto/16 :goto_0
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "pScale"    # F

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getScaleY()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/droidhen/fortconquer/units/Card;->setScale(FF)V

    .line 592
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "pScale"    # F

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getScaleX()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/droidhen/fortconquer/units/Card;->setScale(FF)V

    .line 597
    return-void
.end method

.method public setSelectedLink(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 0
    .param p1, "index"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Card;->mSelectLink:Lcom/droidhen/fortconquer/units/Card;

    .line 97
    return-void
.end method

.method public setTextSize(B)V
    .locals 0
    .param p1, "size"    # B

    .prologue
    .line 675
    iput-byte p1, p0, Lcom/droidhen/fortconquer/units/Card;->valueTextSize:B

    .line 676
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/droidhen/fortconquer/units/Card;->mValue:I

    .line 302
    return-void
.end method

.method public showHPBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 534
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msCover:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x43380000    # 184.0f

    const/high16 v3, 0x43110000    # 145.0f

    const/high16 v4, 0x42180000    # 38.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardCover:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msCover:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 536
    new-instance v0, Lcom/droidhen/fortconquer/component/TripleBarEntity;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v10, v10}, Lcom/droidhen/fortconquer/component/TripleBarEntity;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    .line 537
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(FF)V

    .line 538
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setSpeedScale(F)V

    .line 539
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-float v6, v0

    .line 540
    .local v6, "h":F
    const/high16 v7, 0x42fc0000    # 126.0f

    .line 541
    .local v7, "w":F
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v7, v1

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v6, v2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setScale(FF)V

    .line 542
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->getX()F

    move-result v1

    sub-float/2addr v1, v8

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->getY()F

    move-result v2

    sub-float/2addr v2, v8

    add-float v3, v7, v9

    add-float v4, v6, v9

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 544
    .end local v6    # "h":F
    .end local v7    # "w":F
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msCover:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->hasParent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->msCover:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 546
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 547
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Card;->msHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 549
    :cond_1
    return-void
.end method

.method public showHurt()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->HEAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 331
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->CHEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 332
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->LIMBS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 333
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->HP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 334
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->DAMAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 335
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPEED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 336
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->QUALITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 337
    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/droidhen/fortconquer/units/Card;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/units/Card;->SPLITTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "cardString":Ljava/lang/String;
    return-object v0
.end method

.method public updateView()V
    .locals 9

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x0

    .line 469
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->unitLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-nez v3, :cond_0

    .line 470
    new-instance v3, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v3, v6, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->unitLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 471
    new-instance v3, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v3, v6, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 472
    new-instance v3, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 473
    new-instance v3, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v4, 0x41500000    # 13.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCampIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v5

    invoke-direct {v3, v4, v8, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 474
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 475
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3, v6, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setScaleCenter(FF)V

    .line 476
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->unitLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-nez v3, :cond_1

    .line 479
    new-instance v3, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v3, v6, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 480
    new-instance v3, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardFrame:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v4

    invoke-direct {v3, v6, v6, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 481
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Card;->genNum()V

    .line 482
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 483
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v3, :cond_2

    .line 486
    new-instance v3, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v3, v6, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 487
    new-instance v3, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardSmall:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v4

    invoke-direct {v3, v6, v6, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 488
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 489
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardSmallFrame:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 491
    :cond_2
    const/16 v0, 0x4d

    .line 492
    .local v0, "centerX":I
    const/16 v1, 0x5a

    .line 493
    .local v1, "centerY":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    if-eqz v3, :cond_3

    .line 494
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardBack:Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 496
    :cond_3
    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Card;->isSmall:Z

    if-eqz v3, :cond_7

    .line 497
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_6

    .line 498
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    const v4, 0x3ef5c28f    # 0.48f

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 502
    :goto_0
    const/16 v0, 0x2a

    .line 503
    const/16 v1, 0x32

    .line 504
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 505
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setScale(F)V

    .line 506
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3, v7, v7}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 507
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v3, :cond_4

    .line 508
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachSelf()Z

    .line 509
    :cond_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 523
    :goto_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->unitLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 524
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->numberLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 525
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->msHPLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 526
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    if-eqz v3, :cond_5

    .line 527
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCardFront:Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 529
    :cond_5
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-static {v3, v4, p0}, Lcom/droidhen/fortconquer/Calculator;->fixCardPos(FFLcom/droidhen/fortconquer/units/Card;)[F

    move-result-object v2

    .line 530
    .local v2, "pos":[F
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    .line 531
    return-void

    .line 500
    .end local v2    # "pos":[F
    :cond_6
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    const v4, 0x3ed1eb85    # 0.41f

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    goto :goto_0

    .line 511
    :cond_7
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_9

    .line 512
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    .line 516
    :goto_2
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 517
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const v4, 0x3f35c28f    # 0.71f

    invoke-virtual {v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setScale(F)V

    .line 518
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mCampIcon:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 519
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v3, :cond_8

    .line 520
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->smallLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachSelf()Z

    .line 521
    :cond_8
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->bigLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v3}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto :goto_1

    .line 514
    :cond_9
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/units/Unit;->setScaleRate(F)V

    goto :goto_2
.end method

.method public useCrystalToBuy()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Card;->mUnit:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
