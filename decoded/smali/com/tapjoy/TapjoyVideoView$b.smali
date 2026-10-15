.class final Lcom/tapjoy/TapjoyVideoView$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$b;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyVideoView;B)V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView$b;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 883
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 885
    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$b;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->d(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 887
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$b;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyVideoView;->a(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 888
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$b;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-virtual {v0, v2}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 889
    const-string v0, "VideoView"

    const-string v1, "No network connectivity during video playback"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_0
    return-void
.end method
