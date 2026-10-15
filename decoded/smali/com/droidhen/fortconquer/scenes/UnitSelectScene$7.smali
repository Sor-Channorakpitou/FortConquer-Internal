.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;


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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)Z
    .locals 3
    .param p1, "signal"    # I

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$8(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$5(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/GameActivity;->requestPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
