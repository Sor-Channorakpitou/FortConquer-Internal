.class Lcom/droidhen/fortconquer/scenes/ArenaScene$13;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;->createBGAndSprites()V
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 358
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 3
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
    .local p1, "arg0":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 366
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 367
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->startNextBattleStep()V

    .line 368
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ArenaScene$13;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

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
    .line 360
    .local p1, "arg0":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    return-void
.end method
