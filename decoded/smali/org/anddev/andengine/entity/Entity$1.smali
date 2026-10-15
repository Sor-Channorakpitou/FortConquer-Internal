.class Lorg/anddev/andengine/entity/Entity$1;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/anddev/andengine/util/ParameterCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/ParameterCallable",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity$1;->call(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public call(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/anddev/andengine/entity/IEntity;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    .line 44
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->onDetached()V

    .line 45
    return-void
.end method
