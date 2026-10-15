.class Lcom/droidhen/framework/billing/PurchaseManager$4;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Lcom/droidhen/framework/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/framework/billing/PurchaseManager;->initPurchase(Landroid/app/Activity;Ljava/lang/String;ILcom/droidhen/framework/billing/ItemPurchaseListener;)V
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
    iput-object p1, p0, Lcom/droidhen/framework/billing/PurchaseManager$4;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/droidhen/framework/billing/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/droidhen/framework/billing/IabResult;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/droidhen/framework/billing/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager$4;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/droidhen/framework/billing/PurchaseManager;->access$2(Lcom/droidhen/framework/billing/PurchaseManager;Z)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager$4;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-static {v0}, Lcom/droidhen/framework/billing/PurchaseManager;->access$3(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/IabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager$4;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-static {v0}, Lcom/droidhen/framework/billing/PurchaseManager;->access$3(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager$4;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-static {v1}, Lcom/droidhen/framework/billing/PurchaseManager;->access$4(Lcom/droidhen/framework/billing/PurchaseManager;)Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/framework/billing/IabHelper;->queryInventoryAsync(Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
