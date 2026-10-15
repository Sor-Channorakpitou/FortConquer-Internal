.class public Lcom/game/videoad/TapjoyHelper;
.super Lcom/game/videoad/AbstractVideoAd;
.source "TapjoyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/videoad/TapjoyHelper$TapjoyHelperHolder;
    }
.end annotation


# instance fields
.field private _directPlayPlacement:Lcom/tapjoy/TJPlacement;

.field private _offerwallPlacement:Lcom/tapjoy/TJPlacement;

.field private _tapjoyConnected:Z

.field private _userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/game/videoad/AbstractVideoAd;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_userId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/game/videoad/TapjoyHelper;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    return-void
.end method

.method static synthetic access$1(Lcom/game/videoad/TapjoyHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/videoad/TapjoyHelper;Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper;->_directPlayPlacement:Lcom/tapjoy/TJPlacement;

    return-void
.end method

.method static synthetic access$3(Lcom/game/videoad/TapjoyHelper;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_directPlayPlacement:Lcom/tapjoy/TJPlacement;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/videoad/TapjoyHelper;Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper;->_offerwallPlacement:Lcom/tapjoy/TJPlacement;

    return-void
.end method

.method static synthetic access$5(Lcom/game/videoad/TapjoyHelper;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_offerwallPlacement:Lcom/tapjoy/TJPlacement;

    return-object v0
.end method

.method public static getInstance()Lcom/game/videoad/TapjoyHelper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/game/videoad/TapjoyHelper$TapjoyHelperHolder;->INSTANCE:Lcom/game/videoad/TapjoyHelper;

    return-object v0
.end method


# virtual methods
.method public isAdReady()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_directPlayPlacement:Lcom/tapjoy/TJPlacement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_directPlayPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_directPlayPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    return v0
.end method

.method public isTapjoyConnected()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    return v0
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/videoad/VideoAdCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appIDOrKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/game/videoad/VideoAdCallback;

    .prologue
    .line 32
    iget-object v2, p0, Lcom/game/videoad/TapjoyHelper;->_appIDOrKey:Ljava/lang/String;

    invoke-super {p0, p1, v2, p3}, Lcom/game/videoad/AbstractVideoAd;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/videoad/VideoAdCallback;)V

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    .line 35
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 36
    .local v0, "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "TJC_OPTION_ENABLE_LOGGING"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/game/videoad/TapjoyHelper$1;

    invoke-direct {v3, p0}, Lcom/game/videoad/TapjoyHelper$1;-><init>(Lcom/game/videoad/TapjoyHelper;)V

    invoke-static {v2, p2, v0, v3}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStart(Landroid/app/Activity;)V

    .line 134
    :cond_0
    return-void
.end method

.method public preload()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/videoad/TapjoyHelper$2;

    invoke-direct {v1, p0}, Lcom/game/videoad/TapjoyHelper$2;-><init>(Lcom/game/videoad/TapjoyHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/game/videoad/TapjoyHelper;->_userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public showOfferWall()V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/game/videoad/TapjoyHelper;->_tapjoyConnected:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/videoad/TapjoyHelper$4;

    invoke-direct {v1, p0}, Lcom/game/videoad/TapjoyHelper$4;-><init>(Lcom/game/videoad/TapjoyHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    :cond_0
    return-void
.end method

.method public showVideoAd()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/game/videoad/TapjoyHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/videoad/TapjoyHelper$3;

    invoke-direct {v1, p0}, Lcom/game/videoad/TapjoyHelper$3;-><init>(Lcom/game/videoad/TapjoyHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
