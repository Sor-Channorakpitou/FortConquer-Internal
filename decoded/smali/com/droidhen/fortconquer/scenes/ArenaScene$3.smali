.class Lcom/droidhen/fortconquer/scenes/ArenaScene$3;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->clearModifiers()V

    .line 176
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachChildren()V

    .line 177
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->detachNetworkError()V

    .line 178
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopBGMusic()V

    .line 179
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setupScene()V

    .line 180
    return-void
.end method
