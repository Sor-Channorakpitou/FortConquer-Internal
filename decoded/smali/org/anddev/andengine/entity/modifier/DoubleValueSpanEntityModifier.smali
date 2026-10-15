.class public abstract Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;
.source "DoubleValueSpanEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFF)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p7, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V
    .locals 0
    .param p1, "pDoubleValueSpanEntityModifier"    # Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;)V

    .line 45
    return-void
.end method
