.class public final Lcom/droidhen/fortconquer/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/Calculator$ECONOMY;,
        Lcom/droidhen/fortconquer/Calculator$POS;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static catapultUpgrade(I)I
    .locals 1
    .param p0, "curLevel"    # I

    .prologue
    .line 78
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v0, v0, 0x5dc

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static evolveCoin(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;)I
    .locals 1
    .param p0, "head"    # Lcom/droidhen/fortconquer/units/Card;
    .param p1, "chest"    # Lcom/droidhen/fortconquer/units/Card;
    .param p2, "limb"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public static fixCardPos(FFLcom/droidhen/fortconquer/units/Card;)[F
    .locals 5
    .param p0, "xm"    # F
    .param p1, "ym"    # F
    .param p2, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 88
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 89
    .local v0, "pos":[F
    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getScaleRate()F

    move-result v1

    .line 90
    .local v1, "scale":F
    const/4 v2, 0x0

    sget-object v3, Lcom/droidhen/fortconquer/Calculator$POS$CARD;->X_SHIFT:[I

    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getChestRace()I

    move-result v4

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, p0

    aput v3, v0, v2

    .line 91
    const/4 v2, 0x1

    sget-object v3, Lcom/droidhen/fortconquer/Calculator$POS$CARD;->Y_SHIFT:[I

    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getLimbRace()I

    move-result v4

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    aput v3, v0, v2

    .line 92
    return-object v0
.end method

.method public static fortUpgrade(I)I
    .locals 1
    .param p0, "curLevel"    # I

    .prologue
    .line 74
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static mineralsUpgrade(I)I
    .locals 2
    .param p0, "curLevel"    # I

    .prologue
    .line 82
    add-int/lit8 v1, p0, -0x1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0xa

    .line 83
    .local v0, "crystal":I
    const/16 v1, 0xa0

    if-le v0, v1, :cond_0

    const/16 v0, 0xa0

    .line 84
    :cond_0
    return v0
.end method
