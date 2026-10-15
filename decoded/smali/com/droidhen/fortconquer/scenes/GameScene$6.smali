.class Lcom/droidhen/fortconquer/scenes/GameScene$6;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/GameScene$6;)Lcom/droidhen/fortconquer/scenes/GameScene;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/GameScene$6$1;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/GameScene$6$1;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene$6;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
