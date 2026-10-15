.class Lcom/droidhen/fortconquer/scenes/StartMenuScene$1;
.super Ljava/lang/Object;
.source "StartMenuScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/StartMenuScene;->createBGAndSprites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->createPlayer()V

    .line 99
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setupScene()V

    .line 100
    return-void
.end method
