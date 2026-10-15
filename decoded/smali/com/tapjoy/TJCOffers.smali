.class public Lcom/tapjoy/TJCOffers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/tapjoy/TJOffersListener;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static onOffersResponse()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/tapjoy/TJCOffers;->b:Lcom/tapjoy/TJOffersListener;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/tapjoy/TJCOffers;->b:Lcom/tapjoy/TJOffersListener;

    invoke-interface {v0}, Lcom/tapjoy/TJOffersListener;->onOffersResponse()V

    .line 116
    :cond_0
    return-void
.end method

.method public static onOffersResponseFailed(Ljava/lang/String;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lcom/tapjoy/TJCOffers;->b:Lcom/tapjoy/TJOffersListener;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/tapjoy/TJCOffers;->b:Lcom/tapjoy/TJOffersListener;

    invoke-interface {v0, p0}, Lcom/tapjoy/TJOffersListener;->onOffersResponseFailure(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public showOffers(Lcom/tapjoy/TJOffersListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tapjoy/TJOffersListener;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V

    .line 39
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V
    .locals 6
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "listener"    # Lcom/tapjoy/TJOffersListener;

    .prologue
    const/4 v3, 0x0

    .line 53
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJPlacementData;Ljava/lang/String;Lcom/tapjoy/TJOffersListener;)V

    .line 54
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJPlacementData;Ljava/lang/String;Lcom/tapjoy/TJOffersListener;)V
    .locals 6
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "placementData"    # Lcom/tapjoy/TJPlacementData;
    .param p4, "callbackID"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/tapjoy/TJOffersListener;

    .prologue
    const/4 v5, 0x1

    .line 72
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 74
    sput-object p5, Lcom/tapjoy/TJCOffers;->b:Lcom/tapjoy/TJOffersListener;

    .line 76
    if-eqz p2, :cond_3

    const-string v0, "1"

    .line 79
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 81
    const-string v2, "currency_id"

    invoke-static {v1, v2, p1, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    const-string v2, "currency_selector"

    invoke-static {v1, v2, v0, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->a:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    if-eqz p3, :cond_0

    .line 87
    const-string v0, "TapjoyOffers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showOffers for placement: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 91
    const-string v0, "callback_id"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_1
    const-string v0, "view_type"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v0, "tjplacement"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    const-string v0, "legacy_view"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string v0, "URL_PARAMS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    :cond_2
    :goto_1
    return-void

    .line 76
    :cond_3
    const-string v0, "0"

    goto :goto_0

    .line 102
    :cond_4
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
