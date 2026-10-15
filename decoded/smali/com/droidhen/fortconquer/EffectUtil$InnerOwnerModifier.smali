.class public Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;
.super Ljava/lang/Object;
.source "EffectUtil.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/EffectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerOwnerModifier"
.end annotation


# instance fields
.field private final modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field private final owner:Lorg/anddev/andengine/entity/IEntity;


# direct methods
.method protected constructor <init>(Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iget-object v0, p1, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->owner:Lorg/anddev/andengine/entity/IEntity;

    iput-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->owner:Lorg/anddev/andengine/entity/IEntity;

    .line 214
    iget-object v0, p1, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .param p1, "owner"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "modifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->owner:Lorg/anddev/andengine/entity/IEntity;

    .line 220
    iput-object p2, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 221
    return-void
.end method


# virtual methods
.method public addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
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
    .line 265
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 266
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
    .line 225
    new-instance v0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;-><init>(Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;)V

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
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->getDuration()F

    move-result v0

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->getSecondsElapsed()F

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isRemoveWhenFinished()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->isRemoveWhenFinished()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 2
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v1, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->owner:Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0, p1, v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    return v0
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
    .line 270
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 231
    return-void
.end method

.method public setRemoveWhenFinished(Z)V
    .locals 1
    .param p1, "pRemoveWhenFinished"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->modifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->setRemoveWhenFinished(Z)V

    .line 246
    return-void
.end method
