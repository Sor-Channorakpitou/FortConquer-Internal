.class public Lcom/game/offerwallnew/TapjoyOfferWallHelper;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/offerwallnew/TapjoyOfferWallHelper$Holder;
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _offerWallCallback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

.field private _tapjoyConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_activity:Landroid/app/Activity;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_tapjoyConnected:Z

    .line 29
    iput-object v1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_offerWallCallback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_tapjoyConnected:Z

    return-void
.end method

.method static synthetic access$1(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Lcom/game/offerwallnew/TapjoyOfferWallCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_offerWallCallback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lcom/game/offerwallnew/TapjoyOfferWallHelper;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$Holder;->INSTANCE:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appIDOrKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_activity:Landroid/app/Activity;

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_tapjoyConnected:Z

    .line 34
    iput-object p3, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_offerWallCallback:Lcom/game/offerwallnew/TapjoyOfferWallCallback;

    .line 36
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 37
    .local v0, "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "TJC_OPTION_ENABLE_LOGGING"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/game/offerwallnew/TapjoyOfferWallHelper$1;

    invoke-direct {v3, p0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$1;-><init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper;)V

    invoke-static {v2, p2, v0, v3}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    .line 53
    new-instance v2, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;

    invoke-direct {v2, p0, p3}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$2;-><init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Lcom/game/offerwallnew/TapjoyOfferWallCallback;)V

    invoke-static {v2}, Lcom/tapjoy/Tapjoy;->setTapjoyViewListener(Lcom/tapjoy/TJViewListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/tapjoy/Tapjoy;->onActivityStart(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method public showOfferWall(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_tapjoyConnected:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/game/offerwallnew/TapjoyOfferWallHelper$3;-><init>(Lcom/game/offerwallnew/TapjoyOfferWallHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    :cond_0
    return-void
.end method
