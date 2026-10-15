.class Lcom/droidhen/fortconquer/scenes/StatusScene$1;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/droidhen/fortconquer/AppContext;->GAME_MODE_STAGE:I

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->setGameMode(I)V

    .line 136
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupScene()V

    .line 137
    return-void
.end method
