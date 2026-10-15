.class Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;)Lcom/droidhen/fortconquer/scenes/UpgradeScene;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    invoke-static {v0, v3}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene;Z)V

    .line 93
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    const/4 v1, 0x0

    new-instance v2, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2$1;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2$1;-><init>(Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;)V

    invoke-static {v0, v3, v1, v2}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;ILorg/anddev/andengine/entity/Entity;Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;)V

    goto :goto_0
.end method
