.class public Lorg/anddev/andengine/util/modifier/ParallelModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;
.source "ParallelModifier.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseModifier",
        "<TT;>;",
        "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mDuration:F

.field private mFinishedCached:Z

.field private final mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSecondsElapsed:F


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 3
    .param p2, "pModifiers"    # [Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 40
    array-length v1, p2

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pModifiers must not be empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    sget-object v1, Lorg/anddev/andengine/util/modifier/ParallelModifier;->MODIFIER_COMPARATOR_DURATION_DESCENDING:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 44
    iput-object p2, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 46
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 47
    .local v0, "modifierWithLongestDuration":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v1

    iput v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mDuration:F

    .line 48
    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/ParallelModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, "pParallelModifier":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    .line 53
    iget-object v3, p1, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 54
    .local v3, "otherModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    array-length v4, v3

    new-array v4, v4, [Lorg/anddev/andengine/util/modifier/IModifier;

    iput-object v4, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 56
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 57
    .local v2, "modifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 61
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 62
    .local v1, "modifierWithLongestDuration":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    invoke-interface {v1}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v4

    iput v4, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mDuration:F

    .line 63
    invoke-interface {v1, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 64
    return-void

    .line 58
    .end local v1    # "modifierWithLongestDuration":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    :cond_0
    aget-object v4, v3, v0

    invoke-interface {v4}, Lorg/anddev/andengine/util/modifier/IModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;

    move-result-object v4

    aput-object v4, v2, v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .param p1, "pModifiers"    # [Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/ParallelModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/ParallelModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/util/modifier/ParallelModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/ParallelModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    new-instance v0, Lorg/anddev/andengine/util/modifier/ParallelModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    return v0
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinished:Z

    .line 133
    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    .line 134
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;->onModifierFinished(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;->onModifierStarted(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 7
    .param p1, "pSecondsElapsed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 91
    iget-boolean v5, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinished:Z

    if-eqz v5, :cond_0

    move v2, v4

    .line 110
    :goto_0
    return v2

    .line 94
    :cond_0
    move v1, p1

    .line 96
    .local v1, "secondsElapsedRemaining":F
    iget-object v3, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 98
    .local v3, "shapeModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    iput-boolean v6, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    .line 99
    :goto_1
    cmpl-float v5, v1, v4

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    if-eqz v5, :cond_2

    .line 106
    :cond_1
    iput-boolean v6, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    .line 108
    sub-float v2, p1, v1

    .line 109
    .local v2, "secondsElapsedUsed":F
    iget v4, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    add-float/2addr v4, v2

    iput v4, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    goto :goto_0

    .line 100
    .end local v2    # "secondsElapsedUsed":F
    :cond_2
    const/4 v2, 0x0

    .line 101
    .restart local v2    # "secondsElapsedUsed":F
    array-length v5, v3

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_2
    if-gez v0, :cond_3

    .line 104
    sub-float/2addr v1, v2

    goto :goto_1

    .line 102
    :cond_3
    aget-object v5, v3, v0

    invoke-interface {v5, p1, p2}, Lorg/anddev/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 101
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 116
    .local p0, "this":Lorg/anddev/andengine/util/modifier/ParallelModifier;, "Lorg/anddev/andengine/util/modifier/ParallelModifier<TT;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinished:Z

    .line 117
    const/4 v2, 0x0

    iput v2, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    .line 119
    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 120
    .local v1, "shapeModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 123
    return-void

    .line 121
    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    .line 120
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
