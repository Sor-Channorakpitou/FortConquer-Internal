.class Lcom/game/admob/AdBannerHelper$3;
.super Ljava/lang/Object;
.source "AdBannerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/admob/AdBannerHelper;->initAdview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 134
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$1()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$1()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v3, Lcom/google/android/gms/ads/AdView;

    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$1()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/game/admob/AdBannerHelper;->access$2(Lcom/google/android/gms/ads/AdView;)V

    .line 141
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 143
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v2, "paramsad":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 154
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 155
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 158
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 160
    return-void
.end method
