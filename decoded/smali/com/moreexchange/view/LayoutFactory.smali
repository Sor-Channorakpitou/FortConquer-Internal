.class public Lcom/moreexchange/view/LayoutFactory;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# instance fields
.field protected _context:Landroid/content/Context;

.field protected _density:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/moreexchange/view/LayoutFactory;->_context:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 20
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/moreexchange/view/LayoutFactory;->_density:F

    .line 23
    return-void
.end method


# virtual methods
.method protected addChild(Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/moreexchange/view/LayoutSize;)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/RelativeLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "ls"    # Lcom/moreexchange/view/LayoutSize;

    .prologue
    .line 33
    invoke-virtual {p0, p3}, Lcom/moreexchange/view/LayoutFactory;->getParams(Lcom/moreexchange/view/LayoutSize;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method protected addTextView(Landroid/view/ViewGroup;ILjava/lang/String;IFIZLcom/moreexchange/view/LayoutSize;)Landroid/widget/TextView;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "size"    # F
    .param p6, "gravity"    # I
    .param p7, "isSingleLine"    # Z
    .param p8, "ls"    # Lcom/moreexchange/view/LayoutSize;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 69
    .end local p1    # "parent":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 45
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/moreexchange/view/LayoutFactory;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "tv":Landroid/widget/TextView;
    instance-of v1, p1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 48
    check-cast p1, Landroid/widget/RelativeLayout;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1, v0, p8}, Lcom/moreexchange/view/LayoutFactory;->addChild(Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/moreexchange/view/LayoutSize;)V

    .line 53
    :goto_1
    if-lez p2, :cond_1

    .line 54
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 57
    :cond_1
    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_2
    if-eqz p7, :cond_3

    .line 62
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 65
    :cond_3
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 50
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected getParams(Lcom/moreexchange/view/LayoutSize;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "ls"    # Lcom/moreexchange/view/LayoutSize;

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    invoke-virtual {p1}, Lcom/moreexchange/view/LayoutSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/moreexchange/view/LayoutSize;->getHeight()I

    move-result v2

    .line 26
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/moreexchange/view/LayoutSize;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/moreexchange/view/LayoutSize;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 29
    return-object v0
.end method
