.class Lorg/anddev/andengine/entity/modifier/PathModifier$1;
.super Ljava/lang/Object;
.source "PathModifier.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSubSequenceFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->onSubSequenceFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;I)V

    return-void
.end method

.method public onSubSequenceFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;I)V
    .locals 2
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p3, "pIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "pEntityModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2, p3}, Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathWaypointFinished(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;I)V

    .line 105
    :cond_0
    return-void
.end method

.method public bridge synthetic onSubSequenceStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->onSubSequenceStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;I)V

    return-void
.end method

.method public onSubSequenceStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;I)V
    .locals 2
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p3, "pIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2, p3}, Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathWaypointStarted(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;I)V

    .line 98
    :cond_0
    return-void
.end method
