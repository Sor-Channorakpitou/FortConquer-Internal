.class public Lcom/moreexchange/adapter/SectionsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SectionsPagerAdapter.java"


# instance fields
.field private tabView1:Landroid/view/View;

.field private tabView2:Landroid/view/View;

.field private tabView3:Landroid/view/View;

.field private tabView4:Landroid/view/View;

.field private tabViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/moreexchange/R$layout;->game_list_region:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView1:Landroid/view/View;

    .line 28
    sget v1, Lcom/moreexchange/R$layout;->game_list_region:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView2:Landroid/view/View;

    .line 29
    sget v1, Lcom/moreexchange/R$layout;->game_list_region:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView3:Landroid/view/View;

    .line 30
    sget v1, Lcom/moreexchange/R$layout;->game_list_region:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView4:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    iget-object v2, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView1:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    iget-object v2, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView2:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    iget-object v2, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView3:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    iget-object v2, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView4:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListView1()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView1:Landroid/view/View;

    sget v1, Lcom/moreexchange/R$id;->moreList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getListView2()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView2:Landroid/view/View;

    sget v1, Lcom/moreexchange/R$id;->moreList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getListView3()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView3:Landroid/view/View;

    sget v1, Lcom/moreexchange/R$id;->moreList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getListView4()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabView4:Landroid/view/View;

    sget v1, Lcom/moreexchange/R$id;->moreList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 56
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 58
    iget-object v0, p0, Lcom/moreexchange/adapter/SectionsPagerAdapter;->tabViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 73
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
