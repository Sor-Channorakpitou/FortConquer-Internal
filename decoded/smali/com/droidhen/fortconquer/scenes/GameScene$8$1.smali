.class Lcom/droidhen/fortconquer/scenes/GameScene$8$1;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/scenes/GameScene$8;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$8$1;->this$1:Lcom/droidhen/fortconquer/scenes/GameScene$8;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$8$1;->this$1:Lcom/droidhen/fortconquer/scenes/GameScene$8;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene$8;->access$0(Lcom/droidhen/fortconquer/scenes/GameScene$8;)Lcom/droidhen/fortconquer/scenes/GameScene;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageCompleteDlg:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->setupLevelCompleteMenu()V

    .line 247
    return-void
.end method
