.class public Lcom/droidhen/fortconquer/AdController;
.super Ljava/lang/Object;
.source "AdController.java"


# static fields
.field public static final AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-6247246961848012/3820129282"

.field public static final INSTANCE:Lcom/droidhen/fortconquer/AdController;

.field public static final KEYWORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static adView:Lcom/google/android/gms/ads/AdView;

.field private static mParent:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/AdController;->KEYWORDS:Ljava/util/Set;

    .line 30
    new-instance v0, Lcom/droidhen/fortconquer/AdController;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/AdController;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/AdController;->INSTANCE:Lcom/droidhen/fortconquer/AdController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyAD()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 69
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 71
    :cond_0
    return-void
.end method

.method public static getADview()Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public static hideAD()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method

.method private static loadAd(Lcom/google/android/gms/ads/AdView;)V
    .locals 2
    .param p0, "view"    # Lcom/google/android/gms/ads/AdView;

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 49
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 51
    .local v0, "request":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 52
    return-void
.end method

.method public static restoreADview(Lcom/google/android/gms/ads/AdView;)V
    .locals 0
    .param p0, "ad"    # Lcom/google/android/gms/ads/AdView;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    sput-object p0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    .line 80
    :cond_0
    return-void
.end method

.method public static showAD()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 57
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->mParent:Landroid/widget/RelativeLayout;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public static showAdInLayout(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parent"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    .line 34
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    const-string v1, "ca-app-pub-6247246961848012/3820129282"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 36
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 37
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 38
    sput-object p1, Lcom/droidhen/fortconquer/AdController;->mParent:Landroid/widget/RelativeLayout;

    .line 39
    sget-object v0, Lcom/droidhen/fortconquer/AdController;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/droidhen/fortconquer/AdController;->loadAd(Lcom/google/android/gms/ads/AdView;)V

    .line 40
    return-void
.end method
