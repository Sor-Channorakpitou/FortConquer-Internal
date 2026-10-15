.class Lcom/droidhen/fortconquer/GameActivity$11;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Lcom/droidhen/framework/billing/ItemPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/GameActivity;->initPurchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/GameActivity;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/GameActivity$11;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buyItemFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity$11;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0, p1, p3}, Lcom/droidhen/fortconquer/GameActivity;->storeBuyCoin(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method
