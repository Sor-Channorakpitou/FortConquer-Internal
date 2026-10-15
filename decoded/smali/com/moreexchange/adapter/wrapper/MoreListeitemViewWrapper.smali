.class public Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;
.super Ljava/lang/Object;
.source "MoreListeitemViewWrapper.java"


# instance fields
.field private moreExchangeListitemAppIcon:Landroid/widget/ImageView;

.field private moreExchangeListitemAppName:Landroid/widget/TextView;

.field private moreExchangeListitemAppPrice:Landroid/widget/TextView;

.field private moreExchangeListitemAppVendor:Landroid/widget/TextView;

.field private payAdvertisers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .param p1, "baseView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->payAdvertisers:Ljava/util/List;

    .line 25
    sget v0, Lcom/moreexchange/R$id;->moreExchangeListitemAppIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppIcon:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/moreexchange/R$id;->moreExchangeListitemAppName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppName:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/moreexchange/R$id;->moreExchangeListitemAppVendor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppVendor:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/moreexchange/R$id;->moreExchangeListitemAppPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppPrice:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public drawListItem(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v2, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->payAdvertisers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moreexchange/model/PayAdvertiser;

    .line 33
    .local v0, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    invoke-static {}, Lcom/moreexchange/activity/AppCatalog;->getShownPackanges()Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "shownPackanges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getAppIcon()Lcom/moreexchange/model/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppIcon:Landroid/widget/ImageView;

    sget v4, Lcom/moreexchange/R$drawable;->app_icon:I

    invoke-static {v2, v3, v4}, Lcom/moreexchange/model/Icon;->drawIcon(Lcom/moreexchange/model/Icon;Landroid/widget/ImageView;I)V

    .line 36
    iget-object v2, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppVendor:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getAppVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->moreExchangeListitemAppPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getAppPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method
