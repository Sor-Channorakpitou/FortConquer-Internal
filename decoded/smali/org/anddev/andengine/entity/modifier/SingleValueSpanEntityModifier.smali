.class public abstract Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;
.source "SingleValueSpanEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier",
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
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFF)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p5, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;)V
    .locals 0
    .param p1, "pSingleValueSpanEntityModifier"    # Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;)V

    .line 45
    return-void
.end method
