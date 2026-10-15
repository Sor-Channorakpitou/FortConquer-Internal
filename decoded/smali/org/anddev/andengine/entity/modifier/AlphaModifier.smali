.class public Lorg/anddev/andengine/entity/modifier/AlphaModifier;
.super Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;
.source "AlphaModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F

    .prologue
    .line 27
    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F
    .param p4, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 35
    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F
    .param p4, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p5, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F
    .param p4, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 31
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/AlphaModifier;)V
    .locals 0
    .param p1, "pAlphaModifier"    # Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;)V

    .line 44
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(Lorg/anddev/andengine/entity/modifier/AlphaModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/AlphaModifier;

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->onSetInitialValue(Lorg/anddev/andengine/entity/IEntity;F)V

    return-void
.end method

.method protected onSetInitialValue(Lorg/anddev/andengine/entity/IEntity;F)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pAlpha"    # F

    .prologue
    .line 61
    invoke-interface {p1, p2}, Lorg/anddev/andengine/entity/IEntity;->setAlpha(F)V

    .line 62
    return-void
.end method

.method protected bridge synthetic onSetValue(Ljava/lang/Object;FF)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;->onSetValue(Lorg/anddev/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetValue(Lorg/anddev/andengine/entity/IEntity;FF)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pPercentageDone"    # F
    .param p3, "pAlpha"    # F

    .prologue
    .line 66
    invoke-interface {p1, p3}, Lorg/anddev/andengine/entity/IEntity;->setAlpha(F)V

    .line 67
    return-void
.end method
