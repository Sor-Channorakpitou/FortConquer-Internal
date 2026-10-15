.class public Lcom/moreexchange/dialog/InterstitialAd;
.super Landroid/app/Dialog;
.source "InterstitialAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BACKGROUND_DRAWABLE_ALPHA:I = 0xb4

.field public static final DEFAULT_SHOW_INTERVAL:I = 0x258

.field public static final PURCHASED_SHOW_INTERVAL:I = 0xe10

.field private static fromPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field private static payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

.field private static payAdvertisers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private static showInterval:I

.field private static timestamp:J

.field private static toPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appPackageName:Ljava/lang/String;

.field private appUrl:Ljava/lang/String;

.field private defaultCloseButton:Landroid/widget/ImageButton;

.field private dlgCreateTime:J

.field private fullScreenCloseButton:Landroid/widget/ImageView;

.field private interstitialDefault:Landroid/widget/RelativeLayout;

.field private interstitialDefaultImageView:Landroid/widget/ImageView;

.field private interstitialFullScreen:Landroid/widget/RelativeLayout;

.field private interstitialFullScreenImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x258

    sput v0, Lcom/moreexchange/dialog/InterstitialAd;->showInterval:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/dialog/InterstitialAd;->fromPackages:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/dialog/InterstitialAd;->toPackages:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertisers:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/moreexchange/dialog/InterstitialAd$1;

    invoke-direct {v0}, Lcom/moreexchange/dialog/InterstitialAd$1;-><init>()V

    sput-object v0, Lcom/moreexchange/dialog/InterstitialAd;->handler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 153
    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertisers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/moreexchange/model/PayAdvertiser;)V
    .locals 0

    .prologue
    .line 90
    sput-object p0, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    return-void
.end method

.method static synthetic access$2()Lcom/moreexchange/model/PayAdvertiser;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    return-object v0
.end method

.method private generateBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 251
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 252
    .local v1, "rectShape":Landroid/graphics/drawable/shapes/RectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 254
    .local v0, "rectBgDrawable":Landroid/graphics/drawable/ShapeDrawable;
    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 255
    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/moreexchange/dialog/InterstitialAd;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getPayAdvertisers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertisers:Ljava/util/List;

    return-object v0
.end method

