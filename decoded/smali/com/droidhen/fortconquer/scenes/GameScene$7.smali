.class Lcom/droidhen/fortconquer/scenes/GameScene$7;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 235
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mUserSelFireBall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 237
    :cond_0
    return-void
.end method
