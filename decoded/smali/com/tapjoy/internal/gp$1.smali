.class final Lcom/tapjoy/internal/gp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/tapjoy/internal/bt;)Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->i()V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v3, "offset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->i()V

    move v1, v2

    move v3, v2

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v4, "x"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->s()I

    move-result v0

    move v3, v0

    goto :goto_1

    .line 56
    :cond_0
    const-string v4, "y"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->s()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->j()V

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->j()V

    .line 69
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    move-object v1, v0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lcom/tapjoy/internal/gr;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tapjoy/internal/gr;-><init>(Ljava/net/URL;)V

    goto :goto_0

    :cond_1
    const-string v4, "landscape"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/tapjoy/internal/gp$1;->b(Lcom/tapjoy/internal/bt;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v4, "portrait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/tapjoy/internal/gp$1;->b(Lcom/tapjoy/internal/bt;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    new-instance v3, Lcom/tapjoy/internal/gp;

    invoke-direct {v3, v0, v2, v1}, Lcom/tapjoy/internal/gp;-><init>(Lcom/tapjoy/internal/gr;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v3
.end method
