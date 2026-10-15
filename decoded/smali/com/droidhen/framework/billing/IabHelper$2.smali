.class Lcom/droidhen/framework/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/framework/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/framework/billing/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/droidhen/framework/billing/IabHelper;ZLjava/util/List;Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/framework/billing/IabHelper$2;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    iput-boolean p2, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 629
    new-instance v3, Lcom/droidhen/framework/billing/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/droidhen/framework/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 630
    .local v3, "result":Lcom/droidhen/framework/billing/IabResult;
    const/4 v1, 0x0

    .line 632
    .local v1, "inv":Lcom/droidhen/framework/billing/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/droidhen/framework/billing/IabHelper$2;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    iget-boolean v6, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/droidhen/framework/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/droidhen/framework/billing/Inventory;
    :try_end_0
    .catch Lcom/droidhen/framework/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 638
    :goto_0
    iget-object v5, p0, Lcom/droidhen/framework/billing/IabHelper$2;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    invoke-virtual {v5}, Lcom/droidhen/framework/billing/IabHelper;->flagEndAsync()V

    .line 640
    move-object v4, v3

    .line 641
    .local v4, "result_f":Lcom/droidhen/framework/billing/IabResult;
    move-object v2, v1

    .line 642
    .local v2, "inv_f":Lcom/droidhen/framework/billing/Inventory;
    iget-object v5, p0, Lcom/droidhen/framework/billing/IabHelper$2;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    iget-boolean v5, v5, Lcom/droidhen/framework/billing/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 643
    iget-object v5, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/droidhen/framework/billing/IabHelper$2$1;

    iget-object v7, p0, Lcom/droidhen/framework/billing/IabHelper$2;->val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/droidhen/framework/billing/IabHelper$2$1;-><init>(Lcom/droidhen/framework/billing/IabHelper$2;Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;Lcom/droidhen/framework/billing/IabResult;Lcom/droidhen/framework/billing/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    :cond_0
    return-void

    .line 634
    .end local v2    # "inv_f":Lcom/droidhen/framework/billing/Inventory;
    .end local v4    # "result_f":Lcom/droidhen/framework/billing/IabResult;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "ex":Lcom/droidhen/framework/billing/IabException;
    invoke-virtual {v0}, Lcom/droidhen/framework/billing/IabException;->getResult()Lcom/droidhen/framework/billing/IabResult;

    move-result-object v3

    goto :goto_0
.end method
