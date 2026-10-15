.class public Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;
.super Lorg/anddev/andengine/util/modifier/SequenceModifier;
.source "SequenceBackgroundModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier$ISubSequenceBackgroundModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/SequenceModifier",
        "<",
        "Lorg/anddev/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;[Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .param p1, "pBackgroundModifierListener"    # Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;
    .param p2, "pBackgroundModifiers"    # [Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 36
    return-void
.end method

.method public varargs constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier$ISubSequenceBackgroundModifierListener;Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;[Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .param p1, "pSubSequenceBackgroundModifierListener"    # Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier$ISubSequenceBackgroundModifierListener;
    .param p2, "pBackgroundModifierListener"    # Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;
    .param p3, "pBackgroundModifiers"    # [Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier$ISubSequenceBackgroundModifierListener;[Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .param p1, "pSubSequenceBackgroundModifierListener"    # Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier$ISubSequenceBackgroundModifierListener;
    .param p2, "pBackgroundModifiers"    # [Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;)V
    .locals 0
    .param p1, "pSequenceBackgroundModifier"    # Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier;)V

    .line 44
    return-void
.end method

.method public varargs constructor <init>([Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .param p1, "pBackgroundModifiers"    # [Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>([Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;-><init>(Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;)V

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/SequenceBackgroundModifier;

    move-result-object v0

    return-object v0
.end method
