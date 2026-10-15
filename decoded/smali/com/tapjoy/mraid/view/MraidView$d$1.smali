.class final Lcom/tapjoy/mraid/view/MraidView$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/view/MraidView$d;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView$d;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$d$1;->a:Lcom/tapjoy/mraid/view/MraidView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$d$1;->a:Lcom/tapjoy/mraid/view/MraidView$d;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$d;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->l(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$d$1;->a:Lcom/tapjoy/mraid/view/MraidView$d;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$d;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->l(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1289
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$d$a;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$d$1;->a:Lcom/tapjoy/mraid/view/MraidView$d;

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView$d$a;-><init>(Lcom/tapjoy/mraid/view/MraidView$d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1290
    return-void
.end method
