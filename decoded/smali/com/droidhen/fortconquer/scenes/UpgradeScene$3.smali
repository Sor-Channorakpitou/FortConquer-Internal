.class Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;
.super Ljava/lang/Object;
.source "UpgradeScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UpgradeScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->access$2(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene;Z)V

    .line 322
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupScene()V

    goto :goto_0
.end method
