.class public Lorg/anddev/andengine/entity/modifier/RotationAtModifier;
.super Lorg/anddev/andengine/entity/modifier/RotationModifier;
.source "RotationAtModifier.java"


# instance fields
.field private final mRotationCenterX:F

.field private final mRotationCenterY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F

    .prologue
    .line 31
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    iput p4, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 33
    iput p5, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 34
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F
    .param p6, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 43
    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 44
    iput p4, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 45
    iput p5, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 46
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F
    .param p6, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p7, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 50
    iput p4, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 51
    iput p5, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 52
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F
    .param p6, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 38
    iput p4, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 39
    iput p5, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 40
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/RotationAtModifier;)V
    .locals 1
    .param p1, "pRotationAtModifier"    # Lorg/anddev/andengine/entity/modifier/RotationAtModifier;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(Lorg/anddev/andengine/entity/modifier/RotationModifier;)V

    .line 56
    iget v0, p1, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 57
    iget v0, p1, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 58
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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationAtModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/RotationAtModifier;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;-><init>(Lorg/anddev/andengine/entity/modifier/RotationAtModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/RotationModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationAtModifier;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationAtModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/modifier/RotationModifier;->onManagedInitialize(Ljava/lang/Object;)V

    .line 76
    iget v0, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    invoke-interface {p1, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setRotationCenter(FF)V

    .line 77
    return-void
.end method
