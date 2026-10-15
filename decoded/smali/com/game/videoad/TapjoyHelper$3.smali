.class Lcom/game/videoad/TapjoyHelper$3;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/videoad/TapjoyHelper;->showVideoAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/videoad/TapjoyHelper;


# direct methods
.method constructor <init>(Lcom/game/videoad/TapjoyHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper$3;->this$0:Lcom/game/videoad/TapjoyHelper;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$3;->this$0:Lcom/game/videoad/TapjoyHelper;

    invoke-virtual {v0}, Lcom/game/videoad/TapjoyHelper;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$3;->this$0:Lcom/game/videoad/TapjoyHelper;

    invoke-static {v0}, Lcom/game/videoad/TapjoyHelper;->access$3(Lcom/game/videoad/TapjoyHelper;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 125
    :cond_0
    return-void
.end method
