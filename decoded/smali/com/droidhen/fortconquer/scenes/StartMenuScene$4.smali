.class Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    iget-object v1, v0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->isMusicEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/droidhen/fortconquer/CCPrefs;->enableMusic(Landroid/content/Context;Z)V

    .line 120
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/droidhen/fortconquer/CCPrefs;->isMusicEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->setMusicEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->updateMusicSwitch()V

    .line 122
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->isMusicEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 129
    :goto_1
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopBGMusic()V

    goto :goto_1
.end method
