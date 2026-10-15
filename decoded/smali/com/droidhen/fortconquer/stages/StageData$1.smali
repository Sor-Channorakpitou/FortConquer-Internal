.class Lcom/droidhen/fortconquer/stages/StageData$1;
.super Ljava/lang/Object;
.source "StageData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/stages/StageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/stages/StageData;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/stages/StageData$1;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$1;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$1;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$1;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Enemy;->sendUnits()V

    .line 89
    :cond_0
    return-void
.end method
