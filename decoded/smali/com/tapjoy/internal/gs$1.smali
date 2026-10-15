.class final Lcom/tapjoy/internal/gs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    move-object v2, v0

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v5, "quantity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->s()I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v5, "token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    new-instance v4, Lcom/tapjoy/internal/gs;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/tapjoy/internal/gs;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v4
.end method
