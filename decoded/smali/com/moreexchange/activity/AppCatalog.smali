.class public Lcom/moreexchange/activity/AppCatalog;
.super Landroid/app/Activity;
.source "AppCatalog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field private static final FETCH_MORE_ADV_SIZE:I = 0x64

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

.field private static instance:Lcom/moreexchange/activity/AppCatalog;

.field private static shownPackanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static thisPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.field private allPayAdvertisers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private categray1:Ljava/lang/String;

.field private categray2:Ljava/lang/String;

.field private categray3:Ljava/lang/String;

.field private categray4:Ljava/lang/String;

.field private getMoreAdvRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private moreConnectionLost:Landroid/widget/RelativeLayout;

.field private moreContent:Landroid/widget/RelativeLayout;

.field private moreExchangeAdapter1:Lcom/moreexchange/adapter/MoreExchangeAdapter;

.field private moreExchangeAdapter2:Lcom/moreexchange/adapter/MoreExchangeAdapter;

.field private moreExchangeAdapter3:Lcom/moreexchange/adapter/MoreExchangeAdapter;

.field private moreExchangeAdapter4:Lcom/moreexchange/adapter/MoreExchangeAdapter;

.field private moreListView1:Landroid/widget/ListView;

.field private moreListView2:Landroid/widget/ListView;

.field private moreListView3:Landroid/widget/ListView;

.field private moreListView4:Landroid/widget/ListView;

.field private moreNoAds:Landroid/widget/RelativeLayout;

.field private moreProcessProgressBar:Landroid/widget/RelativeLayout;

.field private moreThanks:Landroid/widget/RelativeLayout;

.field private payAdvertisers1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private payAdvertisers2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private payAdvertisers3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private payAdvertisers4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lcom/moreexchange/view/ProgressDialog;

.field private tabButton1:Landroid/widget/Button;

.field private tabButton2:Landroid/widget/Button;

.field private tabButton3:Landroid/widget/Button;

.field private tabButton4:Landroid/widget/Button;

.field private tabLine1:Landroid/widget/LinearLayout;

.field private tabLine2:Landroid/widget/LinearLayout;

.field private tabLine3:Landroid/widget/LinearLayout;

.field private tabLine4:Landroid/widget/LinearLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/activity/AppCatalog;->shownPackanges:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/activity/AppCatalog;->thisPackages:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/activity/AppCatalog;->fromPackages:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/activity/AppCatalog;->toPackages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->allPayAdvertisers:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers1:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers2:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers3:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers4:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/moreexchange/activity/AppCatalog$1;

    invoke-direct {v0, p0}, Lcom/moreexchange/activity/AppCatalog$1;-><init>(Lcom/moreexchange/activity/AppCatalog;)V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->handler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/moreexchange/activity/AppCatalog$2;

    invoke-direct {v0, p0}, Lcom/moreexchange/activity/AppCatalog$2;-><init>(Lcom/moreexchange/activity/AppCatalog;)V

    iput-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->getMoreAdvRunnable:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/view/ProgressDialog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->progressDialog:Lcom/moreexchange/view/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/moreexchange/activity/AppCatalog;Lcom/moreexchange/view/ProgressDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/moreexchange/activity/AppCatalog;->progressDialog:Lcom/moreexchange/view/ProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter4:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreConnectionLost:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreNoAds:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/moreexchange/activity/AppCatalog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/moreexchange/activity/AppCatalog;)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/moreexchange/activity/AppCatalog;->filterPackage()V

    return-void
.end method

