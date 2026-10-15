.class Lcom/droidhen/framework/billing/PurchaseManager$1;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/framework/billing/PurchaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/framework/billing/PurchaseManager;


# direct methods
.method constructor <init>(Lcom/droidhen/framework/billing/PurchaseManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/framework/billing/PurchaseManager$1;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/droidhen/framework/billing/IabResult;Lcom/droidhen/framework/billing/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/droidhen/framework/billing/IabResult;
    .param p2, "inventory"    # Lcom/droidhen/framework/billing/Inventory;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/droidhen/framework/billing/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager$1;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/droidhen/framework/billing/PurchaseManager;->access$0(Lcom/droidhen/framework/billing/PurchaseManager;Z)V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/droidhen/framework/billing/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager$1;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/droidhen/framework/billing/PurchaseManager;->access$0(Lcom/droidhen/framework/billing/PurchaseManager;Z)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/framework/billing/Purchase;

    .line 89
    .local v0, "purchase":Lcom/droidhen/framework/billing/Purchase;
    iget-object v2, p0, Lcom/droidhen/framework/billing/PurchaseManager$1;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-virtual {v2, v0}, Lcom/droidhen/framework/billing/PurchaseManager;->buyItemFinished(Lcom/droidhen/framework/billing/Purchase;)V

    goto :goto_1
.end method
