.class Lcom/game/videoad/TapjoyHelper$2$1;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/videoad/TapjoyHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/videoad/TapjoyHelper$2;


# direct methods
.method constructor <init>(Lcom/game/videoad/TapjoyHelper$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper$2$1;->this$1:Lcom/game/videoad/TapjoyHelper$2;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$2$1;->this$1:Lcom/game/videoad/TapjoyHelper$2;

    invoke-static {v0}, Lcom/game/videoad/TapjoyHelper$2;->access$0(Lcom/game/videoad/TapjoyHelper$2;)Lcom/game/videoad/TapjoyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/videoad/TapjoyHelper;->watchComplete()V

    .line 64
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$2$1;->this$1:Lcom/game/videoad/TapjoyHelper$2;

    invoke-static {v0}, Lcom/game/videoad/TapjoyHelper$2;->access$0(Lcom/game/videoad/TapjoyHelper$2;)Lcom/game/videoad/TapjoyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/videoad/TapjoyHelper;->adLoaded()V

    .line 69
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 75
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJError;

    .prologue
    .line 88
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 94
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I

    .prologue
    .line 101
    return-void
.end method
