.class Lcom/game/videoad/TapjoyHelper$4$1;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/videoad/TapjoyHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/videoad/TapjoyHelper$4;


# direct methods
.method constructor <init>(Lcom/game/videoad/TapjoyHelper$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper$4$1;->this$1:Lcom/game/videoad/TapjoyHelper$4;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 152
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 157
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 162
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 168
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJError;

    .prologue
    .line 175
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 181
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Lcom/tapjoy/TJPlacement;
    .param p2, "arg1"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I

    .prologue
    .line 188
    return-void
.end method
