.class Lcom/game/admob/AdBannerHelper$1;
.super Ljava/lang/Object;
.source "AdBannerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/admob/AdBannerHelper;->showAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, -0x2

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, "paramsad":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    :goto_0
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->access$0()Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 89
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/game/admob/AdBannerHelper$1;->val$type:Ljava/lang/String;

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-virtual {v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 84
    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0
.end method
