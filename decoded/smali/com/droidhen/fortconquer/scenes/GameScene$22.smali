.class Lcom/droidhen/fortconquer/scenes/GameScene$22;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->playDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

.field private final synthetic val$playerWin:Z


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iput-boolean p2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->val$playerWin:Z

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 1292
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v3, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->val$playerWin:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aget-object v0, v3, v0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1293
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 1294
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-boolean v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->val$playerWin:Z

    if-eqz v3, :cond_1

    :goto_1
    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$22;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1295
    return-void

    :cond_0
    move v0, v2

    .line 1292
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1294
    goto :goto_1
.end method
