.class Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/offerwallnew/TapjoyOfferWallHelper;->showOfferWall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

.field private final synthetic val$placementName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    iput-object p2, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->val$placementName:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)Lcom/game/offerwallnew/TapjoyOfferWallHelper;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    invoke-static {v1}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/game/offerwallnew/TapjoyOfferWallCallback;->showWait()V

    .line 107
    new-instance v0, Lcom/tapjoy/TJPlacement;

    iget-object v1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->this$0:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    invoke-static {v1}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->access$2(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;->val$placementName:Ljava/lang/String;

    new-instance v3, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;

    invoke-direct {v3, p0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3$1;-><init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    .line 147
    .local v0, "offerwallPlacement":Lcom/tapjoy/TJPlacement;
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 148
    return-void
.end method
