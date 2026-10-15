.class Lcom/droidhen/framework/billing/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/framework/billing/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/framework/billing/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/droidhen/framework/billing/Inventory;

.field private final synthetic val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/droidhen/framework/billing/IabResult;


# direct methods
.method constructor <init>(Lcom/droidhen/framework/billing/IabHelper$2;Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;Lcom/droidhen/framework/billing/IabResult;Lcom/droidhen/framework/billing/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->this$1:Lcom/droidhen/framework/billing/IabHelper$2;

    iput-object p2, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->val$result_f:Lcom/droidhen/framework/billing/IabResult;

    iput-object p4, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->val$inv_f:Lcom/droidhen/framework/billing/Inventory;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->val$listener:Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->val$result_f:Lcom/droidhen/framework/billing/IabResult;

    iget-object v2, p0, Lcom/droidhen/framework/billing/IabHelper$2$1;->val$inv_f:Lcom/droidhen/framework/billing/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/droidhen/framework/billing/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/droidhen/framework/billing/IabResult;Lcom/droidhen/framework/billing/Inventory;)V

    .line 646
    return-void
.end method
