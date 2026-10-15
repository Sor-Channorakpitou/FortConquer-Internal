.class public Lcom/droidhen/fortconquer/units/UnitPart;
.super Ljava/lang/Object;
.source "UnitPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/units/UnitPart$UnitState;
    }
.end annotation


# instance fields
.field mA2WListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

.field protected mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mAttackDistance:I

.field protected mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

.field mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

.field protected mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

.field protected mBaseScaleX:F

.field protected mBaseScaleY:F

.field protected mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mBeAttackedNum:I

.field protected mCamp:I

.field protected mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mChildNum:I

.field protected mChildParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/UnitPart;",
            ">;"
        }
    .end annotation
.end field

.field protected mCoolDown:F

.field protected mDescriptionString:Ljava/lang/String;

.field protected mDpa1:F

.field protected mDpa2:F

.field protected mDps:F

.field protected mDurationMakeup:F

.field protected mHealth:F

.field protected mHost:Lcom/droidhen/fortconquer/units/UnitPart;

.field protected mInitHealth:F

.field protected mInitRotation:F

.field protected mLevel:I

.field mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

.field protected mOffsetX:F

.field protected mOffsetY:F

.field protected mParent:Lcom/droidhen/fortconquer/units/UnitPart;

.field protected mPartType:I

.field public mPosCol:I

.field protected mPosLane:I

.field private mQuality:I

.field public mRace:I

.field protected mScale:F

.field protected mSpeed:F

.field private mStageMatch:I

.field public mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

.field protected mTargetDist:I

.field protected mUnitPartName:Ljava/lang/String;

.field mW2AListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

.field protected mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mbLeftSide:Z

.field private rotationCenterX:F

.field private rotationCenterY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mStageMatch:I

    .line 383
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "unitRace"    # I
    .param p2, "partType"    # I
    .param p3, "bLeftSide"    # Z

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    .line 388
    return-void
.end method

