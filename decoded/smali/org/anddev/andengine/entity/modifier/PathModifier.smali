.class public Lorg/anddev/andengine/entity/modifier/PathModifier;
.super Lorg/anddev/andengine/entity/modifier/EntityModifier;
.source "PathModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;,
        Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    }
.end annotation


# instance fields
.field private final mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

.field private mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

.field private final mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/SequenceModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    .prologue
    const/4 v3, 0x0

    .line 38
    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 39
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pEntityModiferListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 46
    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 47
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pEntityModiferListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p4, "pPathModifierListener"    # Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 63
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 17
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pEntityModiferListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p4, "pPathModifierListener"    # Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .param p5, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/EntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSize()I

    move-result v15

    .line 69
    .local v15, "pathSize":I
    const/4 v2, 0x2

    if-ge v15, v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Path needs at least 2 waypoints!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    .line 74
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    .line 76
    add-int/lit8 v2, v15, -0x1

    new-array v14, v2, [Lorg/anddev/andengine/entity/modifier/MoveModifier;

    .line 78
    .local v14, "moveModifiers":[Lorg/anddev/andengine/entity/modifier/MoveModifier;
    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getCoordinatesX()[F

    move-result-object v10

    .line 79
    .local v10, "coordinatesX":[F
    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getCoordinatesY()[F

    move-result-object v11

    .line 81
    .local v11, "coordinatesY":[F
    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getLength()F

    move-result v2

    div-float v16, v2, p1

    .line 83
    .local v16, "velocity":F
    array-length v13, v14

    .line 84
    .local v13, "modifierCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v13, :cond_1

    .line 91
    new-instance v2, Lorg/anddev/andengine/util/modifier/SequenceModifier;

    .line 92
    new-instance v4, Lorg/anddev/andengine/entity/modifier/PathModifier$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/anddev/andengine/entity/modifier/PathModifier$1;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V

    .line 107
    new-instance v5, Lorg/anddev/andengine/entity/modifier/PathModifier$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/anddev/andengine/entity/modifier/PathModifier$2;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V

    .line 124
    invoke-direct {v2, v4, v5, v14}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 91
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    .line 126
    return-void

    .line 85
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSegmentLength(I)F

    move-result v2

    div-float v3, v2, v16

    .line 86
    .local v3, "duration":F
    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    aget v4, v10, v12

    add-int/lit8 v5, v12, 0x1

    aget v5, v10, v5

    aget v6, v11, v12

    add-int/lit8 v7, v12, 0x1

    aget v7, v11, v7

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    aput-object v2, v14, v12

    .line 84
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pEntityModiferListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p4, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 58
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 59
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pPathModifierListener"    # Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    .prologue
    .line 50
    const/4 v3, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 51
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pPathModifierListener"    # Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .param p4, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 54
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 55
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .param p3, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    const/4 v3, 0x0

    .line 42
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V
    .locals 1
    .param p1, "pPathModifier"    # Lorg/anddev/andengine/entity/modifier/PathModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/anddev/andengine/entity/modifier/EntityModifier;-><init>()V

    .line 129
    iget-object v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    .line 130
    iget-object v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    .line 131
    return-void
.end method

.method static synthetic access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method static synthetic access$4(Lorg/anddev/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/PathModifier;->onModifierStarted(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(Lorg/anddev/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/PathModifier;->onModifierFinished(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->getDuration()F

    move-result v0

    return v0
.end method

.method public getPath()Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    return-object v0
.end method

.method public getPathModifierListener()Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->getSecondsElapsed()F

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->isFinished()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->reset()V

    .line 176
    return-void
.end method

.method public setPathModifierListener(Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 0
    .param p1, "pPathModifierListener"    # Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    .line 171
    return-void
.end method
