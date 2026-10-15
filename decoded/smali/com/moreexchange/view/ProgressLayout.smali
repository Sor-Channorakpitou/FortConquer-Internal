.class public Lcom/moreexchange/view/ProgressLayout;
.super Ljava/lang/Object;
.source "ProgressLayout.java"


# instance fields
.field private _bg:Landroid/widget/RelativeLayout;

.field _progressSize:Lcom/moreexchange/view/LayoutSize;

.field _progressbgSize:Lcom/moreexchange/view/LayoutSize;

.field private _root:Landroid/widget/RelativeLayout;

.field _waitSize:Lcom/moreexchange/view/LayoutSize;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v9, 0x3f

    const/4 v2, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v8, Lcom/moreexchange/view/LayoutSize;

    new-instance v0, Lcom/moreexchange/view/LayoutSize$Data;

    sget-object v1, Lcom/moreexchange/view/Screen;->WVGA:Lcom/moreexchange/view/Screen;

    const/16 v4, 0x107

    const/16 v5, 0x5b

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/moreexchange/view/LayoutSize$Data;-><init>(Lcom/moreexchange/view/Screen;IIIIII)V

    invoke-direct {v8, v0}, Lcom/moreexchange/view/LayoutSize;-><init>(Lcom/moreexchange/view/LayoutSize$Data;)V

    iput-object v8, p0, Lcom/moreexchange/view/ProgressLayout;->_progressbgSize:Lcom/moreexchange/view/LayoutSize;

    .line 20
    new-instance v8, Lcom/moreexchange/view/LayoutSize;

    new-instance v0, Lcom/moreexchange/view/LayoutSize$Data;

    sget-object v1, Lcom/moreexchange/view/Screen;->WVGA:Lcom/moreexchange/view/Screen;

    const/16 v2, 0x5f

    const/16 v3, 0x1e

    const/16 v4, 0xb4

    const/16 v5, 0x26

    invoke-direct/range {v0 .. v7}, Lcom/moreexchange/view/LayoutSize$Data;-><init>(Lcom/moreexchange/view/Screen;IIIIII)V

    invoke-direct {v8, v0}, Lcom/moreexchange/view/LayoutSize;-><init>(Lcom/moreexchange/view/LayoutSize$Data;)V

    iput-object v8, p0, Lcom/moreexchange/view/ProgressLayout;->_waitSize:Lcom/moreexchange/view/LayoutSize;

    .line 21
    new-instance v8, Lcom/moreexchange/view/LayoutSize;

    new-instance v0, Lcom/moreexchange/view/LayoutSize$Data;

    sget-object v1, Lcom/moreexchange/view/Screen;->WVGA:Lcom/moreexchange/view/Screen;

    const/16 v2, 0x14

    const/16 v3, 0xf

    move v4, v9

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/moreexchange/view/LayoutSize$Data;-><init>(Lcom/moreexchange/view/Screen;IIIIII)V

    invoke-direct {v8, v0}, Lcom/moreexchange/view/LayoutSize;-><init>(Lcom/moreexchange/view/LayoutSize$Data;)V

    iput-object v8, p0, Lcom/moreexchange/view/ProgressLayout;->_progressSize:Lcom/moreexchange/view/LayoutSize;

    .line 14
    return-void
.end method

.method public static getLayout()Lcom/moreexchange/view/ProgressLayout;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/moreexchange/view/ProgressLayout;

    invoke-direct {v0}, Lcom/moreexchange/view/ProgressLayout;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fillUpInParent(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/widget/RelativeLayout;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    .line 50
    :goto_0
    return-object v1

    .line 31
    :cond_0
    new-instance v0, Lcom/moreexchange/view/LayoutFactory;

    invoke-direct {v0, p3}, Lcom/moreexchange/view/LayoutFactory;-><init>(Landroid/app/Activity;)V

    .line 33
    .local v0, "factory":Lcom/moreexchange/view/LayoutFactory;
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    .line 34
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    sget v2, Lcom/moreexchange/R$id;->id_progressbar_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 35
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/moreexchange/view/LayoutSize;->getFullSize()Lcom/moreexchange/view/LayoutSize;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/moreexchange/view/LayoutFactory;->addChild(Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/moreexchange/view/LayoutSize;)V

    .line 36
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    .line 38
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    sget v2, Lcom/moreexchange/R$id;->id_progressbar_smallbg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 39
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    sget v2, Lcom/moreexchange/R$drawable;->progress_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 40
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/moreexchange/view/ProgressLayout;->_progressbgSize:Lcom/moreexchange/view/LayoutSize;

    invoke-virtual {v0, v1, v2, v3}, Lcom/moreexchange/view/LayoutFactory;->addChild(Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/moreexchange/view/LayoutSize;)V

    .line 41
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 42
    .local v9, "backgroundParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    sget v2, Lcom/moreexchange/R$id;->id_progressbar_wait:I

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/moreexchange/view/ProgressLayout;->_waitSize:Lcom/moreexchange/view/LayoutSize;

    invoke-virtual {v3}, Lcom/moreexchange/view/LayoutSize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3fcccccd    # 1.6f

    div-float/2addr v3, v5

    .line 44
    iget v5, v0, Lcom/moreexchange/view/LayoutFactory;->_density:F

    div-float v5, v3, v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/moreexchange/view/ProgressLayout;->_waitSize:Lcom/moreexchange/view/LayoutSize;

    move-object v3, p4

    .line 43
    invoke-virtual/range {v0 .. v8}, Lcom/moreexchange/view/LayoutFactory;->addTextView(Landroid/view/ViewGroup;ILjava/lang/String;IFIZLcom/moreexchange/view/LayoutSize;)Landroid/widget/TextView;

    .line 45
    new-instance v10, Landroid/widget/ProgressBar;

    invoke-direct {v10, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 46
    .local v10, "progressbar":Landroid/widget/ProgressBar;
    sget v1, Lcom/moreexchange/R$id;->id_progressbar:I

    invoke-virtual {v10, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/moreexchange/R$drawable;->myprogress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_bg:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/moreexchange/view/ProgressLayout;->_progressSize:Lcom/moreexchange/view/LayoutSize;

    invoke-virtual {v0, v1, v10, v2}, Lcom/moreexchange/view/LayoutFactory;->addChild(Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/moreexchange/view/LayoutSize;)V

    .line 50
    iget-object v1, p0, Lcom/moreexchange/view/ProgressLayout;->_root:Landroid/widget/RelativeLayout;

    goto/16 :goto_0
.end method
