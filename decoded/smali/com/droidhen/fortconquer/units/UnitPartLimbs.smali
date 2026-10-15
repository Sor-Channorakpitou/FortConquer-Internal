.class public Lcom/droidhen/fortconquer/units/UnitPartLimbs;
.super Lcom/droidhen/fortconquer/units/UnitPart;
.source "UnitPartLimbs.java"


# instance fields
.field mLBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

.field mLBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

.field mLBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

.field mLFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

.field mLFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

.field mLFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

.field mRFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

.field mWeapon:Lcom/droidhen/fortconquer/units/UnitPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "unitRace"    # I
    .param p2, "bLeftSide"    # Z

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;-><init>(IZLcom/droidhen/fortconquer/units/Unit;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IZLcom/droidhen/fortconquer/units/Unit;)V
    .locals 4
    .param p1, "unitRace"    # I
    .param p2, "bLeftSide"    # Z
    .param p3, "parent"    # Lcom/droidhen/fortconquer/units/Unit;

    .prologue
    const/16 v3, 0x16

    const/16 v2, 0x8

    .line 31
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 33
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    .line 34
    iput-boolean p2, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mbLeftSide:Z

    .line 35
    iput-object p3, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 36
    invoke-super {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->initDefaultValues()V

    .line 38
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 39
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 40
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 46
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 47
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    .line 48
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-lt v0, v2, :cond_0

    .line 53
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-direct {v0, p1, v3, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 54
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0x17

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 55
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    .line 56
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 61
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-direct {v0, p1, v3, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mWeapon:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 62
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    .line 63
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mWeapon:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-direct {v0, p1, v2, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 69
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 70
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 71
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 72
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    .line 73
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 79
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 80
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildNum:I

    .line 81
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mChildParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
