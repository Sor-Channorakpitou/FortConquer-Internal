.class Lcom/droidhen/framework/billing/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/framework/billing/IabHelper;->consumeAsync(Lcom/droidhen/framework/billing/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/framework/billing/IabHelper;

.field private final synthetic val$purchase:Lcom/droidhen/framework/billing/Purchase;


# direct methods
.method constructor <init>(Lcom/droidhen/framework/billing/IabHelper;Lcom/droidhen/framework/billing/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/framework/billing/IabHelper$3;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    iput-object p2, p0, Lcom/droidhen/framework/billing/IabHelper$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/droidhen/framework/billing/IabHelper$3;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    const-string v2, "consume"

    invoke-virtual {v1, v2}, Lcom/droidhen/framework/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/droidhen/framework/billing/IabHelper$3;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    iget-object v2, p0, Lcom/droidhen/framework/billing/IabHelper$3;->val$purchase:Lcom/droidhen/framework/billing/Purchase;

    invoke-virtual {v1, v2}, Lcom/droidhen/framework/billing/IabHelper;->consume(Lcom/droidhen/framework/billing/Purchase;)V
    :try_end_0
    .catch Lcom/droidhen/framework/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    iget-object v1, p0, Lcom/droidhen/framework/billing/IabHelper$3;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    invoke-virtual {v1}, Lcom/droidhen/framework/billing/IabHelper;->flagEndAsync()V

    .line 753
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "ex":Lcom/droidhen/framework/billing/IabException;
    :try_start_1
    invoke-virtual {v0}, Lcom/droidhen/framework/billing/IabException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    iget-object v1, p0, Lcom/droidhen/framework/billing/IabHelper$3;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    invoke-virtual {v1}, Lcom/droidhen/framework/billing/IabHelper;->flagEndAsync()V

    goto :goto_0

    .line 750
    .end local v0    # "ex":Lcom/droidhen/framework/billing/IabException;
    :catchall_0
    move-exception v1

    .line 751
    iget-object v2, p0, Lcom/droidhen/framework/billing/IabHelper$3;->this$0:Lcom/droidhen/framework/billing/IabHelper;

    invoke-virtual {v2}, Lcom/droidhen/framework/billing/IabHelper;->flagEndAsync()V

    .line 752
    throw v1
.end method
