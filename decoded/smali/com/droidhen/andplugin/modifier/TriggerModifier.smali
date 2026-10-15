.class public Lcom/droidhen/andplugin/modifier/TriggerModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "TriggerModifier.java"

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
.field protected final cond:Lcom/droidhen/andplugin/modifier/TriggerCondition;

.field private final task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(FLcom/droidhen/andplugin/modifier/TriggerCondition;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "cond"    # Lcom/droidhen/andplugin/modifier/TriggerCondition;
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 27
    iput-object p2, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->cond:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    .line 28
    iput-object p3, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->task:Ljava/lang/Runnable;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->mFinished:Z

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/droidhen/andplugin/modifier/TriggerModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/droidhen/andplugin/modifier/TriggerModifier;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 20
    iget-object v0, p1, Lcom/droidhen/andplugin/modifier/TriggerModifier;->cond:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    iput-object v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->cond:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    .line 21
    iget-object v0, p1, Lcom/droidhen/andplugin/modifier/TriggerModifier;->task:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->task:Ljava/lang/Runnable;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->mFinished:Z

    .line 23
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
    .line 51
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
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/TriggerModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/TriggerModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 47
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/TriggerModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->cond:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    invoke-interface {v0}, Lcom/droidhen/andplugin/modifier/TriggerCondition;->satisfied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->mFinished:Z

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/TriggerModifier;->mFinished:Z

    .line 38
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->reset()V

    .line 43
    return-void
.end method
