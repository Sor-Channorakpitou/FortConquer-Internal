.class public Lcom/droidhen/fortconquer/units/UnitPartHead;
.super Lcom/droidhen/fortconquer/units/UnitPart;
.source "UnitPartHead.java"


# instance fields
.field mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

.field mAttackEffect_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

.field mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

.field mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

.field mHead:Lcom/droidhen/fortconquer/units/UnitPart;

.field mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

.field mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

.field mNose:Lcom/droidhen/fortconquer/units/UnitPart;

.field mTonge:Lcom/droidhen/fortconquer/units/UnitPart;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 9
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 10
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNose:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 11
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mTonge:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mPartType:I

    .line 22
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 8
    .param p1, "unitRace"    # I
    .param p2, "bLeftSide"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 24
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 9
    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 10
    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNose:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 11
    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mTonge:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 26
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    .line 27
    iput-boolean p2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mbLeftSide:Z

    .line 28
    invoke-super {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->initDefaultValues()V

    .line 29
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-direct {v1, p1, v4, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 30
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    .line 32
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->UNIT_RACE_NO_MOUTH:[I

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_0

    .line 36
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-direct {v1, p1, v6, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 37
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 38
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 42
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v2, 0x1a

    invoke-direct {v1, p1, v2, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNose:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 43
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 44
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNose:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 48
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    .line 49
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    new-instance v2, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v3, 0x1b

    invoke-direct {v2, p1, v3, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    aput-object v2, v1, v4

    .line 50
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    new-instance v2, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v3, 0x1c

    invoke-direct {v2, p1, v3, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    aput-object v2, v1, v6

    .line 51
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    new-instance v2, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v3, 0x1d

    invoke-direct {v2, p1, v3, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    aput-object v2, v1, v5

    .line 52
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    new-instance v2, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v3, 0x1e

    invoke-direct {v2, p1, v3, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    aput-object v2, v1, v7

    .line 53
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v2, 0x4

    new-instance v3, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v4, 0x1f

    invoke-direct {v3, p1, v4, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    aput-object v3, v1, v2

    .line 54
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    .line 59
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-ne v1, v7, :cond_4

    .line 61
    :cond_3
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 62
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 63
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    if-eq v1, v5, :cond_5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    const/16 v2, 0x10

    invoke-direct {v1, p1, v2, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 69
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 70
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    if-eq v1, v5, :cond_6

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v2, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 76
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildNum:I

    .line 77
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_6
    return-void

    .line 56
    .restart local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mChildParts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
