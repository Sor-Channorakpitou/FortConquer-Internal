.class public Lorg/anddev/andengine/entity/modifier/DelayModifier;
.super Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;
.source "DelayModifier.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pDuration"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(F)V

    .line 31
    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/DelayModifier;)V
    .locals 0
    .param p1, "pDelayModifier"    # Lorg/anddev/andengine/entity/modifier/DelayModifier;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;)V

    .line 35
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/DelayModifier;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(Lorg/anddev/andengine/entity/modifier/DelayModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/DelayModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/DelayModifier;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/DelayModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/DelayModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/DelayModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 53
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/DelayModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 58
    return-void
.end method
