.class public Lcom/droidhen/andplugin/modifier/LoopModifier;
.super Ljava/lang/Object;
.source "LoopModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# static fields
.field public static final CONTINUOUS:I = -0x1


# instance fields
.field private loopCount:I

.field private secondsElapsed:F

.field private subModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field private totalCount:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V
    .locals 2
    .param p1, "subModifiers"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p2, "totalCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->secondsElapsed:F

    .line 12
    iput v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->loopCount:I

    .line 14
    iput v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->totalCount:I

    .line 20
    iput-object p1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->subModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 21
    iput p2, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->totalCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<Lorg/anddev/andengine/entity/IEntity;>;"
    return-void
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/LoopModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 51
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->secondsElapsed:F

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->loopCount:I

    iget v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->totalCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->totalCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoveWhenFinished()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/LoopModifier;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 2
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/LoopModifier;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->subModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1, p1, p2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    .line 59
    .local v0, "ret":F
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->subModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->subModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 61
    iget v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->loopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->loopCount:I

    .line 63
    :cond_1
    iget v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->secondsElapsed:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->secondsElapsed:F

    goto :goto_0
.end method

.method public removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->secondsElapsed:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/LoopModifier;->loopCount:I

    .line 28
    return-void
.end method

.method public setRemoveWhenFinished(Z)V
    .locals 0
    .param p1, "pRemoveWhenFinished"    # Z

    .prologue
    .line 42
    return-void
.end method
