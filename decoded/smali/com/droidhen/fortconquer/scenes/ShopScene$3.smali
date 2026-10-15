.class Lcom/droidhen/fortconquer/scenes/ShopScene$3;
.super Ljava/lang/Object;
.source "ShopScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 807
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 809
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$5(Lcom/droidhen/fortconquer/scenes/ShopScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 813
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupScene()V

    goto :goto_0
.end method
