.class public Lcom/droidhen/andplugin/modifier/SeqModifier;
.super Ljava/lang/Object;
.source "SeqModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


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
    .line 18
    .local p1, "subModifiers":Ljava/util/List;, "Ljava/util/List<Lorg/anddev/andengine/entity/modifier/IEntityModifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->secondsElapsed:F

    .line 19
    iput-object p1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    .line 20
    return-void
.end method

.method public varargs constructor <init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 3
    .param p1, "subModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->secondsElapsed:F

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 28
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 77
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
    .line 87
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
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/SeqModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->secondsElapsed:F

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

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
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/SeqModifier;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 3
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/SeqModifier;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    iget v2, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1, p1, p2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    .line 68
    .local v0, "ret":F
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    iget v2, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    .line 71
    :cond_1
    iget v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->secondsElapsed:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->secondsElapsed:F

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
    .line 81
    .local p1, "pModifierListener":Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;, "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->currentIndex:I

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->secondsElapsed:F

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/droidhen/andplugin/modifier/SeqModifier;->subModifiers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setRemoveWhenFinished(Z)V
    .locals 0
    .param p1, "pRemoveWhenFinished"    # Z

    .prologue
    .line 51
    return-void
.end method