.method static synthetic access$3(Lcom/moreexchange/activity/AppCatalog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->allPayAdvertisers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreThanks:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/moreexchange/activity/AppCatalog;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/moreexchange/activity/AppCatalog;->sortAds()V

    return-void
.end method

.method static synthetic access$7(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter1:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter2:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter3:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    return-object v0
.end method

.method private filterPackage()V
    .locals 4

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/moreexchange/activity/AppCatalog;->sortCategray()V

    .line 361
    invoke-static {p0}, Lcom/moreexchange/util/Util;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "installedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->allPayAdvertisers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/moreexchange/model/PayAdvertiser;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    return-void

    .line 365
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/moreexchange/model/PayAdvertiser;

    invoke-virtual {v3}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/moreexchange/activity/AppCatalog;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/moreexchange/activity/AppCatalog;->instance:Lcom/moreexchange/activity/AppCatalog;

    return-object v0
.end method

.method public static getShownPackanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/moreexchange/activity/AppCatalog;->shownPackanges:Ljava/util/List;

    return-object v0
.end method

.method private selectTab(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 327
    new-array v2, v7, [Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine1:Landroid/widget/LinearLayout;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine2:Landroid/widget/LinearLayout;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine3:Landroid/widget/LinearLayout;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine4:Landroid/widget/LinearLayout;

    aput-object v3, v2, v8

    .line 328
    .local v2, "linearLayouts":[Landroid/widget/LinearLayout;
    new-array v0, v7, [Landroid/widget/Button;

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton1:Landroid/widget/Button;

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton2:Landroid/widget/Button;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton3:Landroid/widget/Button;

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton4:Landroid/widget/Button;

    aput-object v3, v0, v8

    .line 330
    .local v0, "buttons":[Landroid/widget/Button;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 339
    return-void

    .line 331
    :cond_0
    if-ne v1, p1, :cond_1

    .line 332
    aget-object v3, v2, v1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    aget-object v3, v0, v1

    invoke-virtual {p0}, Lcom/moreexchange/activity/AppCatalog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/moreexchange/R$color;->app_categray_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 330
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    aget-object v3, v0, v1

    invoke-virtual {p0}, Lcom/moreexchange/activity/AppCatalog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/moreexchange/R$color;->tab_name_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method private setRandomTab()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v0, "randoms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 195
    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method private sortAds()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->allPayAdvertisers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/moreexchange/activity/AppCatalog;->setRandomTab()V

    .line 175
    return-void

    .line 160
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moreexchange/model/PayAdvertiser;

    .line 161
    .local v1, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    invoke-virtual {v1}, Lcom/moreexchange/model/PayAdvertiser;->getAppCategray()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "categray":Ljava/lang/String;
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray1:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers1:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray2:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers2:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray3:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray3:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers3:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray4:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray4:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortCategray()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "appCategrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->allPayAdvertisers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 139
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray1:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton1:Landroid/widget/Button;

    iget-object v4, p0, Lcom/moreexchange/activity/AppCatalog;->categray1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    .line 144
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray2:Ljava/lang/String;

    .line 145
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton2:Landroid/widget/Button;

    iget-object v4, p0, Lcom/moreexchange/activity/AppCatalog;->categray2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_3

    .line 149
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray3:Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/moreexchange/activity/AppCatalog;->categray3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    .line 154
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->categray4:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton4:Landroid/widget/Button;

    iget-object v4, p0, Lcom/moreexchange/activity/AppCatalog;->categray4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_4
    return-void

    .line 130
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moreexchange/model/PayAdvertiser;

    .line 131
    .local v2, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getAppCategray()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "categray":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 343
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton1:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 345
    invoke-direct {p0, v2}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton2:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 348
    invoke-direct {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton3:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 351
    invoke-direct {p0, v3}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton4:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 354
    invoke-direct {p0, v4}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x1

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {p0}, Lcom/moreexchange/MoreExchange;->register(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p0}, Lcom/moreexchange/activity/AppCatalog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 219
    invoke-virtual {p0}, Lcom/moreexchange/activity/AppCatalog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 220
    sget v1, Lcom/moreexchange/R$layout;->more_activity:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->setContentView(I)V

    .line 222
    sput-object p0, Lcom/moreexchange/activity/AppCatalog;->instance:Lcom/moreexchange/activity/AppCatalog;

    .line 223
    sget v1, Lcom/moreexchange/R$id;->moreContent:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreContent:Landroid/widget/RelativeLayout;

    .line 224
    sget v1, Lcom/moreexchange/R$id;->moreConnectionLost:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreConnectionLost:Landroid/widget/RelativeLayout;

    .line 225
    sget v1, Lcom/moreexchange/R$id;->moreNoAds:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreNoAds:Landroid/widget/RelativeLayout;

    .line 226
    sget v1, Lcom/moreexchange/R$id;->moreThanks:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreThanks:Landroid/widget/RelativeLayout;

    .line 228
    invoke-virtual {p0}, Lcom/moreexchange/activity/AppCatalog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/moreexchange/util/Util;->isNetworkReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    new-instance v0, Lcom/moreexchange/adapter/SectionsPagerAdapter;

    invoke-direct {v0, p0}, Lcom/moreexchange/adapter/SectionsPagerAdapter;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "sectionsPagerAdapter":Lcom/moreexchange/adapter/SectionsPagerAdapter;
    sget v1, Lcom/moreexchange/R$id;->moreProcessProgressBar:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreProcessProgressBar:Landroid/widget/RelativeLayout;

    .line 232
    sget v1, Lcom/moreexchange/R$id;->pager:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 233
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 234
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 236
    sget v1, Lcom/moreexchange/R$id;->tabButton1:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton1:Landroid/widget/Button;

    .line 237
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton1:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v1, Lcom/moreexchange/R$id;->tabButton2:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton2:Landroid/widget/Button;

    .line 239
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton2:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget v1, Lcom/moreexchange/R$id;->tabButton3:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton3:Landroid/widget/Button;

    .line 241
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton3:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    sget v1, Lcom/moreexchange/R$id;->tabButton4:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton4:Landroid/widget/Button;

    .line 243
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabButton4:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    sget v1, Lcom/moreexchange/R$id;->tabLine1:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine1:Landroid/widget/LinearLayout;

    .line 246
    sget v1, Lcom/moreexchange/R$id;->tabLine2:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine2:Landroid/widget/LinearLayout;

    .line 247
    sget v1, Lcom/moreexchange/R$id;->tabLine3:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine3:Landroid/widget/LinearLayout;

    .line 248
    sget v1, Lcom/moreexchange/R$id;->tabLine4:I

    invoke-virtual {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->tabLine4:Landroid/widget/LinearLayout;

    .line 250
    invoke-virtual {v0}, Lcom/moreexchange/adapter/SectionsPagerAdapter;->getListView1()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView1:Landroid/widget/ListView;

    .line 251
    invoke-virtual {v0}, Lcom/moreexchange/adapter/SectionsPagerAdapter;->getListView2()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView2:Landroid/widget/ListView;

    .line 252
    invoke-virtual {v0}, Lcom/moreexchange/adapter/SectionsPagerAdapter;->getListView3()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView3:Landroid/widget/ListView;

    .line 253
    invoke-virtual {v0}, Lcom/moreexchange/adapter/SectionsPagerAdapter;->getListView4()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView4:Landroid/widget/ListView;

    .line 255
    new-instance v1, Lcom/moreexchange/adapter/MoreExchangeAdapter;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers1:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/moreexchange/adapter/MoreExchangeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter1:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    .line 256
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView1:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter1:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView1:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    new-instance v1, Lcom/moreexchange/adapter/MoreExchangeAdapter;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers2:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/moreexchange/adapter/MoreExchangeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter2:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    .line 260
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView2:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter2:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView2:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    new-instance v1, Lcom/moreexchange/adapter/MoreExchangeAdapter;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers3:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/moreexchange/adapter/MoreExchangeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter3:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    .line 264
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView3:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter3:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView3:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    new-instance v1, Lcom/moreexchange/adapter/MoreExchangeAdapter;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers4:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/moreexchange/adapter/MoreExchangeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter4:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    .line 268
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView4:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->moreExchangeAdapter4:Lcom/moreexchange/adapter/MoreExchangeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreListView4:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    new-instance v1, Lcom/moreexchange/view/ProgressDialog;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->moreProcessProgressBar:Landroid/widget/RelativeLayout;

    const-string v3, "Loading..."

    invoke-direct {v1, p0, v2, v3}, Lcom/moreexchange/view/ProgressDialog;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->progressDialog:Lcom/moreexchange/view/ProgressDialog;

    .line 272
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->progressDialog:Lcom/moreexchange/view/ProgressDialog;

    invoke-virtual {v1, v4}, Lcom/moreexchange/view/ProgressDialog;->showProgress(Z)V

    .line 273
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog;->getMoreAdvRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 278
    .end local v0    # "sectionsPagerAdapter":Lcom/moreexchange/adapter/SectionsPagerAdapter;
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreConnectionLost:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog;->moreContent:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->shownPackanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->shownPackanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 290
    :try_start_0
    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->thisPackages:Ljava/util/List;

    sget-object v4, Lcom/moreexchange/activity/AppCatalog;->shownPackanges:Ljava/util/List;

    sget-object v5, Lcom/moreexchange/command/Command$AdType;->MORE:Lcom/moreexchange/command/Command$AdType;

    invoke-static {v3, v4, v5}, Lcom/moreexchange/command/Command;->shownAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :goto_1
    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->thisPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 298
    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->shownPackanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 301
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/moreexchange/activity/AppCatalog;->allPayAdvertisers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    return-void

    .line 286
    .restart local v1    # "i":I
    :cond_1
    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->thisPackages:Ljava/util/List;

    invoke-virtual {p0}, Lcom/moreexchange/activity/AppCatalog;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 293
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 301
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moreexchange/model/PayAdvertiser;

    .line 302
    .local v2, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getAppIcon()Lcom/moreexchange/model/Icon;

    move-result-object v4

    invoke-static {v4}, Lcom/moreexchange/model/Icon;->recycleIcon(Lcom/moreexchange/model/Icon;)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 310
    .local v6, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers1:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    check-cast v6, Lcom/moreexchange/model/PayAdvertiser;

    .line 320
    .restart local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    :goto_0
    if-eqz v6, :cond_0

    .line 321
    invoke-virtual {v6}, Lcom/moreexchange/model/PayAdvertiser;->getAppUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/moreexchange/activity/AppCatalog;->fromPackages:Ljava/util/List;

    .line 322
    sget-object v4, Lcom/moreexchange/activity/AppCatalog;->toPackages:Ljava/util/List;

    sget-object v5, Lcom/moreexchange/command/Command$AdType;->MORE:Lcom/moreexchange/command/Command$AdType;

    move-object v0, p0

    .line 321
    invoke-static/range {v0 .. v5}, Lcom/moreexchange/util/Util;->clickAdvEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V

    .line 324
    :cond_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 313
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers2:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    check-cast v6, Lcom/moreexchange/model/PayAdvertiser;

    .line 314
    .restart local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 315
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers3:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    check-cast v6, Lcom/moreexchange/model/PayAdvertiser;

    .line 316
    .restart local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog;->payAdvertisers4:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    check-cast v6, Lcom/moreexchange/model/PayAdvertiser;

    .restart local v6    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 375
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 379
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 383
    if-nez p1, :cond_1

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    if-ne p1, v0, :cond_2

    .line 386
    invoke-direct {p0, v0}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    goto :goto_0

    .line 387
    :cond_2
    if-ne p1, v1, :cond_3

    .line 388
    invoke-direct {p0, v1}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    goto :goto_0

    .line 389
    :cond_3
    if-ne p1, v2, :cond_0

    .line 390
    invoke-direct {p0, v2}, Lcom/moreexchange/activity/AppCatalog;->selectTab(I)V

    goto :goto_0
.end method
