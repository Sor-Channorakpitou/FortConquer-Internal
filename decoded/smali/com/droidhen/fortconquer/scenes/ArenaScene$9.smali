.class Lcom/droidhen/fortconquer/scenes/ArenaScene$9;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 232
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->showArenaCompleteDlg()V

    .line 233
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 234
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopBGMusic()V

    .line 235
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 236
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    if-ne v0, v2, :cond_0

    .line 237
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    goto :goto_0
.end method
