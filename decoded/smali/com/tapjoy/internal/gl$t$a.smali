.class public final Lcom/tapjoy/internal/gl$t$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4413
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 4519
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    .line 4414
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4406
    new-instance v0, Lcom/tapjoy/internal/gl$t$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$t$a;
    .locals 2

    .prologue
    .line 4435
    new-instance v0, Lcom/tapjoy/internal/gl$t$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t$a;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->h()Lcom/tapjoy/internal/gl$t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$t$a;->a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gl$t;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4451
    new-instance v2, Lcom/tapjoy/internal/gl$t;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$t;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 4452
    iget v3, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4454
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 4457
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4458
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 4459
    or-int/lit8 v0, v0, 0x2

    .line 4461
    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t$a;->d:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;J)J

    .line 4462
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 4463
    or-int/lit8 v0, v0, 0x4

    .line 4465
    :cond_1
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t$a;->e:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$t;->b(Lcom/tapjoy/internal/gl$t;J)J

    .line 4466
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;I)I

    .line 4467
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 4406
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->g()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4612
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4613
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t$a;->d:J

    .line 4615
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;
    .locals 2

    .prologue
    .line 4471
    invoke-static {}, Lcom/tapjoy/internal/gl$t;->c()Lcom/tapjoy/internal/gl$t;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4485
    :goto_0
    return-object p0

    .line 4472
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4473
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4474
    invoke-static {p1}, Lcom/tapjoy/internal/gl$t;->b(Lcom/tapjoy/internal/gl$t;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    .line 4477
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4478
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$t$a;->a(J)Lcom/tapjoy/internal/gl$t$a;

    .line 4480
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4481
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$t$a;->b(J)Lcom/tapjoy/internal/gl$t$a;

    .line 4483
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$t;->c(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4564
    if-nez p1, :cond_0

    .line 4565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4567
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4568
    iput-object p1, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    .line 4570
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 4406
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->g()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4644
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4645
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t$a;->e:J

    .line 4647
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4406
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->g()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4489
    iget v2, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 4497
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 4489
    goto :goto_0

    .line 4493
    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    .line 4497
    goto :goto_1

    :cond_3
    move v2, v0

    .line 4493
    goto :goto_2
.end method

.method public final e()Lcom/tapjoy/internal/gl$t;
    .locals 2

    .prologue
    .line 4443
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->h()Lcom/tapjoy/internal/gl$t;

    move-result-object v0

    .line 4444
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4445
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    .line 4447
    :cond_0
    return-object v0
.end method
