.class public Lcom/droidhen/fortconquer/units/UnitPartChest;
.super Lcom/droidhen/fortconquer/units/UnitPart;
.source "UnitPartChest.java"


# instance fields
.field mBloodEffect:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

.field mChest:Lcom/droidhen/fortconquer/units/UnitPart;

.field mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

.field mTail:Lcom/droidhen/fortconquer/units/UnitPart;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 8
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 9
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 10
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mPartType:I

    .line 17
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "unitRace"    # I
    .param p2, "bLeftSide"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 8
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 9
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 10
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 21
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    .line 22
    iput-boolean p2, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mbLeftSide:Z

    .line 23
    invoke-super {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->initDefaultValues()V

    .line 24
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-direct {v0, p1, v2, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 25
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildParts:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipudTailType:[I

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 32
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 33
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    .line 34
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->getCamp()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 38
    :cond_2
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0x18

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 39
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0x19

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 40
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    .line 41
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_3
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mBloodEffect:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 46
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildNum:I

    .line 47
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mBloodEffect:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
