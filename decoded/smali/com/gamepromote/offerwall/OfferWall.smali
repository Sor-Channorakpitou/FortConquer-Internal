.class public Lcom/gamepromote/offerwall/OfferWall;
.super Ljava/lang/Object;
.source "OfferWall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamepromote/offerwall/OfferWall$OfferWallHolder;
    }
.end annotation


# static fields
.field public static GAME_CONTEXT:Landroid/content/Context;


# instance fields
.field private adList:Lcom/gamepromote/offerwall/ad/AdList;

.field private adReward:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

.field private adVersion:Lcom/gamepromote/offerwall/ad/AdVersion;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-direct {v0}, Lcom/gamepromote/offerwall/ad/AdVersion;-><init>()V

    iput-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adVersion:Lcom/gamepromote/offerwall/ad/AdVersion;

    .line 20
    new-instance v0, Lcom/gamepromote/offerwall/ad/AdList;

    invoke-direct {v0}, Lcom/gamepromote/offerwall/ad/AdList;-><init>()V

    iput-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adList:Lcom/gamepromote/offerwall/ad/AdList;

    .line 21
    new-instance v0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-direct {v0}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;-><init>()V

    iput-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adReward:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    .line 33
    iget-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adVersion:Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/ad/AdVersion;->getVersionPre()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/gamepromote/offerwall/OfferWall;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/gamepromote/offerwall/OfferWall;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gamepromote/offerwall/OfferWall;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 24
    sput-object p0, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/gamepromote/offerwall/OfferWall$OfferWallHolder;->INSTANCE:Lcom/gamepromote/offerwall/OfferWall;

    return-object v0
.end method


# virtual methods
.method public acceptAd(Ljava/lang/String;Landroid/app/Activity;Lcom/gamepromote/offerwall/AdData;)V
    .locals 3
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "ad"    # Lcom/gamepromote/offerwall/AdData;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/gamepromote/offerwall/ad/AdManager;->getInstance(Ljava/lang/String;)Lcom/gamepromote/offerwall/ad/AdManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAd(Lcom/gamepromote/offerwall/AdData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/gamepromote/offerwall/R$string;->offerwall_accept_hint:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p3}, Lcom/gamepromote/offerwall/AdData;->getGamePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/gamepromote/offerwall/AdData;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/gamepromote/offerwall/util/DownloadUtil;->Download(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public getAd(Ljava/lang/String;)Lcom/gamepromote/offerwall/AdData;
    .locals 2
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method getAdList doesn\'t accept null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adList:Lcom/gamepromote/offerwall/ad/AdList;

    invoke-virtual {v0, p1}, Lcom/gamepromote/offerwall/ad/AdList;->getAd(Ljava/lang/String;)Lcom/gamepromote/offerwall/AdData;

    move-result-object v0

    return-object v0
.end method

.method public getAdReward(Lcom/gamepromote/offerwall/RewardCallback;Ljava/util/List;)V
    .locals 2
    .param p1, "callback"    # Lcom/gamepromote/offerwall/RewardCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gamepromote/offerwall/RewardCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "userids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method getAdReward doesn\'t accept empty argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adReward:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-virtual {v0, p1, p2}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->getRewardPre(Lcom/gamepromote/offerwall/RewardCallback;Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public hasNewData()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gamepromote/offerwall/OfferWall;->adVersion:Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/ad/AdVersion;->hasNewData()Z

    move-result v0

    return v0
.end method
