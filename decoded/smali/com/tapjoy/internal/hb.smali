.class public final Lcom/tapjoy/internal/hb;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/hb$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:F

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/tapjoy/internal/gz;

.field private h:Lcom/tapjoy/internal/go;

.field private i:Lcom/tapjoy/internal/hb$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/go;Lcom/tapjoy/internal/hb$a;)V
    .locals 5

    .prologue
    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tapjoy/internal/hb;->b:F

    .line 64
    iput-object p2, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    .line 65
    iput-object p3, p0, Lcom/tapjoy/internal/hb;->i:Lcom/tapjoy/internal/hb$a;

    .line 66
    invoke-virtual {p0}, Lcom/tapjoy/internal/hb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/tapjoy/internal/hb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->d:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/tapjoy/internal/hb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v1}, Lcom/tapjoy/internal/hb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/tapjoy/internal/hb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tapjoy/internal/gz;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gz;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/internal/hb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    iget-object v0, v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    iget-object v1, p2, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    iget-object v1, v1, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gz;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_1
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 214
    int-to-float v0, p1

    iget v1, p0, Lcom/tapjoy/internal/hb;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->i:Lcom/tapjoy/internal/hb$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/hb$a;->a()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    if-ne p1, v0, :cond_3

    .line 227
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    iget-boolean v0, v1, Lcom/tapjoy/internal/gz;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/tapjoy/internal/gz;->a:Z

    invoke-virtual {v1}, Lcom/tapjoy/internal/gz;->a()V

    invoke-virtual {v1}, Lcom/tapjoy/internal/gz;->invalidate()V

    .line 228
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->i:Lcom/tapjoy/internal/hb$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/hb$a;->b()V

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tapjoy/internal/gn;

    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->i:Lcom/tapjoy/internal/hb$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/hb$a;->a(Lcom/tapjoy/internal/gn;)V

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 219
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 220
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v2, 0x10

    const/16 v3, 0xf

    const/high16 v7, 0x43f00000    # 480.0f

    const/high16 v6, 0x43a00000    # 320.0f

    const/4 v4, 0x0

    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 145
    iget-boolean v5, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v5, :cond_0

    .line 146
    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/hb;->b:F

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1e0

    :goto_1
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x140

    :goto_2
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x1c0

    :goto_3
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x122

    :goto_4
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tapjoy/internal/ai$a;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ai$a;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/tapjoy/internal/ai$1;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ai$1;-><init>(Ljava/util/Iterator;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    iget-object v0, v0, Lcom/tapjoy/internal/gn;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    .line 148
    :cond_0
    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/hb;->b:F

    goto/16 :goto_0

    .line 150
    :cond_1
    const/16 v1, 0x140

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x1e0

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x122

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x1c0

    goto :goto_4

    :cond_5
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x1e

    invoke-direct {p0, v5}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v5, v1

    iget-object v6, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v6, v6, Lcom/tapjoy/internal/go;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v5, v1

    iget-object v6, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v6, v6, Lcom/tapjoy/internal/go;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v5

    iget-boolean v0, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v0, :cond_8

    :goto_7
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v2

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/tapjoy/internal/gz;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/gz;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gz;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/tapjoy/internal/hb;->a:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gp;->b()Landroid/graphics/Point;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_a

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_9
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v3

    add-int/2addr v3, v5

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hb;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 151
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 152
    return-void

    :cond_7
    move v0, v3

    .line 150
    goto :goto_6

    :cond_8
    move v3, v2

    goto :goto_7

    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gp;->c()Landroid/graphics/Point;

    move-result-object v1

    goto :goto_8

    :cond_a
    move v1, v4

    goto :goto_9
.end method

.method public final setLandscape(Z)V
    .locals 7
    .param p1, "landscape"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/tapjoy/internal/hb;->a:Z

    .line 116
    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->j:Ljava/util/ArrayList;

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/tapjoy/internal/hb;->c:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/tapjoy/internal/ah;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v2, p0, Lcom/tapjoy/internal/hb;->d:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/tapjoy/internal/ah;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/hb;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    .line 133
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 137
    iget-object v4, p0, Lcom/tapjoy/internal/hb;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->i:Ljava/util/ArrayList;

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method
