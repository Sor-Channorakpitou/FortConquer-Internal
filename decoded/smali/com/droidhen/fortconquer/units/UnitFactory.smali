.class public Lcom/droidhen/fortconquer/units/UnitFactory;
.super Ljava/lang/Object;
.source "UnitFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evolveCards(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;Z)Lcom/droidhen/fortconquer/units/Card;
    .locals 5
    .param p0, "pCardHead"    # Lcom/droidhen/fortconquer/units/Card;
    .param p1, "pCardChest"    # Lcom/droidhen/fortconquer/units/Card;
    .param p2, "pCardLimbs"    # Lcom/droidhen/fortconquer/units/Card;
    .param p3, "useCrystal"    # Z

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v3

    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v4

    invoke-static {v2, v3, v4, p3}, Lcom/droidhen/fortconquer/units/UnitFactory;->evolveUnit(Lcom/droidhen/fortconquer/units/Unit;Lcom/droidhen/fortconquer/units/Unit;Lcom/droidhen/fortconquer/units/Unit;Z)Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    .line 15
    .local v1, "anUnit":Lcom/droidhen/fortconquer/units/Unit;
    new-instance v0, Lcom/droidhen/fortconquer/units/Card;

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 16
    .local v0, "anCard":Lcom/droidhen/fortconquer/units/Card;
    return-object v0
.end method

.method public static evolveUnit(Lcom/droidhen/fortconquer/units/Unit;Lcom/droidhen/fortconquer/units/Unit;Lcom/droidhen/fortconquer/units/Unit;Z)Lcom/droidhen/fortconquer/units/Unit;
    .locals 6
    .param p0, "pUnitHead"    # Lcom/droidhen/fortconquer/units/Unit;
    .param p1, "pUnitChest"    # Lcom/droidhen/fortconquer/units/Unit;
    .param p2, "pUnitLimbs"    # Lcom/droidhen/fortconquer/units/Unit;
    .param p3, "useCrystal"    # Z

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "anUnit":Lcom/droidhen/fortconquer/units/Unit;
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit;

    .end local v0    # "anUnit":Lcom/droidhen/fortconquer/units/Unit;
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    .line 24
    iget-object v2, p1, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    .line 25
    iget-object v3, p2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    .line 26
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    .line 23
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 28
    .restart local v0    # "anUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/Unit;->setNewUnitProps(Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;ZZ)V

    .line 31
    return-object v0
.end method
