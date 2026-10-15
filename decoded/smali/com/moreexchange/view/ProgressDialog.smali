.class public Lcom/moreexchange/view/ProgressDialog;
.super Ljava/lang/Object;
.source "ProgressDialog.java"


# static fields
.field public static final TYPE_NOTHING:I = 0x0

.field public static final TYPE_VISIT:I = 0x1


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _dialog:Landroid/view/View;

.field private _progressLayout:Lcom/moreexchange/view/ProgressLayout;

.field private _progressbg:Landroid/widget/RelativeLayout;

.field private parent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/RelativeLayout;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 25
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    new-instance v2, Lcom/moreexchange/view/Screen;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    invoke-direct {v2, v3, v4}, Lcom/moreexchange/view/Screen;-><init>(II)V

    sput-object v2, Lcom/moreexchange/view/Screen;->CURRENT_SCREEN:Lcom/moreexchange/view/Screen;

    .line 30
    iput-object p1, p0, Lcom/moreexchange/view/ProgressDialog;->_activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/moreexchange/view/ProgressDialog;->parent:Landroid/widget/RelativeLayout;

    .line 32
    invoke-static {}, Lcom/moreexchange/view/ProgressLayout;->getLayout()Lcom/moreexchange/view/ProgressLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_progressLayout:Lcom/moreexchange/view/ProgressLayout;

    .line 33
    iget-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_progressLayout:Lcom/moreexchange/view/ProgressLayout;

    iget-object v3, p0, Lcom/moreexchange/view/ProgressDialog;->_activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/moreexchange/view/ProgressDialog;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, p2, v4, p3}, Lcom/moreexchange/view/ProgressLayout;->fillUpInParent(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/RelativeLayout;

    .line 34
    iget-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_activity:Landroid/app/Activity;

    sget v3, Lcom/moreexchange/R$id;->id_progressbar_bg:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_dialog:Landroid/view/View;

    .line 35
    iget-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_dialog:Landroid/view/View;

    new-instance v3, Lcom/moreexchange/view/ProgressDialog$1;

    invoke-direct {v3, p0}, Lcom/moreexchange/view/ProgressDialog$1;-><init>(Lcom/moreexchange/view/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_dialog:Landroid/view/View;

    .line 41
    sget v3, Lcom/moreexchange/R$id;->id_progressbar_smallbg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 40
    iput-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_progressbg:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v2, p0, Lcom/moreexchange/view/ProgressDialog;->_progressbg:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public showProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/moreexchange/view/ProgressDialog;->_progressbg:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/moreexchange/view/ProgressDialog;->_progressbg:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/moreexchange/view/ProgressDialog;->parent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/moreexchange/view/ProgressDialog;->_dialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
