.class Lcom/droidhen/fortconquer/scenes/ArenaScene$17;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;->scrollCards(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 813
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p2, "entity"    # Lorg/anddev/andengine/entity/IEntity;
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
    .line 820
    .local p1, "arg0":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mLeftAttackIndex:I

    if-ne v0, v1, :cond_0

    .line 823
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->startNextBattleStep()V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mRightAttackIndex:I

    if-ne v0, v1, :cond_0

    .line 827
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->startNextBattleStep()V

    goto :goto_0
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ArenaScene$17;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p2, "arg1"    # Lorg/anddev/andengine/entity/IEntity;
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
    .line 816
    .local p1, "arg0":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    return-void
.end method