.method private handleAdvImageView(Lcom/moreexchange/model/PayAdvertiser;)V
    .locals 9
    .param p1, "payAdvertiser"    # Lcom/moreexchange/model/PayAdvertiser;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 259
    invoke-virtual {p1}, Lcom/moreexchange/model/PayAdvertiser;->getAppHImage()Lcom/moreexchange/model/Icon;

    move-result-object v1

    .line 260
    .local v1, "hImgIcon":Lcom/moreexchange/model/Icon;
    invoke-virtual {p1}, Lcom/moreexchange/model/PayAdvertiser;->getAppVImage()Lcom/moreexchange/model/Icon;

    move-result-object v4

    .line 261
    .local v4, "vImgIcon":Lcom/moreexchange/model/Icon;
    const/4 v2, 0x0

    .line 262
    .local v2, "selectHImg":Z
    const/4 v3, 0x0

    .line 263
    .local v3, "selectVImg":Z
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 265
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v5, v6, :cond_1

    .line 267
    if-eqz v4, :cond_0

    .line 268
    const/4 v3, 0x1

    .line 269
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefault:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    :goto_0
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 289
    if-eqz v3, :cond_3

    .line 290
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefaultImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/moreexchange/model/Icon;->renderBitmap(Landroid/widget/ImageView;)V

    .line 301
    :goto_1
    return-void

    .line 272
    :cond_0
    const/4 v2, 0x1

    .line 273
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefault:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_1
    if-eqz v1, :cond_2

    .line 278
    const/4 v2, 0x1

    .line 279
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefault:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_2
    const/4 v3, 0x1

    .line 283
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefault:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefaultImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Lcom/moreexchange/model/Icon;->renderBitmap(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 295
    :cond_4
    if-eqz v2, :cond_5

    .line 296
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Lcom/moreexchange/model/Icon;->renderBitmap(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 298
    :cond_5
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/moreexchange/model/Icon;->renderBitmap(Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method private static isInterstitialReady()Z
    .locals 4

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "result":Z
    sget-object v3, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    if-eqz v3, :cond_0

    .line 64
    sget-object v3, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v3}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/moreexchange/util/Util;->isTargetAppInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    sget-object v3, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v3}, Lcom/moreexchange/model/PayAdvertiser;->getAppHImage()Lcom/moreexchange/model/Icon;

    move-result-object v0

    .line 69
    .local v0, "hImgIcon":Lcom/moreexchange/model/Icon;
    sget-object v3, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v3}, Lcom/moreexchange/model/PayAdvertiser;->getAppVImage()Lcom/moreexchange/model/Icon;

    move-result-object v2

    .line 71
    .local v2, "vImgIcon":Lcom/moreexchange/model/Icon;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const/4 v1, 0x1

    .line 75
    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setShowInterval(I)V
    .locals 8
    .param p0, "showInterval"    # I

    .prologue
    .line 125
    sget v2, Lcom/moreexchange/dialog/InterstitialAd;->showInterval:I

    .line 126
    .local v2, "oldInterval":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "now":J
    sput p0, Lcom/moreexchange/dialog/InterstitialAd;->showInterval:I

    .line 128
    sget-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    sget-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 129
    sget-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p0

    mul-float/2addr v3, v4

    float-to-long v4, v3

    sub-long v4, v0, v4

    sput-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    .line 131
    :cond_0
    return-void
.end method

