.class Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"

# interfaces
.implements Lcom/tapjoy/TJViewListener;


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

.field private final synthetic val$callback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;


# direct methods
.method constructor <init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    iput-object p2, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;->val$callback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDidClose(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 71
    const-string v0, "tapjoy"

    const-string v1, "tapjoy view did close"

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2$1;

    iget-object v1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;->val$callback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    invoke-direct {v0, p0, v1}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2$1;-><init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 86
    return-void
.end method

.method public onViewDidOpen(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 66
    const-string v0, "tapjoy"

    const-string v1, "tapjoy view did open"

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onViewWillClose(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 61
    const-string v0, "tapjoy"

    const-string v1, "tapjoy view is about to close"

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onViewWillOpen(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 56
    const-string v0, "tapjoy"

    const-string v1, "tapjoy view is about to open"

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
