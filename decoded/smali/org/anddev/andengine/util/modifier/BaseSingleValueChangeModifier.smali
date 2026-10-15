.class public abstract Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "BaseSingleValueChangeModifier.java"


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
.field private final mValueChangePerSecond:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pValueChange"    # F

    .prologue
    .line 28
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pValueChange"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier<TT;>;"
    .local p3, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p1, p3}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 33
    div-float v0, p2, p1

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    .line 34
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier<TT;>;"
    .local p1, "pBaseSingleValueChangeModifier":Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 38
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract onChangeValue(FLjava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;F)V"
        }
    .end annotation
.end method

.method protected onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onManagedUpdate(FLjava/lang/Object;)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;, "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;->onChangeValue(FLjava/lang/Object;F)V

    .line 59
    return-void
.end method
