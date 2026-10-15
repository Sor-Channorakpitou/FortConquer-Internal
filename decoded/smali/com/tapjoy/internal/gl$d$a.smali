.class public final Lcom/tapjoy/internal/gl$d$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$d;
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
    .line 16729
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 16819
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    .line 16730
    return-void
.end method

.method static synthetic g()Lcom/tapjoy/internal/gl$d$a;
    .locals 1

    .prologue
    .line 16722
    new-instance v0, Lcom/tapjoy/internal/gl$d$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$a;-><init>()V

    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gl$d$a;
    .locals 4

    .prologue
    .line 16747
    new-instance v0, Lcom/tapjoy/internal/gl$d$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$a;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->i()Lcom/tapjoy/internal/gl$d;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$d;->c()Lcom/tapjoy/internal/gl$d;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    iget v2, v0, Lcom/tapjoy/internal/gl$d$a;->b:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$d$a;->b:I

    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->b(Lcom/tapjoy/internal/gl$d;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto :goto_0

    :cond_2
    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$a;->j()V

    iget-object v2, v0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private i()Lcom/tapjoy/internal/gl$d;
    .locals 3

    .prologue
    .line 16763
    new-instance v0, Lcom/tapjoy/internal/gl$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gl$d;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 16764
    iget v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    .line 16765
    iget v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 16766
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    .line 16767
    iget v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    .line 16769
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;Ljava/util/List;)Ljava/util/List;

    .line 16770
    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 16822
    iget v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 16823
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    .line 16824
    iget v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:I

    .line 16826
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 16722
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->h()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gl$c;)Lcom/tapjoy/internal/gl$d$a;
    .locals 1

    .prologue
    .line 16873
    if-nez p1, :cond_0

    .line 16874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16876
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->j()V

    .line 16877
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16879
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 16722
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->h()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16722
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->h()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16791
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$d$a;->f()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 16792
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16797
    :goto_1
    return v2

    .line 16791
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 16797
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final e()Lcom/tapjoy/internal/gl$d;
    .locals 2

    .prologue
    .line 16755
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->i()Lcom/tapjoy/internal/gl$d;

    move-result-object v0

    .line 16756
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$d;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16757
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    .line 16759
    :cond_0
    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 16838
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
