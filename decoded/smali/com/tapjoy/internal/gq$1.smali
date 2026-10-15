.class final Lcom/tapjoy/internal/gq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 30
    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "product_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    new-instance v2, Lcom/tapjoy/internal/gq;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/gq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
