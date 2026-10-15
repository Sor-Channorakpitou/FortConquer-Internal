.class Lcom/droidhen/framework/billing/PurchaseManager$5;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/framework/billing/PurchaseManager;->alertBillingNotSupport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/framework/billing/PurchaseManager;

.field private final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/droidhen/framework/billing/PurchaseManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/framework/billing/PurchaseManager$5;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    iput-object p2, p0, Lcom/droidhen/framework/billing/PurchaseManager$5;->val$helpUri:Landroid/net/Uri;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/droidhen/framework/billing/PurchaseManager$5;->val$helpUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/droidhen/framework/billing/PurchaseManager$5;->this$0:Lcom/droidhen/framework/billing/PurchaseManager;

    invoke-static {v1}, Lcom/droidhen/framework/billing/PurchaseManager;->access$5(Lcom/droidhen/framework/billing/PurchaseManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method
