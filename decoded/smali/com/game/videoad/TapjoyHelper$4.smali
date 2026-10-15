.class Lcom/game/videoad/TapjoyHelper$4;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/videoad/TapjoyHelper;->showOfferWall()V
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
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper$4;->this$0:Lcom/game/videoad/TapjoyHelper;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$4;->this$0:Lcom/game/videoad/TapjoyHelper;

    new-instance v1, Lcom/tapjoy/TJPlacement;

    iget-object v2, p0, Lcom/game/videoad/TapjoyHelper$4;->this$0:Lcom/game/videoad/TapjoyHelper;

    iget-object v2, v2, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    const-string v3, "Offerwall"

    new-instance v4, Lcom/game/videoad/TapjoyHelper$4$1;

    invoke-direct {v4, p0}, Lcom/game/videoad/TapjoyHelper$4$1;-><init>(Lcom/game/videoad/TapjoyHelper$4;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    invoke-static {v0, v1}, Lcom/game/videoad/TapjoyHelper;->access$4(Lcom/game/videoad/TapjoyHelper;Lcom/tapjoy/TJPlacement;)V

    .line 190
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$4;->this$0:Lcom/game/videoad/TapjoyHelper;

    invoke-static {v0}, Lcom/game/videoad/TapjoyHelper;->access$5(Lcom/game/videoad/TapjoyHelper;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 191
    return-void
.end method
