.class public abstract Lorg/anddev/andengine/entity/scene/background/BaseBackground;
.super Ljava/lang/Object;
.source "BaseBackground.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/background/IBackground;


# static fields
.field private static final BACKGROUNDMODIFIERS_CAPACITY_DEFAULT:I = 0x4


# instance fields
.field private final mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/ModifierList",
            "<",
            "Lorg/anddev/andengine/entity/scene/background/IBackground;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/anddev/andengine/util/modifier/ModifierList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/util/modifier/ModifierList;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/background/BaseBackground;->mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;

    .line 15
    return-void
.end method


# virtual methods
.method public addBackgroundModifier(Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/scene/background/IBackground;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "pBackgroundModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/scene/background/IBackground;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/BaseBackground;->mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/modifier/ModifierList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public clearBackgroundModifiers()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/BaseBackground;->mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/ModifierList;->clear()V

    .line 53
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/BaseBackground;->mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/modifier/ModifierList;->onUpdate(F)V

    .line 58
    return-void
.end method

.method public removeBackgroundModifier(Lorg/anddev/andengine/util/modifier/IModifier;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/scene/background/IBackground;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "pBackgroundModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/scene/background/IBackground;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/BaseBackground;->mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/modifier/ModifierList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/BaseBackground;->mBackgroundModifiers:Lorg/anddev/andengine/util/modifier/ModifierList;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/ModifierList;->reset()V

    .line 63
    return-void
.end method
