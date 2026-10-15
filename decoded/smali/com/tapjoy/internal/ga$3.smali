.class final Lcom/tapjoy/internal/ga$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/hb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ga;->a(Lcom/tapjoy/internal/fw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/e;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/tapjoy/internal/fw;

.field final synthetic e:Lcom/tapjoy/internal/ga;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/e;Landroid/app/Activity;Landroid/app/Activity;Lcom/tapjoy/internal/fw;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iput-object p2, p0, Lcom/tapjoy/internal/ga$3;->a:Lcom/tapjoy/internal/e;

    iput-object p3, p0, Lcom/tapjoy/internal/ga$3;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/tapjoy/internal/ga$3;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/tapjoy/internal/ga$3;->d:Lcom/tapjoy/internal/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->a:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->cancel()V

    .line 132
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/gn;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iget-object v0, v0, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/fv;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/gn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fv;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->b:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/gn;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ga;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object v0, p1, Lcom/tapjoy/internal/gn;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iget-object v0, v0, Lcom/tapjoy/internal/ga;->e:Lcom/tapjoy/internal/fq;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$3;->c:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/gn;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/fq;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/ga;->f:Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->d:Lcom/tapjoy/internal/fw;

    iget-object v1, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iget-object v1, v1, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/gn;->f:Lcom/tapjoy/internal/fj;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fw;->a(Ljava/lang/String;Lcom/tapjoy/internal/fj;)V

    .line 147
    iget-boolean v0, p1, Lcom/tapjoy/internal/gn;->c:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->a:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->dismiss()V

    .line 150
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iget-object v0, p0, Lcom/tapjoy/internal/ga$3;->e:Lcom/tapjoy/internal/ga;

    iget-boolean v0, v0, Lcom/tapjoy/internal/ga;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/tapjoy/internal/ga;->g:Z

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
