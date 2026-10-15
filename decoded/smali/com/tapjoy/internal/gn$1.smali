.class final Lcom/tapjoy/internal/gn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    move-object v5, v6

    move-object v2, v6

    move-object v1, v6

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    const-string v7, "region"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v0, Lcom/tapjoy/internal/bp;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v7, "value"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v7, "dismiss"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->o()Z

    move-result v3

    goto :goto_0

    :cond_2
    const-string v7, "url"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v7, "redirect_url"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/tapjoy/internal/gj;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v0, p1}, Lcom/tapjoy/internal/gj;->a(Ljava/lang/String;Lcom/tapjoy/internal/bt;)Lcom/tapjoy/internal/gj;

    move-result-object v6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    new-instance v0, Lcom/tapjoy/internal/gn;

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/gn;-><init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fj;)V

    return-object v0
.end method
