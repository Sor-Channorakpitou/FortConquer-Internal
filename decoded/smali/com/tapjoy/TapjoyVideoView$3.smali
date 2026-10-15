.class final Lcom/tapjoy/TapjoyVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 644
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->c(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->b(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->d(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    .line 648
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 651
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->e(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    const-string v2, "start"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyVideoView;->a(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->f(Lcom/tapjoy/TapjoyVideoView;)Z

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->d(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    .line 658
    div-float v2, v0, v5

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->g(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video 1st quartile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "firstQuartile"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->a(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 662
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->h(Lcom/tapjoy/TapjoyVideoView;)Z

    .line 665
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->i(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 667
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video midpoint: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "midpoint"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->a(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->j(Lcom/tapjoy/TapjoyVideoView;)Z

    .line 672
    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v5

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->k(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 674
    const-string v0, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video 3rd quartile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    const-string v1, "thirdQuartile"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->a(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->l(Lcom/tapjoy/TapjoyVideoView;)Z

    .line 679
    :cond_3
    return-void
.end method
