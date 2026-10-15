.class Lcom/game/videoad/TapjoyHelper$1;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/videoad/TapjoyHelper;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/videoad/VideoAdCallback;)V
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
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper$1;->this$0:Lcom/game/videoad/TapjoyHelper;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$1;->this$0:Lcom/game/videoad/TapjoyHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/videoad/TapjoyHelper;->access$0(Lcom/game/videoad/TapjoyHelper;Z)V

    .line 48
    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$1;->this$0:Lcom/game/videoad/TapjoyHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game/videoad/TapjoyHelper;->access$0(Lcom/game/videoad/TapjoyHelper;Z)V

    .line 42
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$1;->this$0:Lcom/game/videoad/TapjoyHelper;

    invoke-static {v0}, Lcom/game/videoad/TapjoyHelper;->access$1(Lcom/game/videoad/TapjoyHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper$1;->this$0:Lcom/game/videoad/TapjoyHelper;

    iget-object v1, p0, Lcom/game/videoad/TapjoyHelper$1;->this$0:Lcom/game/videoad/TapjoyHelper;

    invoke-static {v1}, Lcom/game/videoad/TapjoyHelper;->access$1(Lcom/game/videoad/TapjoyHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/videoad/TapjoyHelper;->setUserID(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
