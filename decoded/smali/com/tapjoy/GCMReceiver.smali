.class public Lcom/tapjoy/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {p1}, Lcom/tapjoy/internal/fx;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/fx;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/tapjoy/GCMReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/tapjoy/GCMReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 59
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/GCMReceiver;->abortBroadcast()V

    .line 64
    :cond_0
    return-void
.end method
