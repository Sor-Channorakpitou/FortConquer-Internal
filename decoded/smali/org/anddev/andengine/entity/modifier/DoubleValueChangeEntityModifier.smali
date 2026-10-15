.class public abstract Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;
.source "DoubleValueChangeEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pValueChangeA"    # F
    .param p3, "pValueChangeB"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pValueChangeA"    # F
    .param p3, "pValueChangeB"    # F
    .param p4, "pModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;)V
    .locals 0
    .param p1, "pDoubleValueChangeEntityModifier"    # Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;)V

    .line 35
    return-void
.end method
