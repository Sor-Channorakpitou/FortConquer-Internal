.class public abstract Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;
.source "BaseDurationModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mDuration:F

.field private mSecondsElapsed:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pDuration"    # F

    .prologue
    .line 29
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    .line 30
    iput p1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    .line 31
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    .local p2, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 35
    iput p1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    .local p1, "pBaseModifier":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    return v0
.end method

.method protected abstract onManagedInitialize(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onManagedUpdate(FLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation
.end method

.method public final onUpdate(FLjava/lang/Object;)F
    .locals 3
    .param p1, "pSecondsElapsed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 66
    iget-boolean v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mFinished:Z

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 70
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onManagedInitialize(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onModifierStarted(Ljava/lang/Object;)V

    .line 75
    :cond_2
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    add-float/2addr v1, p1

    iget v2, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 76
    move v0, p1

    .line 81
    .local v0, "secondsElapsedUsed":F
    :goto_1
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    .line 82
    invoke-virtual {p0, v0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onManagedUpdate(FLjava/lang/Object;)V

    .line 84
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    iget v2, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 85
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    iput v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mFinished:Z

    .line 87
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v0    # "secondsElapsedUsed":F
    :cond_3
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    iget v2, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    sub-float v0, v1, v2

    .restart local v0    # "secondsElapsedUsed":F
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lorg/anddev/andengine/util/modifier/BaseDurationModifier;, "Lorg/anddev/andengine/util/modifier/BaseDurationModifier<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mFinished:Z

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    .line 97
    return-void
.end method
