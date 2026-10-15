.class public final Lcom/tapjoy/internal/gl$r$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:D

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:J

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10260
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 10457
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    .line 10533
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->d:I

    .line 10597
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    .line 10673
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    .line 10749
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->h:Ljava/lang/Object;

    .line 10825
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->i:Ljava/lang/Object;

    .line 10901
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->j:Ljava/lang/Object;

    .line 11041
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    .line 11117
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->n:Ljava/lang/Object;

    .line 10261
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10253
    new-instance v0, Lcom/tapjoy/internal/gl$r$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$r$a;
    .locals 2

    .prologue
    .line 10300
    new-instance v0, Lcom/tapjoy/internal/gl$r$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r$a;->e()Lcom/tapjoy/internal/gl$r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$r$a;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 10253
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r$a;->g()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10582
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10583
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$r$a;->e:D

    .line 10585
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;
    .locals 3

    .prologue
    .line 10372
    invoke-static {}, Lcom/tapjoy/internal/gl$r;->c()Lcom/tapjoy/internal/gl$r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10427
    :goto_0
    return-object p0

    .line 10373
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10374
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10375
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->b(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    .line 10378
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10379
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->h()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->d:I

    .line 10381
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10382
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->j()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$r$a;->a(D)Lcom/tapjoy/internal/gl$r$a;

    .line 10384
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10385
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10386
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->c(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    .line 10389
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10390
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10391
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->d(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    .line 10394
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10395
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10396
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->e(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->h:Ljava/lang/Object;

    .line 10399
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10400
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10401
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->f(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->i:Ljava/lang/Object;

    .line 10404
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10405
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10406
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->g(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->j:Ljava/lang/Object;

    .line 10409
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10410
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->v()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->k:I

    .line 10412
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10413
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->x()J

    move-result-wide v0

    iget v2, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$r$a;->l:J

    .line 10415
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10416
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10417
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->h(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    .line 10420
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10421
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10422
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->i(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->n:Ljava/lang/Object;

    .line 10425
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->j(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10502
    if-nez p1, :cond_0

    .line 10503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10505
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10506
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    .line 10508
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 10253
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r$a;->g()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10642
    if-nez p1, :cond_0

    .line 10643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10645
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10646
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    .line 10648
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 11086
    if-nez p1, :cond_0

    .line 11087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11089
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11090
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    .line 11092
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10253
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r$a;->g()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10431
    iget v2, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 10435
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 10431
    goto :goto_0

    :cond_1
    move v0, v1

    .line 10435
    goto :goto_1
.end method

.method public final e()Lcom/tapjoy/internal/gl$r;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10316
    new-instance v2, Lcom/tapjoy/internal/gl$r;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$r;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 10317
    iget v3, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 10319
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_b

    .line 10322
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10323
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 10324
    or-int/lit8 v0, v0, 0x2

    .line 10326
    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->d:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;I)I

    .line 10327
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 10328
    or-int/lit8 v0, v0, 0x4

    .line 10330
    :cond_1
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$r$a;->e:D

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;D)D

    .line 10331
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 10332
    or-int/lit8 v0, v0, 0x8

    .line 10334
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->b(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10335
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 10336
    or-int/lit8 v0, v0, 0x10

    .line 10338
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->c(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10339
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 10340
    or-int/lit8 v0, v0, 0x20

    .line 10342
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->d(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10343
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 10344
    or-int/lit8 v0, v0, 0x40

    .line 10346
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->e(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10347
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 10348
    or-int/lit16 v0, v0, 0x80

    .line 10350
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->f(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10351
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 10352
    or-int/lit16 v0, v0, 0x100

    .line 10354
    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->k:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->b(Lcom/tapjoy/internal/gl$r;I)I

    .line 10355
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 10356
    or-int/lit16 v0, v0, 0x200

    .line 10358
    :cond_8
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$r$a;->l:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;J)J

    .line 10359
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 10360
    or-int/lit16 v0, v0, 0x400

    .line 10362
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->g(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10363
    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    .line 10364
    or-int/lit16 v0, v0, 0x800

    .line 10366
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->n:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->h(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10367
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$r;->c(Lcom/tapjoy/internal/gl$r;I)I

    .line 10368
    return-object v2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method
