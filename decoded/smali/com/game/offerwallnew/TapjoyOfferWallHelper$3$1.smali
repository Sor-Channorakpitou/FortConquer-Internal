.class Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;


# direct methods
.method constructor <init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 111
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 116
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 117
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 122
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 128
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJError;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 134
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 139
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;->this$1:Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->hideWait()V

    .line 145
    return-void
.end method