.method public static showAd(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x400

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    .local v2, "now":J
    sget-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 43
    sget v4, Lcom/moreexchange/dialog/InterstitialAd;->showInterval:I

    sget v5, Lcom/moreexchange/dialog/InterstitialAd;->showInterval:I

    div-int/lit8 v5, v5, 0x14

    sub-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long v4, v2, v4

    sput-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    .line 46
    :cond_0
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->isInterstitialReady()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    sget-wide v4, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    sub-long v4, v2, v4

    sget v6, Lcom/moreexchange/dialog/InterstitialAd;->showInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 48
    new-instance v0, Lcom/moreexchange/dialog/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/moreexchange/dialog/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "interstitialAd":Lcom/moreexchange/dialog/InterstitialAd;
    invoke-virtual {v0}, Lcom/moreexchange/dialog/InterstitialAd;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 51
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 52
    invoke-virtual {v0}, Lcom/moreexchange/dialog/InterstitialAd;->show()V

    .line 53
    sput-wide v2, Lcom/moreexchange/dialog/InterstitialAd;->timestamp:J

    .line 58
    .end local v0    # "interstitialAd":Lcom/moreexchange/dialog/InterstitialAd;
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/moreexchange/util/Util;->isNetworkReady(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->isInterstitialReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    sget-object v4, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertisers:Ljava/util/List;

    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->handler:Landroid/os/Handler;

    invoke-static {v4, v5}, Lcom/moreexchange/command/Command;->getInterstitialAd(Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/moreexchange/dialog/InterstitialAd;->defaultCloseButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->dismiss()V

    .line 237
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getCallBack()Lcom/moreexchange/CallbackInterface;

    move-result-object v6

    .line 239
    .local v6, "callBackInterface":Lcom/moreexchange/CallbackInterface;
    if-eqz v6, :cond_1

    .line 240
    invoke-interface {v6}, Lcom/moreexchange/CallbackInterface;->InterstitialCloseButtonPressed()V

    .line 248
    .end local v6    # "callBackInterface":Lcom/moreexchange/CallbackInterface;
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreenImageView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefaultImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 243
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/moreexchange/dialog/InterstitialAd;->dlgCreateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/moreexchange/dialog/InterstitialAd;->appUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/moreexchange/dialog/InterstitialAd;->appPackageName:Ljava/lang/String;

    sget-object v3, Lcom/moreexchange/dialog/InterstitialAd;->fromPackages:Ljava/util/List;

    sget-object v4, Lcom/moreexchange/dialog/InterstitialAd;->toPackages:Ljava/util/List;

    sget-object v5, Lcom/moreexchange/command/Command$AdType;->INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

    invoke-static/range {v0 .. v5}, Lcom/moreexchange/util/Util;->clickAdvEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V

    .line 245
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 157
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/moreexchange/dialog/InterstitialAd;->dlgCreateTime:J

    .line 159
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v5}, Lcom/moreexchange/model/PayAdvertiser;->getAppUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->appUrl:Ljava/lang/String;

    .line 160
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v5}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->appPackageName:Ljava/lang/String;

    .line 161
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/moreexchange/dialog/InterstitialAd;->requestWindowFeature(I)Z

    .line 162
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    .line 163
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/moreexchange/R$drawable;->close_button:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 167
    .local v1, "crossWidth":I
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .local v4, "wholeContent":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "advContent":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 171
    sget v6, Lcom/moreexchange/R$layout;->interstitial:I

    const/4 v7, 0x0

    .line 170
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    sget v5, Lcom/moreexchange/R$id;->interstitialFullScreen:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    .line 173
    sget v5, Lcom/moreexchange/R$id;->interstitialFullScreenImageView:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreenImageView:Landroid/widget/ImageView;

    .line 174
    sget v5, Lcom/moreexchange/R$id;->interstitialDefault:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefault:Landroid/widget/RelativeLayout;

    .line 175
    sget v5, Lcom/moreexchange/R$id;->interstitialDefaultImageView:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefaultImageView:Landroid/widget/ImageView;

    .line 176
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-direct {p0, v5}, Lcom/moreexchange/dialog/InterstitialAd;->handleAdvImageView(Lcom/moreexchange/model/PayAdvertiser;)V

    .line 177
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialDefaultImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->interstitialFullScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 183
    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 185
    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->fullScreenCloseButton:Landroid/widget/ImageView;

    .line 188
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 187
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/moreexchange/dialog/InterstitialAd;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 197
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-direct {p0}, Lcom/moreexchange/dialog/InterstitialAd;->generateBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->fromPackages:Ljava/util/List;

    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->toPackages:Ljava/util/List;

    sget-object v6, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v6}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :try_start_0
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->fromPackages:Ljava/util/List;

    sget-object v6, Lcom/moreexchange/dialog/InterstitialAd;->toPackages:Ljava/util/List;

    sget-object v7, Lcom/moreexchange/command/Command$AdType;->INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

    invoke-static {v5, v6, v7}, Lcom/moreexchange/command/Command;->shownAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :goto_1
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->fromPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 211
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->toPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 212
    sget-object v5, Lcom/moreexchange/dialog/InterstitialAd;->payAdvertisers:Ljava/util/List;

    sget-object v6, Lcom/moreexchange/dialog/InterstitialAd;->handler:Landroid/os/Handler;

    invoke-static {v5, v6}, Lcom/moreexchange/command/Command;->getInterstitialAd(Ljava/util/List;Landroid/os/Handler;)V

    .line 213
    return-void

    .line 192
    :cond_0
    sget v5, Lcom/moreexchange/R$id;->defaultCloseButton:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->defaultCloseButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v5, p0, Lcom/moreexchange/dialog/InterstitialAd;->defaultCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 224
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/moreexchange/dialog/InterstitialAd;->dismiss()V

    .line 226
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 219
    sget-object v0, Lcom/moreexchange/dialog/InterstitialAd;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/moreexchange/dialog/InterstitialAd;->handler:Landroid/os/Handler;

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    return-void
.end method
