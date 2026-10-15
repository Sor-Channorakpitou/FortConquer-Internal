.class Lcom/droidhen/fortconquer/scenes/GameScene$23;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$23;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iput-boolean p2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$23;->val$playerWin:Z

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$23;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$23;->val$playerWin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->playFortExplode(Z)V

    .line 1301
    return-void

    .line 1300
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
