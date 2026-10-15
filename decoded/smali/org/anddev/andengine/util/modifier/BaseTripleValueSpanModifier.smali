.class public abstract Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;
.source "BaseTripleValueSpanModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mFromValueC:F

.field private final mValueSpanC:F


# direct methods
.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pFromValueC"    # F
    .param p7, "pToValueC"    # F
    .param p9, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier<TT;>;"
    .local p8, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 35
    iput p6, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    .line 36
    sub-float v0, p7, p6

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pFromValueC"    # F
    .param p7, "pToValueC"    # F
    .param p8, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 30
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier<TT;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier<TT;>;"
    .local p1, "pBaseTripleValueSpanModifier":Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;)V

    .line 41
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    .line 42
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    .line 43
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Ljava/lang/Object;FF)V
    .locals 1
    .param p2, "pValueA"    # F
    .param p3, "pValueB"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->onSetInitialValues(Ljava/lang/Object;FFF)V

    .line 59
    return-void
.end method

.method protected abstract onSetInitialValues(Ljava/lang/Object;FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFF)V"
        }
    .end annotation
.end method

.method protected onSetValues(Ljava/lang/Object;FFF)V
    .locals 6
    .param p2, "pPercentageDone"    # F
    .param p3, "pValueA"    # F
    .param p4, "pValueB"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFF)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    mul-float/2addr v1, p2

    add-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;->onSetValues(Ljava/lang/Object;FFFF)V

    .line 64
    return-void
.end method

.method protected abstract onSetValues(Ljava/lang/Object;FFFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFFF)V"
        }
    .end annotation
.end method
