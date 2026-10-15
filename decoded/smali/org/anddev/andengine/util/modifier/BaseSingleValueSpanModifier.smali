.class public abstract Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "BaseSingleValueSpanModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field private final mFromValue:F

.field private final mValueSpan:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F

    .prologue
    .line 31
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p4, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p5, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p4, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p1, p4}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 44
    iput p2, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 45
    sub-float v0, p3, p2

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 46
    iput-object p5, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .line 47
    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 35
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p1, "pBaseSingleValueSpanModifier":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 51
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 52
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 53
    iget-object v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    iput-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .line 54
    return-void
.end method


# virtual methods
.method protected onManagedInitialize(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->onSetInitialValue(Ljava/lang/Object;F)V

    .line 70
    return-void
.end method

.method protected onManagedUpdate(FLjava/lang/Object;)V
    .locals 4
    .param p1, "pSecondsElapsed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->getSecondsElapsed()F

    move-result v2

    iget v3, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mDuration:F

    invoke-interface {v1, v2, v3}, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    .line 76
    .local v0, "percentageDone":F
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v2, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->onSetValue(Ljava/lang/Object;FF)V

    .line 77
    return-void
.end method

.method protected abstract onSetInitialValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method protected abstract onSetValue(Ljava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation
.end method
