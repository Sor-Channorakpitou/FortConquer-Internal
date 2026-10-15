.class public final Lcom/tapjoy/internal/gu;
.super Lcom/tapjoy/internal/gt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gu$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field private final e:Lcom/tapjoy/internal/fv;

.field private final f:Lcom/tapjoy/internal/gl$l;

.field private final g:Lcom/tapjoy/internal/gl$a;

.field private final h:Lcom/tapjoy/internal/gl$x;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$x;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tapjoy/internal/gt;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/fv;

    .line 42
    iput-object p2, p0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gl$l;

    .line 43
    iput-object p3, p0, Lcom/tapjoy/internal/gu;->g:Lcom/tapjoy/internal/gl$a;

    .line 44
    iput-object p4, p0, Lcom/tapjoy/internal/gu;->h:Lcom/tapjoy/internal/gl$x;

    .line 45
    iput-object p5, p0, Lcom/tapjoy/internal/gu;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gu;->d:Z

    .line 47
    iput-object p6, p0, Lcom/tapjoy/internal/gu;->i:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    move-object v1, v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, "interstitial"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/tapjoy/internal/go;->n:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->b(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/go;

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v3, "enabled_placements"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->d()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tapjoy/internal/go;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/tapjoy/internal/go;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/tapjoy/internal/gu$a;

    new-instance v3, Lcom/tapjoy/internal/ga;

    iget-object v4, p0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/fv;

    iget-object v5, p0, Lcom/tapjoy/internal/gu;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gu;->i:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/tapjoy/internal/ga;-><init>(Lcom/tapjoy/internal/fv;Ljava/lang/String;Lcom/tapjoy/internal/go;Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/internal/gu$a;-><init>(Lcom/tapjoy/internal/gc;Ljava/util/List;)V

    :goto_1
    return-object v0

    :cond_4
    new-instance v0, Lcom/tapjoy/internal/gu$a;

    new-instance v2, Lcom/tapjoy/internal/gb;

    invoke-direct {v2}, Lcom/tapjoy/internal/gb;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/gu$a;-><init>(Lcom/tapjoy/internal/gc;Ljava/util/List;)V

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "placement"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Lcom/tapjoy/internal/gt;->e()Ljava/util/Map;

    move-result-object v0

    .line 58
    const-string v1, "info"

    new-instance v2, Lcom/tapjoy/internal/bs;

    iget-object v3, p0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "app"

    new-instance v2, Lcom/tapjoy/internal/bs;

    iget-object v3, p0, Lcom/tapjoy/internal/gu;->g:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "user"

    new-instance v2, Lcom/tapjoy/internal/bs;

    iget-object v3, p0, Lcom/tapjoy/internal/gu;->h:Lcom/tapjoy/internal/gl$x;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$x;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "placement"

    iget-object v2, p0, Lcom/tapjoy/internal/gu;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method protected final synthetic f()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 23
    invoke-super {p0}, Lcom/tapjoy/internal/gt;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gu$a;

    iget-object v1, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    instance-of v1, v1, Lcom/tapjoy/internal/gb;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gc;->a()V

    iget-object v1, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gc;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/gu;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v1, Lcom/tapjoy/internal/gb;

    invoke-direct {v1}, Lcom/tapjoy/internal/gb;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    :cond_0
    return-object v0
.end method
