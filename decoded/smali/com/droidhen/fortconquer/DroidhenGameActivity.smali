.class public abstract Lcom/droidhen/fortconquer/DroidhenGameActivity;
.super Lorg/anddev/andengine/ui/activity/BaseGameActivity;
.source "DroidhenGameActivity.java"


# static fields
.field public static bHasFocus:Z


# instance fields
.field private bNeedResumeSound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/droidhen/fortconquer/DroidhenGameActivity;->bHasFocus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onPause()V

    .line 22
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->pauseBgMusic()V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onResume()V

    .line 17
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "pHasWindowFocus"    # Z

    .prologue
    .line 39
    invoke-super {p0, p1}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onWindowFocusChanged(Z)V

    .line 40
    sput-boolean p1, Lcom/droidhen/fortconquer/DroidhenGameActivity;->bHasFocus:Z

    .line 41
    sget-boolean v1, Lcom/droidhen/fortconquer/DroidhenGameActivity;->bHasFocus:Z

    if-nez v1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->pauseBgMusic()V

    .line 43
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eqz v1, :cond_0

    sget v1, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    if-lez v1, :cond_0

    .line 44
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->onPause()V

    .line 46
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->handleEnergyRestore()V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/DroidhenGameActivity;->bNeedResumeSound:Z

    if-eqz v1, :cond_3

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/droidhen/fortconquer/DroidhenGameActivity;->bNeedResumeSound:Z

    .line 51
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/DroidhenGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eq v1, v2, :cond_3

    .line 54
    :try_start_0
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_3
    :goto_1
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eqz v1, :cond_4

    .line 61
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->onResume()V

    .line 62
    :cond_4
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->handleEnergyRestore()V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method protected pauseBgMusic()V
    .locals 2

    .prologue
    .line 26
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    :try_start_0
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/droidhen/fortconquer/DroidhenGameActivity;->bNeedResumeSound:Z

    .line 34
    :cond_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
