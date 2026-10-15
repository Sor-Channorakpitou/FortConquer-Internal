.class public Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
.super Lorg/anddev/andengine/util/modifier/SequenceModifier;
.source "SequenceEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier$ISubSequenceShapeModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/SequenceModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .param p1, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p2, "pEntityModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
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

.method public varargs constructor <init>(Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier$ISubSequenceShapeModifierListener;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .param p1, "pSubSequenceShapeModifierListener"    # Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier$ISubSequenceShapeModifierListener;
    .param p2, "pEntityModifierListener"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p3, "pEntityModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
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

.method public varargs constructor <init>(Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier$ISubSequenceShapeModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .param p1, "pSubSequenceShapeModifierListener"    # Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier$ISubSequenceShapeModifierListener;
    .param p2, "pEntityModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
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

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;)V
    .locals 0
    .param p1, "pSequenceShapeModifier"    # Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
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

.method public varargs constructor <init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .param p1, "pEntityModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
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
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;)V

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v0

    return-object v0
.end method
