.class public Lorg/anddev/andengine/entity/modifier/MoveModifier;
.super Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.source "MoveModifier.java"


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F

    .prologue
    .line 27
    const/4 v6, 0x0

    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F
    .param p6, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 35
    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F
    .param p6, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p7, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F
    .param p6, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 31
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/MoveModifier;)V
    .locals 0
    .param p1, "pMoveModifier"    # Lorg/anddev/andengine/entity/modifier/MoveModifier;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V

    .line 44
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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/MoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/MoveModifier;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(Lorg/anddev/andengine/entity/modifier/MoveModifier;)V

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/MoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValues(Ljava/lang/Object;FF)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/MoveModifier;->onSetInitialValues(Lorg/anddev/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/anddev/andengine/entity/IEntity;FF)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 61
    invoke-interface {p1, p2, p3}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 62
    return-void
.end method

.method protected bridge synthetic onSetValues(Ljava/lang/Object;FFF)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/modifier/MoveModifier;->onSetValues(Lorg/anddev/andengine/entity/IEntity;FFF)V

    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/IEntity;FFF)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pPercentageDone"    # F
    .param p3, "pX"    # F
    .param p4, "pY"    # F

    .prologue
    .line 66
    invoke-interface {p1, p3, p4}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 67
    return-void
.end method
