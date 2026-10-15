.class public abstract Lcom/droidhen/fortconquer/layer/Layer;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "Layer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final attachTo(Lorg/anddev/andengine/entity/Entity;)V
    .locals 0
    .param p1, "entity"    # Lorg/anddev/andengine/entity/Entity;

    .prologue
    .line 22
    invoke-virtual {p1, p0}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 23
    return-void
.end method

.method public abstract onAttached()V
.end method

.method public abstract onDetached()V
.end method