.method public constructor <init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V
    .locals 3
    .param p1, "unitRace"    # I
    .param p2, "partType"    # I
    .param p3, "bLeftSide"    # Z
    .param p4, "parent"    # Lcom/droidhen/fortconquer/units/UnitPart;

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mStageMatch:I

    .line 455
    iput-object p4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 456
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    .line 457
    iput p2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    .line 458
    iput-boolean p3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    .line 460
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipedNames:[Ljava/lang/String;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipedPartNames:[Ljava/lang/String;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mUnitPartName:Ljava/lang/String;

    .line 467
    :cond_0
    :goto_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->createSprite()V

    .line 473
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mScale:F

    .line 475
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 476
    return-void

    .line 462
    :cond_2
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sQuadNames:[Ljava/lang/String;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    add-int/lit8 v2, v2, -0x8

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sQuadPartNames:[Ljava/lang/String;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mUnitPartName:Ljava/lang/String;

    goto :goto_0

    .line 464
    :cond_3
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "building: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipedPartNames:[Ljava/lang/String;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    add-int/lit8 v2, v2, -0x64

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mUnitPartName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addModifierListeners()V
    .locals 3

    .prologue
    .line 891
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_2

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_1

    .line 945
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 895
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->addModifierListeners()V

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_3

    .line 902
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 904
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_4

    .line 906
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 908
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_5

    .line 910
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 912
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_6

    .line 914
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 916
    :cond_6
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_7

    .line 918
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 920
    :cond_7
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_8

    .line 922
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 924
    :cond_8
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_9

    .line 926
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 928
    :cond_9
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_a

    .line 930
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 932
    :cond_a
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_b

    .line 934
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 937
    :cond_b
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_c

    .line 939
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 941
    :cond_c
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    goto/16 :goto_1
.end method

.method protected attack(I)V
    .locals 4
    .param p1, "modIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2, v2, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setColor(FFF)V

    .line 163
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->clearEntityModifiers()V

    .line 164
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_5

    .line 166
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_3

    .line 168
    if-ne p1, v3, :cond_2

    .line 170
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 171
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 201
    :cond_0
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 203
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_1

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_7

    .line 210
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 174
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_0

    .line 178
    if-ne p1, v3, :cond_4

    .line 180
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 181
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 184
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 188
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_6

    .line 192
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 193
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 195
    :cond_6
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 197
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 207
    .restart local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, p1}, Lcom/droidhen/fortconquer/units/UnitPart;->attack(I)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected attackDone()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->attackDone()V

    .line 216
    :cond_0
    return-void
.end method

.method protected declared-synchronized beAttacked(F)F
    .locals 2
    .param p1, "pDamage"    # F

    .prologue
    .line 224
    monitor-enter p0

    move v0, p1

    .line 226
    .local v0, "finalDamage":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 227
    const/high16 v0, 0x3f800000    # 1.0f

    .line 229
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return v0

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected celebrate()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 332
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 372
    :cond_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setColor(FFF)V

    .line 339
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_4

    .line 341
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 344
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 363
    :cond_2
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 365
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_0

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->celebrate()V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 348
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_2

    .line 352
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_5

    .line 354
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 355
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 357
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 359
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method protected createActionModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V
    .locals 9
    .param p1, "pRace"    # I
    .param p2, "srcModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p3, "srcModifiersRight"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p4, "modifierIndex"    # I

    .prologue
    const/16 v8, 0x1a

    const/4 v7, 0x3

    .line 1001
    if-eqz p2, :cond_0

    array-length v4, p2

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, p2, v4

    if-eqz v4, :cond_0

    .line 1004
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eqz v4, :cond_5

    .line 1005
    move-object v3, p2

    .line 1009
    .local v3, "tmpCeleModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :goto_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v5, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-direct {v5, v3}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    aput-object v5, v4, p4

    .line 1012
    .end local v3    # "tmpCeleModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_0
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    if-ne v4, v7, :cond_1

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_1

    .line 1014
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v4, v4, p4

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v2

    .line 1015
    .local v2, "rArmActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    add-int/lit8 v5, p4, 0x1

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v6, v6, p4

    invoke-virtual {p0, v2, v6}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1017
    .end local v2    # "rArmActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_1
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v4, v7, :cond_2

    .line 1019
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v4, v4, p4

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    .line 1020
    .local v0, "chestActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    add-int/lit8 v5, p4, 0x1

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v6, v6, p4

    invoke-virtual {p0, v0, v6}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1022
    .end local v0    # "chestActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_2
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1023
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-eq v4, v8, :cond_3

    .line 1024
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v4, v8, :cond_4

    .line 1026
    :cond_3
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4

    .line 1028
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v4, v4, p4

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    .line 1029
    .local v1, "headActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    add-int/lit8 v5, p4, 0x1

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v6, v6, p4

    invoke-virtual {p0, v1, v6}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1032
    .end local v1    # "headActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_4
    return-void

    .line 1007
    :cond_5
    move-object v3, p3

    .restart local v3    # "tmpCeleModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto :goto_0
.end method

.method protected createAttackModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;IF)V
    .locals 9
    .param p1, "pRace"    # I
    .param p2, "attackModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p3, "attackModifiersRight"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p4, "modifierIndex"    # I
    .param p5, "attackDelay"    # F

    .prologue
    .line 1037
    if-eqz p2, :cond_1

    array-length v5, p2

    if-eqz v5, :cond_1

    .line 1041
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    .line 1042
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v6, 0x11

    if-le v5, v6, :cond_8

    .line 1044
    :cond_0
    array-length v5, p2

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1045
    .local v4, "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v5, 0x0

    new-instance v6, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v7, 0x41c00000    # 24.0f

    div-float v7, p5, v7

    iget v8, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mDurationMakeup:F

    mul-float/2addr v7, v8

    invoke-direct {v6, v7}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    aput-object v6, v4, v5

    .line 1046
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_6

    .line 1061
    .end local v2    # "i":I
    :goto_1
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_a

    .line 1062
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v6, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    iget-object v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-direct {v6, v7, v4}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    aput-object v6, v5, p4

    .line 1067
    .end local v4    # "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_1
    :goto_2
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v6, 0x16

    if-ne v5, v6, :cond_2

    .line 1069
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v5, v5, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v5, v5, p4

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v3

    .line 1070
    .local v3, "rArmActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    add-int/lit8 v6, p4, 0x1

    iget-object v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v7, v7, p4

    invoke-virtual {p0, v3, v7}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1072
    .end local v3    # "rArmActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_2
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1074
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v5, v5, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v5, v5, p4

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    .line 1075
    .local v0, "chestActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    add-int/lit8 v6, p4, 0x1

    iget-object v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v7, v7, p4

    invoke-virtual {p0, v0, v7}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1077
    .end local v0    # "chestActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_3
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 1078
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_4

    .line 1079
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_5

    .line 1081
    :cond_4
    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    .line 1083
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v5, v5, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v5, v5, p4

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    .line 1084
    .local v1, "headActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    add-int/lit8 v6, p4, 0x1

    iget-object v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v7, v7, p4

    invoke-virtual {p0, v1, v7}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1087
    .end local v1    # "headActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_5
    return-void

    .line 1048
    .restart local v2    # "i":I
    .restart local v4    # "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_6
    iget-boolean v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eqz v5, :cond_7

    .line 1049
    add-int/lit8 v5, v2, 0x1

    aget-object v6, p2, v2

    aput-object v6, v4, v5

    .line 1046
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1051
    :cond_7
    add-int/lit8 v5, v2, 0x1

    aget-object v6, p3, v2

    aput-object v6, v4, v5

    goto :goto_3

    .line 1055
    .end local v2    # "i":I
    .end local v4    # "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_8
    iget-boolean v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eqz v5, :cond_9

    .line 1056
    move-object v4, p2

    .restart local v4    # "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto/16 :goto_1

    .line 1058
    .end local v4    # "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_9
    move-object v4, p3

    .restart local v4    # "tmpAttackModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto/16 :goto_1

    .line 1064
    :cond_a
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v6, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-direct {v6, v4}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    aput-object v6, v5, p4

    goto/16 :goto_2
.end method

.method protected createCombinedModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 3
    .param p1, "hostActionModifiers"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p2, "partActionModifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 1090
    if-eqz p2, :cond_0

    .line 1091
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    move-object p1, v0

    .line 1094
    .end local p1    # "hostActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_0
    return-object p1
.end method

.method protected createCombinedWalkModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 4
    .param p1, "hostActionModifiers"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v0, :cond_0

    .line 1177
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1180
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    goto :goto_0
.end method

.method protected createModifierListeners()V
    .locals 1

    .prologue
    .line 1146
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/UnitPart$1;-><init>(Lcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .line 1158
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .line 1159
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .line 1161
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPart$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/UnitPart$2;-><init>(Lcom/droidhen/fortconquer/units/UnitPart;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .line 1173
    return-void
.end method

.method public createModifiers(FZF)V
    .locals 12
    .param p1, "pSpeed"    # F
    .param p2, "bNoRotation"    # Z
    .param p3, "attackDelay"    # F

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v4, 0x2

    .line 949
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v0, :cond_1

    .line 951
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v6, v0, :cond_0

    .line 993
    .end local v6    # "i":I
    :goto_1
    return-void

    .line 953
    .restart local v6    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/droidhen/fortconquer/units/UnitPart;->createModifiers(FZF)V

    .line 951
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 958
    .end local v6    # "i":I
    :cond_1
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    .line 959
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getDurationMakeup()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mDurationMakeup:F

    .line 961
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    .line 962
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    iget v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mDurationMakeup:F

    .line 961
    invoke-static {v0, v1, v2, v3, p2}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampModifiersWithSpeed(IIIFZ)[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v7

    .line 964
    .local v7, "tmpModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->createModifierListeners()V

    .line 965
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 967
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/droidhen/fortconquer/units/UnitPart;->createWalkModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;F)V

    .line 969
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v2, v7, v4

    const/4 v0, 0x3

    aget-object v3, v7, v0

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/UnitPart;->createAttackModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;IF)V

    .line 970
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 971
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 973
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 975
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v2, v7, v8

    const/4 v0, 0x5

    aget-object v3, v7, v0

    move-object v0, p0

    move v4, v8

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/UnitPart;->createAttackModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;IF)V

    .line 976
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 977
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 980
    :cond_2
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v1, v7, v9

    const/4 v2, 0x7

    aget-object v2, v7, v2

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/droidhen/fortconquer/units/UnitPart;->createActionModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    .line 981
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v9

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 982
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 984
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v1, v7, v10

    const/16 v2, 0x9

    aget-object v2, v7, v2

    invoke-virtual {p0, v0, v1, v2, v10}, Lcom/droidhen/fortconquer/units/UnitPart;->createActionModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    .line 985
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v10

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 986
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 988
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v1, v7, v11

    const/16 v2, 0xb

    aget-object v2, v7, v2

    invoke-virtual {p0, v0, v1, v2, v11}, Lcom/droidhen/fortconquer/units/UnitPart;->createActionModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    .line 989
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v11

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 990
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 992
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->fillModiferlist()V

    goto/16 :goto_1
.end method

.method public createSprite()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0xf

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 623
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/droidhen/fortconquer/units/UnitConstants;->UNIT_RACE_NO_MOUTH:[I

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v0, v5, :cond_2

    sget-object v0, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipudTailType:[I

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 628
    :cond_2
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    iget-boolean v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v6

    .line 630
    .local v6, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-eq v0, v4, :cond_3

    .line 631
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    if-ne v0, v5, :cond_4

    .line 633
    :cond_3
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;

    check-cast v6, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .end local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-direct {v0, v3, v3, v6}, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 651
    :goto_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    if-nez v0, :cond_9

    .line 652
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    .line 653
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v4, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    move-object v0, p0

    .line 652
    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/UnitPart;->setInitSpritePosition(I[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    goto :goto_0

    .line 635
    .restart local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_4
    instance-of v0, v6, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    if-eqz v0, :cond_6

    .line 637
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-lt v0, v7, :cond_5

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-gt v0, v8, :cond_5

    .line 638
    invoke-virtual {v6, v4}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedHorizontal(Z)V

    .line 639
    :cond_5
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    check-cast v6, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .end local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-direct {v0, v3, v3, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_1

    .line 641
    .restart local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_6
    instance-of v0, v6, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    if-eqz v0, :cond_8

    .line 643
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-lt v0, v7, :cond_7

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-gt v0, v8, :cond_7

    .line 644
    invoke-virtual {v6, v4}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedHorizontal(Z)V

    .line 645
    :cond_7
    new-instance v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    check-cast v6, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    .end local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-direct {v0, v3, v3, v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_1

    .line 648
    .restart local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    :cond_8
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    check-cast v6, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .end local v6    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-direct {v0, v3, v3, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_1

    .line 654
    :cond_9
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 655
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    add-int/lit8 v1, v0, -0x8

    .line 656
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v4, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sQuadChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    move-object v0, p0

    .line 655
    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/UnitPart;->setInitSpritePosition(I[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    goto/16 :goto_0

    .line 657
    :cond_a
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 658
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    add-int/lit8 v1, v0, -0x10

    .line 659
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonHeadPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonHeadCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v4, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonChestPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitMotion;->sDragonChestCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    move-object v0, p0

    .line 658
    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/UnitPart;->setInitSpritePosition(I[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V

    goto/16 :goto_0
.end method

.method protected createWalkModifier(I[Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;F)V
    .locals 10
    .param p1, "pRace"    # I
    .param p2, "walkModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p3, "walkModifiersRight"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p4, "attackDelay"    # F

    .prologue
    const/4 v6, 0x3

    const/16 v9, 0x1a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1101
    if-eqz p2, :cond_0

    array-length v4, p2

    if-eqz v4, :cond_0

    .line 1105
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eqz v4, :cond_1

    .line 1106
    move-object v3, p2

    .line 1110
    .local v3, "tmpWalkModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :goto_0
    new-instance v4, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-direct {v4, v3}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1111
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    if-ne v4, v6, :cond_2

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_2

    .line 1114
    new-instance v4, Lcom/droidhen/fortconquer/units/UnitPart;

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v6, 0x7

    iget-boolean v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    invoke-direct {v4, v5, v6, v7}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZ)V

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1115
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    invoke-virtual {v4, v5, v8, p4}, Lcom/droidhen/fortconquer/units/UnitPart;->createModifiers(FZF)V

    .line 1116
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v2

    .line 1117
    .local v2, "rArmActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedWalkModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v4

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 1142
    .end local v2    # "rArmActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v3    # "tmpWalkModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_0
    :goto_1
    return-void

    .line 1108
    :cond_1
    move-object v3, p3

    .restart local v3    # "tmpWalkModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    goto :goto_0

    .line 1120
    :cond_2
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v4, v6, :cond_3

    .line 1122
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1123
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    .line 1124
    .local v0, "chestActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedWalkModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v4

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    goto :goto_1

    .line 1127
    .end local v0    # "chestActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_3
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-eq v4, v8, :cond_4

    .line 1128
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-eq v4, v9, :cond_4

    .line 1129
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v4, v9, :cond_0

    .line 1132
    :cond_4
    new-instance v4, Lcom/droidhen/fortconquer/units/UnitPart;

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    iget-boolean v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    invoke-direct {v4, v5, v7, v6}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZ)V

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1133
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-ne v4, v9, :cond_5

    .line 1134
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    invoke-virtual {v4, v5, v7, p4}, Lcom/droidhen/fortconquer/units/UnitPart;->createModifiers(FZF)V

    .line 1137
    :goto_2
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    .line 1138
    .local v1, "headActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/units/UnitPart;->createCombinedWalkModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v4

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    goto :goto_1

    .line 1136
    .end local v1    # "headActionModifiers":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_5
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    invoke-virtual {v4, v5, v8, p4}, Lcom/droidhen/fortconquer/units/UnitPart;->createModifiers(FZF)V

    goto :goto_2
.end method

.method protected dead()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 282
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_0

    .line 283
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_2

    .line 285
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 292
    :cond_0
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 294
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_1

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_3

    .line 301
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->clearEntityModifiers()V

    .line 289
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setColor(FFF)V

    goto :goto_0

    .line 298
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->dead()V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public deepCopy(Lcom/droidhen/fortconquer/units/UnitPart;)V
    .locals 3
    .param p1, "sample"    # Lcom/droidhen/fortconquer/units/UnitPart;

    .prologue
    .line 819
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_2

    .line 821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_1

    .line 887
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 823
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/UnitPart;->deepCopy(Lcom/droidhen/fortconquer/units/UnitPart;)V

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->createModifierListeners()V

    .line 831
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_3

    .line 833
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 834
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 836
    :cond_3
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_4

    .line 838
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 839
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 841
    :cond_4
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_5

    .line 843
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 844
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 846
    :cond_5
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_6

    .line 848
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 849
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 851
    :cond_6
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_7

    .line 853
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 854
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackParalModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 856
    :cond_7
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_8

    .line 858
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 859
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 861
    :cond_8
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_9

    .line 863
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 864
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mW2AListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 866
    :cond_9
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_a

    .line 868
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 869
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 871
    :cond_a
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_b

    .line 873
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 874
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 877
    :cond_b
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_c

    .line 879
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 880
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 882
    :cond_c
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 885
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCeleParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mMoveListener:Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    invoke-interface {v1, v2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    goto/16 :goto_1
.end method

.method protected fillModiferlist()V
    .locals 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAllActionModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aput-object v2, v0, v1

    .line 997
    return-void
.end method

.method public getCamp()I
    .locals 2

    .prologue
    .line 1190
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 1191
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return v0

    .line 1192
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 1193
    const/4 v0, 0x1

    goto :goto_0

    .line 1194
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 1195
    const/4 v0, 0x2

    goto :goto_0

    .line 1197
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getDescriptionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mDescriptionString:Ljava/lang/String;

    return-object v0
.end method

.method protected getDurationMakeup()F
    .locals 3

    .prologue
    const/high16 v2, 0x41f00000    # 30.0f

    .line 446
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 447
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    div-float v0, v2, v0

    .line 449
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    goto :goto_0
.end method

.method public getHealth()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 485
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 486
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    .line 488
    :cond_0
    return v0
.end method

.method public getInitHealth()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 501
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mInitHealth:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 502
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mInitHealth:F

    .line 504
    :cond_0
    return v0
.end method

.method protected getParentItem()Lcom/droidhen/fortconquer/units/UnitPart;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    return-object v0
.end method

.method public getPartType()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 1211
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mQuality:I

    return v0
.end method

.method public getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    return-object v0
.end method

.method public getX()F
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 610
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getScaleCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v1, v2

    .line 609
    add-float/2addr v0, v1

    .line 611
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v0

    goto :goto_0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v1

    add-float/2addr v0, v1

    .line 618
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v0

    goto :goto_0
.end method

.method protected initDefaultValues()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x42340000    # 45.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 392
    iget v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mStageMatch:I

    if-gtz v6, :cond_0

    .line 393
    sget v6, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mStageMatch:I

    .line 394
    :cond_0
    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget v6, v6, v7

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    .line 396
    iget v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_1

    .line 397
    iput v11, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    .line 400
    :cond_1
    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackDistance:I

    .line 401
    iput v9, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mLevel:I

    .line 402
    const/4 v5, 0x0

    .line 403
    .local v5, "powerDistinctPart":F
    const/4 v4, 0x0

    .line 404
    .local v4, "powerAvaragePart":F
    const/4 v0, 0x0

    .line 406
    .local v0, "avarageValue":[F
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v1

    .line 407
    .local v1, "camp":I
    const/4 v3, 0x1

    .line 408
    .local v3, "isAnimal":Z
    packed-switch v1, :pswitch_data_0

    .line 419
    new-array v0, v12, [F

    .end local v0    # "avarageValue":[F
    fill-array-data v0, :array_0

    .line 420
    .restart local v0    # "avarageValue":[F
    const/4 v3, 0x0

    .line 423
    :goto_0
    iget v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mStageMatch:I

    invoke-static {v6}, Lcom/droidhen/fortconquer/stages/StageDataConstants;->getIncrFactorFromLevel(I)F

    move-result v2

    .line 424
    .local v2, "incrFactorBaseStage":F
    if-eqz v3, :cond_3

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    .line 425
    sub-float v6, v2, v10

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    add-float v5, v10, v6

    .line 426
    sub-float v4, v2, v5

    .line 433
    :goto_1
    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    mul-float/2addr v6, v5

    aget v7, v0, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    .line 434
    iget v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mInitHealth:F

    .line 435
    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v7, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v6, v6, v7

    aget v6, v6, v9

    mul-float/2addr v6, v5

    aget v7, v0, v9

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mDps:F

    .line 437
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getDurationMakeup()F

    move-result v6

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mDurationMakeup:F

    .line 438
    const/high16 v6, 0x41100000    # 9.0f

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCoolDown:F

    .line 439
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 440
    const/high16 v6, 0x41700000    # 15.0f

    iput v6, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mCoolDown:F

    .line 442
    :cond_2
    invoke-virtual {p0, v8}, Lcom/droidhen/fortconquer/units/UnitPart;->setQuality(I)V

    .line 443
    return-void

    .line 410
    .end local v2    # "incrFactorBaseStage":F
    :pswitch_0
    sget-object v0, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_PROPS_AVARAGE_BIPED:[F

    .line 411
    goto :goto_0

    .line 413
    :pswitch_1
    sget-object v0, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_PROPS_AVARAGE_QUADRUPED:[F

    .line 414
    goto :goto_0

    .line 416
    :pswitch_2
    sget-object v0, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_PROPS_AVARAGE_DRAGON:[F

    .line 417
    goto :goto_0

    .line 428
    .restart local v2    # "incrFactorBaseStage":F
    :cond_3
    move v5, v2

    .line 429
    const/4 v4, 0x0

    goto :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 419
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public isEnemy()Z
    .locals 1

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected move()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 156
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setColor(FFF)V

    .line 125
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->clearEntityModifiers()V

    .line 126
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_3

    .line 128
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 131
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mWalkModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 147
    :cond_2
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 149
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_0

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->move()V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 139
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WParalModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 143
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mA2WModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method protected pause()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 306
    iput-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 307
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v2, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 309
    :cond_0
    iput-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 311
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mInitRotation:F

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setRotation(F)V

    .line 314
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseScaleX:F

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScaleX(F)V

    .line 315
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseScaleY:F

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScaleY(F)V

    .line 316
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->clearEntityModifiers()V

    .line 319
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_2

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_3

    .line 326
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 323
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->reset()V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resume()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method protected setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V
    .locals 2
    .param p1, "pTarget"    # Lcom/droidhen/fortconquer/units/UnitPart;
    .param p2, "pDist"    # I

    .prologue
    .line 236
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 237
    iput p2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mTargetDist:I

    .line 239
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_0

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_1

    .line 246
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 243
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPart;->setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setCombinedCenter(II[Lcom/droidhen/fortconquer/units/Vector2;[Ljava/lang/String;[Ljava/lang/String;[Lcom/droidhen/fortconquer/units/Vector2;FF)V
    .locals 4
    .param p1, "pRace"    # I
    .param p2, "pHostPart"    # I
    .param p3, "hostPositions"    # [Lcom/droidhen/fortconquer/units/Vector2;
    .param p4, "raceNames"    # [Ljava/lang/String;
    .param p5, "partNames"    # [Ljava/lang/String;
    .param p6, "chestPositions"    # [Lcom/droidhen/fortconquer/units/Vector2;
    .param p7, "pX"    # F
    .param p8, "pY"    # F

    .prologue
    const/4 v3, 0x3

    .line 800
    aget-object v1, p3, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    sub-float v0, v1, p7

    .line 801
    .local v0, "rX":F
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-nez v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v1

    sub-float v0, v1, v0

    .line 806
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 807
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    if-ne v1, v3, :cond_4

    .line 808
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;

    aget-object v2, p3, p1

    iget v2, v2, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sub-float/2addr v2, p8

    invoke-virtual {v1, v0, v2}, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->setRotationCenter2(FF)V

    .line 815
    :cond_3
    :goto_0
    return-void

    .line 810
    :cond_4
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_3

    .line 812
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    aget-object v2, p3, p1

    iget v2, v2, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sub-float/2addr v2, p8

    invoke-virtual {v1, v0, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setRotationCenter(FF)V

    .line 813
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v1

    invoke-virtual {v2, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setRotation(F)V

    goto :goto_0
.end method

.method public declared-synchronized setHealth(F)V
    .locals 2
    .param p1, "health"    # F

    .prologue
    const/4 v1, 0x0

    .line 494
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    .line 495
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_0
    monitor-exit p0

    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setInitSpritePosition(I[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;[Lcom/droidhen/fortconquer/units/Vector2;)V
    .locals 11
    .param p1, "pRace"    # I
    .param p2, "headPositions"    # [Lcom/droidhen/fortconquer/units/Vector2;
    .param p3, "headCenter"    # [Lcom/droidhen/fortconquer/units/Vector2;
    .param p4, "chestPositions"    # [Lcom/droidhen/fortconquer/units/Vector2;
    .param p5, "chestCenter"    # [Lcom/droidhen/fortconquer/units/Vector2;

    .prologue
    .line 665
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampRaceNames:[[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v1

    aget-object v4, v0, v1

    .line 666
    .local v4, "raceNames":[Ljava/lang/String;
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitConstants;->sCampPartNames:[[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v1

    aget-object v5, v0, v1

    .line 667
    .local v5, "partNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->getMotionInfo(III)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v9

    .line 669
    .local v9, "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    iget v0, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->width:F

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointX:F

    mul-float/2addr v0, v1

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterX:F

    .line 670
    iget v0, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->height:F

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointY:F

    mul-float/2addr v0, v1

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->top:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterY:F

    .line 671
    iget v10, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pRotation:F

    .line 672
    .local v10, "ratation":F
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 674
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 675
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 677
    :cond_0
    iget v0, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->width:F

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterX:F

    .line 678
    iget v0, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->height:F

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterY:F

    .line 681
    :cond_1
    iget v0, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pX:F

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterX:F

    sub-float v7, v0, v1

    .line 682
    .local v7, "pX":F
    iget v0, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pY:F

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterY:F

    sub-float v8, v0, v1

    .line 684
    .local v8, "pY":F
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 688
    const/high16 v0, 0x431c0000    # 156.0f

    sub-float/2addr v7, v0

    .line 689
    const/high16 v0, 0x41f00000    # 30.0f

    add-float/2addr v8, v0

    .line 702
    :cond_2
    :goto_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 703
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    .line 704
    :cond_3
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_b

    .line 706
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v0

    mul-float/2addr v7, v0

    .line 707
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v0

    mul-float/2addr v8, v0

    .line 708
    aget-object v0, p2, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    aget-object v1, p3, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    sub-float/2addr v0, v1

    add-float/2addr v7, v0

    .line 709
    aget-object v0, p2, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    aget-object v1, p3, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sub-float/2addr v0, v1

    add-float/2addr v8, v0

    .line 711
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/droidhen/fortconquer/units/UnitPart;->setCombinedCenter(II[Lcom/droidhen/fortconquer/units/Vector2;[Ljava/lang/String;[Ljava/lang/String;[Lcom/droidhen/fortconquer/units/Vector2;FF)V

    .line 712
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 714
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->setHostSprite(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 715
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v0

    iget v2, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleX:F

    mul-float/2addr v2, v0

    .line 716
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v0

    iget v3, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleY:F

    mul-float/2addr v0, v3

    .line 715
    invoke-virtual {v1, v2, v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScale(FF)V

    .line 740
    :cond_4
    :goto_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    .line 742
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-nez v0, :cond_5

    .line 744
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterX:F

    .line 745
    neg-float v10, v10

    .line 747
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterX:F

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->rotationCenterY:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setRotationCenter(FF)V

    .line 748
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v10}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setRotation(F)V

    .line 751
    :cond_6
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotationCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotationCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScaleCenter(FF)V

    .line 752
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 753
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleX:F

    iget v2, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleY:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScale(FF)V

    .line 756
    :cond_7
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-nez v0, :cond_8

    .line 758
    aget-object v0, p4, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sub-float/2addr v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v1

    sub-float v7, v0, v1

    .line 760
    :cond_8
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v7, v8}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 761
    aget-object v0, p4, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    sub-float v0, v7, v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetX:F

    .line 762
    aget-object v0, p4, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sub-float v0, v8, v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetY:F

    .line 763
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mInitRotation:F

    .line 764
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseScaleX:F

    .line 765
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseScaleY:F

    .line 766
    return-void

    .line 691
    :cond_9
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 692
    const/high16 v0, 0x42480000    # 50.0f

    sub-float/2addr v7, v0

    .line 693
    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr v8, v0

    .line 694
    goto/16 :goto_0

    .line 696
    :cond_a
    const/high16 v0, 0x41200000    # 10.0f

    sub-float/2addr v7, v0

    .line 697
    const/high16 v0, 0x41a00000    # 20.0f

    add-float/2addr v8, v0

    goto/16 :goto_0

    .line 719
    :cond_b
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 721
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v0

    mul-float/2addr v7, v0

    .line 722
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v0

    mul-float/2addr v8, v0

    .line 723
    aget-object v0, p4, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    aget-object v1, p5, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->left:F

    add-float/2addr v0, v1

    add-float/2addr v7, v0

    .line 724
    aget-object v0, p4, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    aget-object v1, p5, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sub-float/2addr v0, v1

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->top:F

    add-float/2addr v0, v1

    add-float/2addr v8, v0

    .line 726
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move-object v3, p4

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/droidhen/fortconquer/units/UnitPart;->setCombinedCenter(II[Lcom/droidhen/fortconquer/units/Vector2;[Ljava/lang/String;[Ljava/lang/String;[Lcom/droidhen/fortconquer/units/Vector2;FF)V

    .line 727
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v0

    iget v2, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleX:F

    mul-float/2addr v2, v0

    .line 728
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v0

    iget v3, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleY:F

    mul-float/2addr v0, v3

    .line 727
    invoke-virtual {v1, v2, v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScale(FF)V

    goto/16 :goto_1

    .line 730
    :cond_c
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    .line 732
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->left:F

    add-float/2addr v0, v1

    add-float/2addr v7, v0

    .line 733
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmCenter:[Lcom/droidhen/fortconquer/units/Vector2;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/droidhen/fortconquer/units/Vector2;->y:F

    sub-float/2addr v0, v1

    iget v1, v9, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->top:F

    add-float/2addr v0, v1

    add-float/2addr v8, v0

    .line 735
    const/4 v2, 0x7

    sget-object v3, Lcom/droidhen/fortconquer/units/UnitMotion;->sBipedRArmPosition:[Lcom/droidhen/fortconquer/units/Vector2;

    move-object v0, p0

    move v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/droidhen/fortconquer/units/UnitPart;->setCombinedCenter(II[Lcom/droidhen/fortconquer/units/Vector2;[Ljava/lang/String;[Ljava/lang/String;[Lcom/droidhen/fortconquer/units/Vector2;FF)V

    .line 736
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->setHostSprite(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    goto/16 :goto_1
.end method

.method protected setParentItem(Lcom/droidhen/fortconquer/units/Unit;)V
    .locals 0
    .param p1, "pUnit"    # Lcom/droidhen/fortconquer/units/Unit;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 511
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "mQuality"    # I

    .prologue
    .line 1215
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mQuality:I

    .line 1216
    return-void
.end method

.method protected setSpeed(F)V
    .locals 2
    .param p1, "pSpeed"    # F

    .prologue
    .line 531
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    .line 533
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_0

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_1

    .line 540
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 537
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, p1}, Lcom/droidhen/fortconquer/units/UnitPart;->setSpeed(F)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSpritePos(FF)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const v5, 0x3f19999a    # 0.6f

    .line 577
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mPartType:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    .line 580
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 582
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetX:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetY:F

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 597
    :cond_1
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_2

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lt v0, v1, :cond_6

    .line 604
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 586
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mScale:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v5

    sub-float v2, p1, v2

    .line 587
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    sub-float v3, p2, v3

    const/high16 v4, 0x41000000    # 8.0f

    sub-float/2addr v3, v4

    .line 586
    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    goto :goto_0

    .line 590
    :cond_4
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v1, v2, :cond_5

    .line 591
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetX:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetY:F

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    goto :goto_0

    .line 593
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetX:F

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    iget v3, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetY:F

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    goto :goto_0

    .line 601
    .restart local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPart;->setSpritePos(FF)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setStageMatched(I)V
    .locals 0
    .param p1, "stage"    # I

    .prologue
    .line 1203
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mStageMatch:I

    .line 1204
    return-void
.end method

.method protected showHurtEffect()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method protected stand()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_1

    .line 278
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_4

    .line 260
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 266
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mParent:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->stand()V

    .line 271
    :cond_3
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-lez v1, :cond_0

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildNum:I

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mChildParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->stand()V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_5

    .line 262
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    goto :goto_0

    .line 263
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_2

    .line 264
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart;->mUnitPartName:Ljava/lang/String;

    return-object v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method
