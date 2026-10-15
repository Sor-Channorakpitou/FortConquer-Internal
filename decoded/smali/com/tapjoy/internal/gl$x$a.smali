.class public final Lcom/tapjoy/internal/gl$x$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private b:I

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Ljava/util/List;

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:D

.field private o:J

.field private p:D

.field private q:Ljava/lang/Object;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Object;

.field private u:I

.field private v:I

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:Ljava/lang/Object;

.field private z:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6909
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 7267
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->d:Ljava/lang/Object;

    .line 7407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    .line 7660
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->l:Ljava/lang/Object;

    .line 7864
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->q:Ljava/lang/Object;

    .line 8004
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    .line 8144
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    .line 8220
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    .line 8296
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    .line 8372
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    .line 8448
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    .line 6910
    return-void
.end method

.method static synthetic L()Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 6902
    new-instance v0, Lcom/tapjoy/internal/gl$x$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$x$a;-><init>()V

    return-object v0
.end method

.method private M()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 6975
    new-instance v0, Lcom/tapjoy/internal/gl$x$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$x$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x$a;->e()Lcom/tapjoy/internal/gl$x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method private N()V
    .locals 2

    .prologue
    .line 7410
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 7411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    .line 7412
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7414
    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8231
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    .line 8232
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8233
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 8235
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 8236
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8237
    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 8241
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final B()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8277
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8278
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->V()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    .line 8280
    return-object p0
.end method

.method public final C()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 8301
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final D()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8307
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    .line 8308
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8309
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 8311
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 8312
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8313
    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 8317
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final E()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8353
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8354
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->X()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    .line 8356
    return-object p0
.end method

.method public final F()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 8377
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8383
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    .line 8384
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8385
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 8387
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 8388
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8389
    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 8393
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final H()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8429
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8430
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    .line 8432
    return-object p0
.end method

.method public final I()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 8453
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final J()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8459
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    .line 8460
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8461
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 8463
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 8464
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8465
    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 8469
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final K()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8505
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8506
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->ab()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    .line 8508
    return-object p0
.end method

.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 6902
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->M()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7785
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7786
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->n:D

    .line 7788
    return-object p0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7360
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7361
    iput p1, p0, Lcom/tapjoy/internal/gl$x$a;->e:I

    .line 7363
    return-object p0
.end method

