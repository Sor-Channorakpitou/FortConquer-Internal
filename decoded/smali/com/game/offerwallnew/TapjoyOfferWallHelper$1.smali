.class Lcom/game/offerwallnew/TapjoyOfferWallHelper$1;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/offerwallnew/TapjoyOfferWallHelper;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;


# direct methods
.method constructor <init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$1;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "tapjoy"

    const-string v1, "tapjoy connect failed"

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$1;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Z)V

    .line 50
    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "tapjoy"

    const-string v1, "tapjoy connect success"

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$1;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Z)V

    .line 44
    return-void
.end method
