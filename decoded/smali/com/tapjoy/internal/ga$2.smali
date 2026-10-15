.class final Lcom/tapjoy/internal/ga$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ga;->a(Lcom/tapjoy/internal/fw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/fw;

.field final synthetic c:Lcom/tapjoy/internal/ga;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ga;Landroid/app/Activity;Lcom/tapjoy/internal/fw;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iput-object p2, p0, Lcom/tapjoy/internal/ga$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/ga$2;->b:Lcom/tapjoy/internal/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ga;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v0, v0, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/fv;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-wide v4, v4, Lcom/tapjoy/internal/ga;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fv;->a(Ljava/util/Map;J)V

    .line 107
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-boolean v0, v0, Lcom/tapjoy/internal/ga;->f:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->b:Lcom/tapjoy/internal/fw;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v2, v2, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v2, v2, Lcom/tapjoy/internal/go;->h:Lcom/tapjoy/internal/fj;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;Lcom/tapjoy/internal/fj;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-boolean v0, v0, Lcom/tapjoy/internal/ga;->g:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v0, v0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v0, v0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v0, v0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v0, v0, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/tapjoy/internal/ga$2;->c:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/fv;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/fv;->h(Ljava/lang/String;)V

    .line 119
    :cond_1
    return-void
.end method
