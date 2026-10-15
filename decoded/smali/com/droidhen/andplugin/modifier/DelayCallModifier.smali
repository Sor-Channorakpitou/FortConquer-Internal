.class public Lcom/droidhen/andplugin/modifier/DelayCallModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "DelayCallModifier.java"

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


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(FLjava/lang/Runnable;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->mFinished:Z

    .line 19
    iput-object p2, p0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->runnable:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/droidhen/andplugin/modifier/DelayCallModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 13
    iget-object v0, p1, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->runnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->runnable:Ljava/lang/Runnable;

    .line 14
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
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
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 37
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 24
    return-void
.end method

.method protected bridge synthetic onModifierFinished(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->onModifierFinished(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onModifierFinished(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onModifierFinished(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
