.class Lcom/game/videoad/TapjoyHelper$2;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/videoad/TapjoyHelper;->preload()V
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
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper$2;->this$0:Lcom/game/videoad/TapjoyHelper;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/game/videoad/TapjoyHelper$2;)Lcom/game/videoad/TapjoyHelper;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$2;->this$0:Lcom/game/videoad/TapjoyHelper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$2;->this$0:Lcom/game/videoad/TapjoyHelper;

    new-instance v1, Lcom/tapjoy/TJPlacement;

    iget-object v2, p0, Lcom/game/videoad/TapjoyHelper$2;->this$0:Lcom/game/videoad/TapjoyHelper;

    iget-object v2, v2, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    const-string v3, "Video"

    new-instance v4, Lcom/game/videoad/TapjoyHelper$2$1;

    invoke-direct {v4, p0}, Lcom/game/videoad/TapjoyHelper$2$1;-><init>(Lcom/game/videoad/TapjoyHelper$2;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    invoke-static {v0, v1}, Lcom/game/videoad/TapjoyHelper;->access$2(Lcom/game/videoad/TapjoyHelper;Lcom/tapjoy/TJPlacement;)V

    .line 103
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$2;->this$0:Lcom/game/videoad/TapjoyHelper;

    invoke-static {v0}, Lcom/game/videoad/TapjoyHelper;->access$3(Lcom/game/videoad/TapjoyHelper;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 104
    return-void
.end method
