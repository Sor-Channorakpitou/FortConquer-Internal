.class public final Lcom/tapjoy/internal/gl$n$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/tapjoy/internal/gl$l;

.field private d:Lcom/tapjoy/internal/gl$a;

.field private e:Lcom/tapjoy/internal/gl$x;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8923
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 9025
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->c()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    .line 9085
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->c()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    .line 9145
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    .line 8924
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$n$a;
    .locals 1

    .prologue
    .line 8916
    new-instance v0, Lcom/tapjoy/internal/gl$n$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$n$a;
    .locals 5

    .prologue
    .line 8945
    new-instance v0, Lcom/tapjoy/internal/gl$n$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n$a;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->h()Lcom/tapjoy/internal/gl$n;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$n;->c()Lcom/tapjoy/internal/gl$n;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->f()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {}, Lcom/tapjoy/internal/gl$l;->c()Lcom/tapjoy/internal/gl$l;

    move-result-object v4

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$l$a;->e()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    :goto_1
    iget v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->h()Lcom/tapjoy/internal/gl$a;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {}, Lcom/tapjoy/internal/gl$a;->c()Lcom/tapjoy/internal/gl$a;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$a$a;->e()Lcom/tapjoy/internal/gl$a;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    :goto_2
    iget v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->j()Lcom/tapjoy/internal/gl$x;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v4

    if-eq v3, v4, :cond_6

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$x$a;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->e()Lcom/tapjoy/internal/gl$x;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    :goto_3
    iget v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    :cond_3
    iget-object v2, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto/16 :goto_0

    :cond_4
    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    goto :goto_1

    :cond_5
    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    goto :goto_2

    :cond_6
    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    goto :goto_3
.end method

.method private h()Lcom/tapjoy/internal/gl$n;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8961
    new-instance v2, Lcom/tapjoy/internal/gl$n;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 8962
    iget v3, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 8964
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 8967
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l;

    .line 8968
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 8969
    or-int/lit8 v0, v0, 0x2

    .line 8971
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a;

    .line 8972
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 8973
    or-int/lit8 v0, v0, 0x4

    .line 8975
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x;

    .line 8976
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;I)I

    .line 8977
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 8916
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->g()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gl$a$a;)Lcom/tapjoy/internal/gl$n$a;
    .locals 2

    .prologue
    .line 9115
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a$a;->e()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    .line 9117
    iget v0, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 9118
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$l$a;)Lcom/tapjoy/internal/gl$n$a;
    .locals 2

    .prologue
    .line 9055
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l$a;->e()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$l;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    .line 9057
    iget v0, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 9058
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$x$a;)Lcom/tapjoy/internal/gl$n$a;
    .locals 2

    .prologue
    .line 9175
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x$a;->e()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    .line 9177
    iget v0, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 9178
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 8916
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->g()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8916
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->g()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8997
    iget v2, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 8998
    iget-object v2, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9003
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 8997
    goto :goto_0

    :cond_1
    move v0, v1

    .line 9003
    goto :goto_1
.end method

.method public final e()Lcom/tapjoy/internal/gl$n;
    .locals 2

    .prologue
    .line 8953
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->h()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    .line 8954
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$n;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8955
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    .line 8957
    :cond_0
    return-object v0
.end method
