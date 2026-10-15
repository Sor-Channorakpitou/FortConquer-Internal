.class Lorg/anddev/andengine/entity/modifier/PathModifier$2;
.super Ljava/lang/Object;
.source "PathModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "pEntityModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$5(Lorg/anddev/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathFinished(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;)V

    .line 122
    :cond_0
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$4(Lorg/anddev/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-static {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathStarted(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;)V

    .line 114
    :cond_0
    return-void
.end method
