.class public abstract Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "DurationEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pDuration"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 28
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;)V
    .locals 0
    .param p1, "pDurationEntityModifier"    # Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 36
    return-void
.end method
