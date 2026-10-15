.class public abstract Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;
.super Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;
.source "BaseDoubleValueSpanModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mFromValueB:F

.field private final mValueSpanB:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F

    .prologue
    .line 30
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    const/4 v6, 0x0

    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p6, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 39
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p7, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p6, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 43
    iput p4, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 44
    sub-float v0, p5, p4

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 34
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p1, "pBaseDoubleValueSpanModifier":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;)V

    .line 49
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 50
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 51
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(Ljava/lang/Object;F)V
    .locals 1
    .param p2, "pValueA"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->onSetInitialValues(Ljava/lang/Object;FF)V

    .line 67
    return-void
.end method

.method protected abstract onSetInitialValues(Ljava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation
.end method

.method protected onSetValue(Ljava/lang/Object;FF)V
    .locals 2
    .param p2, "pPercentageDone"    # F
    .param p3, "pValueA"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;->onSetValues(Ljava/lang/Object;FFF)V

    .line 72
    return-void
.end method

.method protected abstract onSetValues(Ljava/lang/Object;FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFF)V"
        }
    .end annotation
.end method
