.class public Lorg/anddev/andengine/entity/modifier/MoveByModifier;
.super Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;
.source "MoveByModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;-><init>(FFF)V

    .line 26
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;)V
    .locals 0
    .param p1, "pDoubleValueChangeEntityModifier"    # Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;)V

    .line 34
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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;)V

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onChangeValues(FLjava/lang/Object;FF)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->onChangeValues(FLorg/anddev/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onChangeValues(FLorg/anddev/andengine/entity/IEntity;FF)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p3, "pX"    # F
    .param p4, "pY"    # F

    .prologue
    .line 51
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    add-float/2addr v0, p3

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v1

    add-float/2addr v1, p4

    invoke-interface {p2, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 52
    return-void
.end method
