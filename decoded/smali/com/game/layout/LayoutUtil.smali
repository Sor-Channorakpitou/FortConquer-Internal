.class public Lcom/game/layout/LayoutUtil;
.super Ljava/lang/Object;
.source "LayoutUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method private static createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "resNormal"    # I
    .param p1, "resSelected"    # I

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 69
    .local v1, "states":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/layout/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 72
    new-array v2, v4, [I

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    return-object v1
.end method

.method public static createClickableImageView(IIII)Landroid/widget/ImageView;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "upImgResId"    # I
    .param p3, "downImgResId"    # I

    .prologue
    .line 54
    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/game/layout/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v4, "view":Landroid/widget/ImageView;
    int-to-float v5, p0

    invoke-static {v5}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v3

    .line 57
    .local v3, "sw":I
    int-to-float v5, p1

    invoke-static {v5}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v2

    .line 58
    .local v2, "sh":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-static {p2, p3}, Lcom/game/layout/LayoutUtil;->createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-object v4
.end method

.method public static createImageView(III)Landroid/widget/ImageView;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "imgResId"    # I

    .prologue
    .line 31
    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/game/layout/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    .local v4, "view":Landroid/widget/ImageView;
    int-to-float v5, p0

    invoke-static {v5}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v3

    .line 34
    .local v3, "sw":I
    int-to-float v5, p1

    invoke-static {v5}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v2

    .line 35
    .local v2, "sh":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    if-lez p2, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_0
    return-object v4
.end method

.method public static createRelativeLayout(II)Landroid/widget/RelativeLayout;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 19
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/game/layout/Screen;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 19
    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    int-to-float v4, p0

    invoke-static {v4}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v3

    .line 23
    .local v3, "sw":I
    int-to-float v4, p1

    invoke-static {v4}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v2

    .line 24
    .local v2, "sh":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    return-object v1
.end method

.method public static createTextView(FI)Landroid/widget/TextView;
    .locals 4
    .param p0, "fontSize"    # F
    .param p1, "fontColor"    # I

    .prologue
    const/4 v3, -0x2

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/layout/Screen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    return-object v0
.end method

.method public static getLength(F)I
    .locals 1
    .param p0, "designedLength"    # F

    .prologue
    .line 15
    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/layout/Screen;->getScaleMin()F

    move-result v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static layoutParentCenter(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    .local v0, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    .local v2, "pw":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    .local v1, "ph":I
    sub-int v6, v2, v3

    int-to-double v6, v6

    div-double/2addr v6, v8

    double-to-int v4, v6

    .line 102
    .local v4, "x":I
    sub-int v6, v1, v0

    int-to-double v6, v6

    div-double/2addr v6, v8

    double-to-int v5, v6

    .line 103
    .local v5, "y":I
    invoke-static {p0, v4, v5}, Lcom/game/layout/LayoutUtil;->setLeftTopMargin(Landroid/view/View;II)V

    .line 104
    return-void
.end method

.method public static setContentSize(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 85
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v1, p1

    invoke-static {v1}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    int-to-float v1, p2

    invoke-static {v1}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    return-void
.end method

.method public static setFullscreenContentSize(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/layout/Screen;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 80
    invoke-static {}, Lcom/game/layout/Screen;->getInstance()Lcom/game/layout/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/layout/Screen;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 81
    return-void
.end method

.method public static setLeftTopMargin(Landroid/view/View;II)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v3, p1

    invoke-static {v3}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v1

    .line 92
    .local v1, "sx":I
    int-to-float v3, p2

    invoke-static {v3}, Lcom/game/layout/LayoutUtil;->getLength(F)I

    move-result v2

    .line 93
    .local v2, "sy":I
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    return-void
.end method
