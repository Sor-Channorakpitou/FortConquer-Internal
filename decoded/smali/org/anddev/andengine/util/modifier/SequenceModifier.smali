.class public Lorg/anddev/andengine/util/modifier/SequenceModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;
.source "SequenceModifier.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    }
.end annotation

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
.field private mCurrentSubSequenceModifierIndex:I

.field private final mDuration:F

.field private mFinishedCached:Z

.field private mSecondsElapsed:F

.field private mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
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
    .line 46
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 47
    return-void
.end method

.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 2
    .param p3, "pModifiers"    # [Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;",
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
    .line 50
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pSubSequenceModifierListener":Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;, "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener<TT;>;"
    .local p2, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 51
    array-length v0, p3

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pModifiers must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 56
    iput-object p3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 58
    invoke-static {p3}, Lorg/anddev/andengine/util/modifier/util/ModifierUtils;->getSequenceDurationOfModifier([Lorg/anddev/andengine/util/modifier/IModifier;)F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    .line 60
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 61
    return-void
.end method

.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .param p2, "pModifiers"    # [Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
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
    .line 42
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pSubSequenceModifierListener":Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;, "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/SequenceModifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pSequenceModifier":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    .line 65
    iget v3, p1, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    iput v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    .line 67
    iget-object v1, p1, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 68
    .local v1, "otherModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    array-length v3, v1

    new-array v3, v3, [Lorg/anddev/andengine/util/modifier/IModifier;

    iput-object v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 70
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 71
    .local v2, "shapeModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 75
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-interface {v3, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 76
    return-void

    .line 72
    :cond_0
    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/anddev/andengine/util/modifier/IModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;

    move-result-object v3

    aput-object v3, v2, v0

    .line 71
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
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0, p1}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 39
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
    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    new-instance v0, Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    return v0
.end method

.method public getSubSequenceModifierListener()Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    return-object v0
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 160
    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    invoke-interface {v1, p1, p2, v2}, Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V

    .line 163
    :cond_0
    invoke-interface {p1, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    .line 165
    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    .line 167
    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 168
    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v0, v1, v2

    .line 169
    .local v0, "nextSubSequenceModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 176
    .end local v0    # "nextSubSequenceModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    :goto_0
    return-void

    .line 171
    :cond_1
    iput-boolean v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinished:Z

    .line 172
    iput-boolean v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    .line 174
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->onModifierStarted(Ljava/lang/Object;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    invoke-interface {v0, p1, p2, v1}, Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V

    .line 156
    :cond_1
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 5
    .param p1, "pSecondsElapsed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p2, "pItem":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 111
    iget-boolean v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinished:Z

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    return v1

    .line 114
    :cond_0
    move v0, p1

    .line 115
    .local v0, "secondsElapsedRemaining":F
    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    .line 116
    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    if-eqz v2, :cond_2

    .line 119
    :cond_1
    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    .line 121
    sub-float v1, p1, v0

    .line 122
    .local v1, "secondsElapsedUsed":F
    iget v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    goto :goto_0

    .line 117
    .end local v1    # "secondsElapsedUsed":F
    :cond_2
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, v0, p2}, Lorg/anddev/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget-object v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-interface {v2, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    .line 135
    :goto_0
    iput v4, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    .line 136
    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinished:Z

    .line 137
    const/4 v2, 0x0

    iput v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    .line 139
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    aget-object v2, v2, v4

    invoke-interface {v2, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 141
    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    .line 142
    .local v1, "shapeModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_1

    .line 145
    return-void

    .line 132
    .end local v0    # "i":I
    .end local v1    # "shapeModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    :cond_0
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    goto :goto_0

    .line 143
    .restart local v0    # "i":I
    .restart local v1    # "shapeModifiers":[Lorg/anddev/andengine/util/modifier/IModifier;
    :cond_1
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public setSubSequenceModifierListener(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/anddev/andengine/util/modifier/SequenceModifier;, "Lorg/anddev/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, "pSubSequenceModifierListener":Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;, "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener<TT;>;"
    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 93
    return-void
.end method
