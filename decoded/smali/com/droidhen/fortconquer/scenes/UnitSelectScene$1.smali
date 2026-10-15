.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$1;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentWorld:I

    .line 107
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->pauseBGMusic()V

    .line 108
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getGameMode()I

    move-result v0

    sget v1, Lcom/droidhen/fortconquer/AppContext;->GAME_MODE_STAGE:I

    if-ne v0, v1, :cond_3

    .line 109
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->startNextStage()V

    .line 113
    :goto_1
    return-void

    .line 105
    :cond_0
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 111
    :cond_3
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->startBattle()V

    goto :goto_1
.end method
