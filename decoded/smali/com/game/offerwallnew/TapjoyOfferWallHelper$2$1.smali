.class Lcom/game/offerwallnew/TapjoyOfferWallHelper$2$1;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"

# interfaces
.implements Lcom/tapjoy/TJGetCurrencyBalanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;->onViewDidClose(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;

.field private final synthetic val$callback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;


# direct methods
.method constructor <init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;

    iput-object p2, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2$1;->val$callback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 82
    const-string v0, "tapjoy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tapjoy get currency balance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2$1;->val$callback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    invoke-interface {v0, p2}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->updateCurrencyBalance(I)V

    .line 84
    return-void
.end method

.method public onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "tapjoy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tapjoy get currency balance failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
