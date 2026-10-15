.class public abstract Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;
.source "SingleValueChangeEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pValueChange"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pValueChange"    # F
    .param p3, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;)V
    .locals 0
    .param p1, "pSingleValueChangeEntityModifier"    # Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;)V

    .line 36
    return-void
.end method
