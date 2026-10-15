.class Lcom/droidhen/fortconquer/scenes/GameScene$6$1;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/scenes/GameScene$6;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$6$1;->this$1:Lcom/droidhen/fortconquer/scenes/GameScene$6;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$6$1;->this$1:Lcom/droidhen/fortconquer/scenes/GameScene$6;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene$6;->access$0(Lcom/droidhen/fortconquer/scenes/GameScene$6;)Lcom/droidhen/fortconquer/scenes/GameScene;

    move-result-object v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->access$1(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    .line 222
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 223
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$6$1;->this$1:Lcom/droidhen/fortconquer/scenes/GameScene$6;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene$6;->access$0(Lcom/droidhen/fortconquer/scenes/GameScene$6;)Lcom/droidhen/fortconquer/scenes/GameScene;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/stages/StageData;->updateStage()V

    .line 224
    return-void
.end method