.method public final a(ILcom/tapjoy/internal/gl$t$a;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7452
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->N()V

    .line 7453
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/tapjoy/internal/gl$t$a;->e()Lcom/tapjoy/internal/gl$t;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7455
    return-object p0
.end method

.method public final a(ILcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7439
    if-nez p2, :cond_0

    .line 7440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7442
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->N()V

    .line 7443
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7445
    return-object p0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7252
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7253
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->c:J

    .line 7255
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$t$a;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7487
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->N()V

    .line 7488
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t$a;->e()Lcom/tapjoy/internal/gl$t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7490
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7100
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7203
    :goto_0
    return-object p0

    .line 7101
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7102
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(J)Lcom/tapjoy/internal/gl$x$a;

    .line 7104
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7105
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7106
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->d:Ljava/lang/Object;

    .line 7109
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7110
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->a(I)Lcom/tapjoy/internal/gl$x$a;

    .line 7112
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7113
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->b(I)Lcom/tapjoy/internal/gl$x$a;

    .line 7115
    :cond_4
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->c(Lcom/tapjoy/internal/gl$x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7116
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7117
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->c(Lcom/tapjoy/internal/gl$x;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    .line 7118
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7125
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7126
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->e(I)Lcom/tapjoy/internal/gl$x$a;

    .line 7128
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7129
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->r()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->b(J)Lcom/tapjoy/internal/gl$x$a;

    .line 7131
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7132
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->t()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->c(J)Lcom/tapjoy/internal/gl$x$a;

    .line 7134
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7135
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->d(J)Lcom/tapjoy/internal/gl$x$a;

    .line 7137
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7138
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7139
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->d(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->l:Ljava/lang/Object;

    .line 7142
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7143
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->z()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->f(I)Lcom/tapjoy/internal/gl$x$a;

    .line 7145
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7146
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->B()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(D)Lcom/tapjoy/internal/gl$x$a;

    .line 7148
    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7149
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->D()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->e(J)Lcom/tapjoy/internal/gl$x$a;

    .line 7151
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->E()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7152
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->F()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->b(D)Lcom/tapjoy/internal/gl$x$a;

    .line 7154
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->G()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7155
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7156
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->e(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->q:Ljava/lang/Object;

    .line 7159
    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->I()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7160
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->J()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->a(Z)Lcom/tapjoy/internal/gl$x$a;

    .line 7162
    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->K()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7163
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->L()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->b(Z)Lcom/tapjoy/internal/gl$x$a;

    .line 7165
    :cond_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->M()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7166
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7167
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->f(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    .line 7170
    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->O()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7171
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->P()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->g(I)Lcom/tapjoy/internal/gl$x$a;

    .line 7173
    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->Q()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7174
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->R()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->h(I)Lcom/tapjoy/internal/gl$x$a;

    .line 7176
    :cond_14
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->S()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7177
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7178
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->g(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    .line 7181
    :cond_15
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->U()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7182
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7183
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->h(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    .line 7186
    :cond_16
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->W()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7187
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7188
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->i(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    .line 7191
    :cond_17
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->Y()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7192
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7193
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->j(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    .line 7196
    :cond_18
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$x;->aa()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7197
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7198
    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->k(Lcom/tapjoy/internal/gl$x;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    .line 7201
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->l(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto/16 :goto_0

    .line 7120
    :cond_1a
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->N()V

    .line 7121
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$x;->c(Lcom/tapjoy/internal/gl$x;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7507
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->N()V

    .line 7508
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/de$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7511
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7312
    if-nez p1, :cond_0

    .line 7313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7315
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7316
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->d:Ljava/lang/Object;

    .line 7318
    return-object p0
.end method

.method public final a(Z)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7957
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7958
    iput-boolean p1, p0, Lcom/tapjoy/internal/gl$x$a;->r:Z

    .line 7960
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 6902
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->M()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(D)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7849
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7850
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->p:D

    .line 7852
    return-object p0
.end method

.method public final b(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7392
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7393
    iput p1, p0, Lcom/tapjoy/internal/gl$x$a;->f:I

    .line 7395
    return-object p0
.end method

.method public final b(J)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7581
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7582
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->i:J

    .line 7584
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7705
    if-nez p1, :cond_0

    .line 7706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7708
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7709
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->l:Ljava/lang/Object;

    .line 7711
    return-object p0
.end method

.method public final b(Z)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7989
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7990
    iput-boolean p1, p0, Lcom/tapjoy/internal/gl$x$a;->s:Z

    .line 7992
    return-object p0
.end method

.method public final c(I)Lcom/tapjoy/internal/gl$t;
    .locals 1

    .prologue
    .line 7432
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$t;

    return-object v0
.end method

.method public final c(J)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7613
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7614
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->j:J

    .line 7616
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7909
    if-nez p1, :cond_0

    .line 7910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7912
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7913
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->q:Ljava/lang/Object;

    .line 7915
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6902
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->M()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7526
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->N()V

    .line 7527
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7529
    return-object p0
.end method

.method public final d(J)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7645
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7646
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->k:J

    .line 7648
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8049
    if-nez p1, :cond_0

    .line 8050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8052
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8053
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    .line 8055
    return-object p0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7207
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x$a;->g()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7208
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$x$a;->c(I)Lcom/tapjoy/internal/gl$t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$t;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7213
    :goto_1
    return v1

    .line 7207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7213
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final e(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7549
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7550
    iput p1, p0, Lcom/tapjoy/internal/gl$x$a;->h:I

    .line 7552
    return-object p0
.end method

.method public final e(J)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7817
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7818
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$x$a;->o:J

    .line 7820
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8189
    if-nez p1, :cond_0

    .line 8190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8192
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8193
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    .line 8195
    return-object p0
.end method

.method public final e()Lcom/tapjoy/internal/gl$x;
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 6991
    new-instance v1, Lcom/tapjoy/internal/gl$x;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/gl$x;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 6992
    iget v2, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 6993
    const/4 v0, 0x0

    .line 6994
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6995
    const/4 v0, 0x1

    .line 6997
    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->c:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;J)J

    .line 6998
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6999
    or-int/lit8 v0, v0, 0x2

    .line 7001
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7002
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7003
    or-int/lit8 v0, v0, 0x4

    .line 7005
    :cond_2
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->e:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;I)I

    .line 7006
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7007
    or-int/lit8 v0, v0, 0x8

    .line 7009
    :cond_3
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->f:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;I)I

    .line 7010
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7011
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    .line 7012
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7014
    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;Ljava/util/List;)Ljava/util/List;

    .line 7015
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 7016
    or-int/lit8 v0, v0, 0x10

    .line 7018
    :cond_5
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->h:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->c(Lcom/tapjoy/internal/gl$x;I)I

    .line 7019
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 7020
    or-int/lit8 v0, v0, 0x20

    .line 7022
    :cond_6
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->i:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;J)J

    .line 7023
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 7024
    or-int/lit8 v0, v0, 0x40

    .line 7026
    :cond_7
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->j:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->c(Lcom/tapjoy/internal/gl$x;J)J

    .line 7027
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 7028
    or-int/lit16 v0, v0, 0x80

    .line 7030
    :cond_8
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->k:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->d(Lcom/tapjoy/internal/gl$x;J)J

    .line 7031
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 7032
    or-int/lit16 v0, v0, 0x100

    .line 7034
    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->l:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7035
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 7036
    or-int/lit16 v0, v0, 0x200

    .line 7038
    :cond_a
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->m:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->d(Lcom/tapjoy/internal/gl$x;I)I

    .line 7039
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 7040
    or-int/lit16 v0, v0, 0x400

    .line 7042
    :cond_b
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->n:D

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;D)D

    .line 7043
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 7044
    or-int/lit16 v0, v0, 0x800

    .line 7046
    :cond_c
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->o:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->e(Lcom/tapjoy/internal/gl$x;J)J

    .line 7047
    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 7048
    or-int/lit16 v0, v0, 0x1000

    .line 7050
    :cond_d
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$x$a;->p:D

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;D)D

    .line 7051
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 7052
    or-int/lit16 v0, v0, 0x2000

    .line 7054
    :cond_e
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->q:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->c(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7055
    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    .line 7056
    or-int/lit16 v0, v0, 0x4000

    .line 7058
    :cond_f
    iget-boolean v3, p0, Lcom/tapjoy/internal/gl$x$a;->r:Z

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;Z)Z

    .line 7059
    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    .line 7060
    or-int/2addr v0, v6

    .line 7062
    :cond_10
    iget-boolean v3, p0, Lcom/tapjoy/internal/gl$x$a;->s:Z

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;Z)Z

    .line 7063
    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    .line 7064
    or-int/2addr v0, v7

    .line 7066
    :cond_11
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->d(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7067
    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    .line 7068
    or-int/2addr v0, v8

    .line 7070
    :cond_12
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->u:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->e(Lcom/tapjoy/internal/gl$x;I)I

    .line 7071
    and-int v3, v2, v10

    if-ne v3, v10, :cond_13

    .line 7072
    or-int/2addr v0, v9

    .line 7074
    :cond_13
    iget v3, p0, Lcom/tapjoy/internal/gl$x$a;->v:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->f(Lcom/tapjoy/internal/gl$x;I)I

    .line 7075
    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    .line 7076
    or-int/2addr v0, v10

    .line 7078
    :cond_14
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->e(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7079
    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    .line 7080
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 7082
    :cond_15
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->f(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7083
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_16

    .line 7084
    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    .line 7086
    :cond_16
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->g(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7087
    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    .line 7088
    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    .line 7090
    :cond_17
    iget-object v3, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$x;->h(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7091
    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_18

    .line 7092
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 7094
    :cond_18
    iget-object v2, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gl$x;->i(Lcom/tapjoy/internal/gl$x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7095
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gl$x;->g(Lcom/tapjoy/internal/gl$x;I)I

    .line 7096
    return-object v1
.end method

.method public final f(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7753
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7754
    iput p1, p0, Lcom/tapjoy/internal/gl$x$a;->m:I

    .line 7756
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8265
    if-nez p1, :cond_0

    .line 8266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8268
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8269
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->x:Ljava/lang/Object;

    .line 8271
    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .prologue
    .line 7420
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 7426
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8097
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8098
    iput p1, p0, Lcom/tapjoy/internal/gl$x$a;->u:I

    .line 8100
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8341
    if-nez p1, :cond_0

    .line 8342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8344
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8345
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->y:Ljava/lang/Object;

    .line 8347
    return-object p0
.end method

.method public final h()Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->g:Ljava/util/List;

    .line 7518
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7520
    return-object p0
.end method

.method public final h(I)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8129
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8130
    iput p1, p0, Lcom/tapjoy/internal/gl$x$a;->v:I

    .line 8132
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8417
    if-nez p1, :cond_0

    .line 8418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8420
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8421
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->z:Ljava/lang/Object;

    .line 8423
    return-object p0
.end method

.method public final i()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7826
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7827
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$x$a;->o:J

    .line 7829
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8493
    if-nez p1, :cond_0

    .line 8494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8496
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8497
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x$a;->A:Ljava/lang/Object;

    .line 8499
    return-object p0
.end method

.method public final j()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7858
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7859
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$x$a;->p:D

    .line 7861
    return-object p0
.end method

.method public final k()Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 7921
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7922
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->H()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->q:Ljava/lang/Object;

    .line 7924
    return-object p0
.end method

.method public final l()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 7966
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 7967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gl$x$a;->r:Z

    .line 7969
    return-object p0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 7983
    iget-boolean v0, p0, Lcom/tapjoy/internal/gl$x$a;->s:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 8009
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8015
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    .line 8016
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8017
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 8019
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 8020
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8021
    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 8025
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8061
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8062
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->t:Ljava/lang/Object;

    .line 8064
    return-object p0
.end method

.method public final q()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 8085
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 8091
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->u:I

    return v0
.end method

.method public final s()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8106
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8107
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->u:I

    .line 8109
    return-object p0
.end method

.method public final t()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 8117
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 8123
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->v:I

    return v0
.end method

.method public final v()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8138
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8139
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->v:I

    .line 8141
    return-object p0
.end method

.method public final w()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 8149
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8155
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    .line 8156
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8157
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 8159
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 8160
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8161
    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 8165
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final y()Lcom/tapjoy/internal/gl$x$a;
    .locals 2

    .prologue
    .line 8201
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    .line 8202
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->w:Ljava/lang/Object;

    .line 8204
    return-object p0
.end method

.method public final z()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 8225
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
