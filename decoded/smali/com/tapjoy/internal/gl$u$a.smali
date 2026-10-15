.class public final Lcom/tapjoy/internal/gl$u$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4969
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 5059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    .line 4970
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$u$a;
    .locals 1

    .prologue
    .line 4962
    new-instance v0, Lcom/tapjoy/internal/gl$u$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$u$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$u$a;
    .locals 4

    .prologue
    .line 4987
    new-instance v0, Lcom/tapjoy/internal/gl$u$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$u$a;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->h()Lcom/tapjoy/internal/gl$u;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$u;->c()Lcom/tapjoy/internal/gl$u;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    iget v2, v0, Lcom/tapjoy/internal/gl$u$a;->b:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$u$a;->b:I

    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->b(Lcom/tapjoy/internal/gl$u;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto :goto_0

    :cond_2
    invoke-direct {v0}, Lcom/tapjoy/internal/gl$u$a;->i()V

    iget-object v2, v0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private h()Lcom/tapjoy/internal/gl$u;
    .locals 3

    .prologue
    .line 5003
    new-instance v0, Lcom/tapjoy/internal/gl$u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gl$u;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 5004
    iget v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    .line 5005
    iget v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5006
    iget-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    .line 5007
    iget v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    .line 5009
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;Ljava/util/List;)Ljava/util/List;

    .line 5010
    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 5062
    iget v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5063
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    .line 5064
    iget v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:I

    .line 5066
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 4962
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->g()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gl$u$a;
    .locals 1

    .prologue
    .line 5159
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->i()V

    .line 5160
    iget-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/de$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5163
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 4962
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->g()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4962
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->g()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5031
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5032
    iget-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$t;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5037
    :goto_1
    return v2

    .line 5031
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5037
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final e()Lcom/tapjoy/internal/gl$u;
    .locals 2

    .prologue
    .line 4995
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->h()Lcom/tapjoy/internal/gl$u;

    move-result-object v0

    .line 4996
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$u;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4997
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    .line 4999
    :cond_0
    return-object v0
.end method
