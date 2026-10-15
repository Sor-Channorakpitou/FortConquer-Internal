.class public Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
.super Lorg/anddev/andengine/util/modifier/ParallelModifier;
.source "ParallelEntityModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/ParallelModifier",
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
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;)V
    .locals 0
    .param p1, "pParallelShapeModifier"    # Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V

    .line 36
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
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>([Lorg/anddev/andengine/util/modifier/IModifier;)V

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;)V

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/ParallelModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method
