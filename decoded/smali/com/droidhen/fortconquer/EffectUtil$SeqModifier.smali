.class public Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;
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
    name = "SeqModifier"
.end annotation


# instance fields
.field private currentIndex:I

.field private secondsElapsed:F

.field private subModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/modifier/IEntityModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/modifier/IEntityModifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "subModifiers":Ljava/util/List;, "Ljava/util/List<Lorg/anddev/andengine/entity/modifier/IEntityModifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->secondsElapsed:F

    .line 290
    iput-object p1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->subModifiers:Ljava/util/List;

    .line 291
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
    .line 337
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
    .line 347
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
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->secondsElapsed:F

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    iget-object v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->subModifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

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
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 3
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->subModifiers:Ljava/util/List;

    iget v2, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1, p1, p2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    .line 328
    .local v0, "ret":F
    iget-object v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->subModifiers:Ljava/util/List;

    iget v2, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    .line 331
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->secondsElapsed:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->secondsElapsed:F

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
    .line 341
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->currentIndex:I

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;->secondsElapsed:F

    .line 297
    return-void
.end method

.method public setRemoveWhenFinished(Z)V
    .locals 0
    .param p1, "pRemoveWhenFinished"    # Z

    .prologue
    .line 311
    return-void
.end method
