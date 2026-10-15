.class Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$2;
.super Ljava/lang/Object;
.source "ArenaCompleteDlg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->initSprite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$2;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 152
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopBGMusic()V

    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setupScene()V

    .line 154
    return-void
.end method
