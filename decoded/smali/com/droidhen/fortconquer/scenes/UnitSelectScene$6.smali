.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iput-boolean v2, v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowGiftPackage:Z

    .line 150
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/droidhen/fortconquer/CCPrefs;->getGiftPackageType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$3(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V

    .line 152
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/droidhen/fortconquer/CCPrefs;->getDragonType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$4(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V

    .line 154
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$5(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$6(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$4(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$5(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$6(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$7(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;IILcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;)V

    .line 161
    return-void
.end method
