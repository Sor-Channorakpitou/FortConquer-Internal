.class Lcom/droidhen/framework/billing/PurchaseManager$3;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/framework/billing/PurchaseManager;->buyItemFinished(Lcom/droidhen/framework/billing/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/framework/billing/PurchaseManager;

.field private final synthetic val$purchase:Lcom/droidhen/framework/billing/Purchase;


# direct methods
.method constructor <init>(Lcom/droidhen/framework/billing/PurchaseManager;Lcom/droidhen/framework/billing/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    iput-object p2, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    invoke-virtual {v2}, Lcom/droidhen/framework/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "orderId":Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/framework/billing/DataProvider;->getDP()Lcom/droidhen/framework/billing/DataProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/droidhen/framework/billing/DataProvider;->checkBillID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    invoke-virtual {v2}, Lcom/droidhen/framework/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "sku":Ljava/lang/String;
    iget-object v2, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-static {v2}, Lcom/droidhen/framework/billing/PurchaseManager;->access$1(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/ItemPurchaseListener;

    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    invoke-virtual {v3}, Lcom/droidhen/framework/billing/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-interface {v2, v1, v0, v3}, Lcom/droidhen/framework/billing/ItemPurchaseListener;->buyItemFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v1    # "sku":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    iget-object v3, p0, Lcom/droidhen/framework/billing/PurchaseManager$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    invoke-virtual {v2, v3}, Lcom/droidhen/framework/billing/PurchaseManager;->confirmPurchase(Lcom/droidhen/framework/billing/Purchase;)V

    .line 46
    return-void
.end method
