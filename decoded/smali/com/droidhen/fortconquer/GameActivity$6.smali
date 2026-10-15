.class Lcom/droidhen/fortconquer/GameActivity$6;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Lcom/game/offerwallnew/TapjoyOfferWallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/GameActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/GameActivity$6;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideWait()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public showWait()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public updateCurrencyBalance(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity$6;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/GameActivity;->addTapjoyReward(I)V

    .line 222
    return-void
.end method
