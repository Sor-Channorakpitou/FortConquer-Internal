.class Lcom/droidhen/framework/billing/PurchaseManager$2;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Lcom/droidhen/framework/billing/IabHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lcom/droidhen/framework/billing/PurchaseManager$2;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/droidhen/framework/billing/IabResult;Lcom/droidhen/framework/billing/Purchase;)V
    .locals 1
    .param p1, "result"    # Lcom/droidhen/framework/billing/IabResult;
    .param p2, "purchase"    # Lcom/droidhen/framework/billing/Purchase;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/droidhen/framework/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/droidhen/framework/billing/PurchaseManager$2;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-virtual {v0, p2}, Lcom/droidhen/framework/billing/PurchaseManager;->buyItemFinished(Lcom/droidhen/framework/billing/Purchase;)V

    goto :goto_0
.end method
