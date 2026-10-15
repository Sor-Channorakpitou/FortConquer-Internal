.class public final Lcom/tapjoy/internal/gl$l$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 1790
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    .line 1866
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    .line 1942
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    .line 2018
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    .line 2094
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    .line 2170
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    .line 2418
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    .line 2494
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->n:Ljava/lang/Object;

    .line 2570
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->o:Ljava/lang/Object;

    .line 2646
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->p:Ljava/lang/Object;

    .line 2722
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    .line 2798
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    .line 2874
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    .line 1541
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 1533
    new-instance v0, Lcom/tapjoy/internal/gl$l$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$l$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$l$a;
    .locals 2

    .prologue
    .line 1590
    new-instance v0, Lcom/tapjoy/internal/gl$l$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$l$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l$a;->e()Lcom/tapjoy/internal/gl$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 1533
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$l$a;->g()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2263
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2264
    iput p1, p0, Lcom/tapjoy/internal/gl$l$a;->i:I

    .line 2266
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;
    .locals 2

    .prologue
    .line 1682
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->c()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1764
    :goto_0
    return-object p0

    .line 1683
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1685
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->b(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    .line 1688
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1689
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1690
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->c(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    .line 1693
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1694
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1695
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->d(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    .line 1698
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1699
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1700
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->e(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    .line 1703
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1704
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1705
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->f(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    .line 1708
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1709
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1710
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->g(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    .line 1713
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1714
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$l$a;->a(I)Lcom/tapjoy/internal/gl$l$a;

    .line 1716
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1717
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$l$a;->b(I)Lcom/tapjoy/internal/gl$l$a;

    .line 1719
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1720
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->v()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$l$a;->c(I)Lcom/tapjoy/internal/gl$l$a;

    .line 1722
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1723
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1724
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->h(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    .line 1727
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1728
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1729
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->i(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    .line 1732
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1733
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1734
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->j(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->n:Ljava/lang/Object;

    .line 1737
    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1738
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1739
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->k(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->o:Ljava/lang/Object;

    .line 1742
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->E()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1743
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1744
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->l(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->p:Ljava/lang/Object;

    .line 1747
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->G()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1748
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1749
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->m(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    .line 1752
    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->I()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1753
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1754
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->n(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    .line 1757
    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->K()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1758
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1759
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->o(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    .line 1762
    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->p(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 1835
    if-nez p1, :cond_0

    .line 1836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1838
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1839
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    .line 1841
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 1533
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$l$a;->g()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2295
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2296
    iput p1, p0, Lcom/tapjoy/internal/gl$l$a;->j:I

    .line 2298
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 1911
    if-nez p1, :cond_0

    .line 1912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1914
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1915
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    .line 1917
    return-object p0
.end method

.method public final c(I)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2327
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2328
    iput p1, p0, Lcom/tapjoy/internal/gl$l$a;->k:I

    .line 2330
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 1987
    if-nez p1, :cond_0

    .line 1988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1990
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1991
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    .line 1993
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1533
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$l$a;->g()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2063
    if-nez p1, :cond_0

    .line 2064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2066
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2067
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    .line 2069
    return-object p0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2139
    if-nez p1, :cond_0

    .line 2140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2142
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2143
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    .line 2145
    return-object p0
.end method

.method public final e()Lcom/tapjoy/internal/gl$l;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x10000

    const v5, 0x8000

    .line 1606
    new-instance v2, Lcom/tapjoy/internal/gl$l;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$l;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 1607
    iget v3, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1609
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_10

    .line 1612
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1614
    or-int/lit8 v0, v0, 0x2

    .line 1616
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->b(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1618
    or-int/lit8 v0, v0, 0x4

    .line 1620
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->c(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 1622
    or-int/lit8 v0, v0, 0x8

    .line 1624
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->d(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 1626
    or-int/lit8 v0, v0, 0x10

    .line 1628
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->e(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1630
    or-int/lit8 v0, v0, 0x20

    .line 1632
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->f(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 1634
    or-int/lit8 v0, v0, 0x40

    .line 1636
    :cond_5
    iget v1, p0, Lcom/tapjoy/internal/gl$l$a;->i:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;I)I

    .line 1637
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 1638
    or-int/lit16 v0, v0, 0x80

    .line 1640
    :cond_6
    iget v1, p0, Lcom/tapjoy/internal/gl$l$a;->j:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->b(Lcom/tapjoy/internal/gl$l;I)I

    .line 1641
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 1642
    or-int/lit16 v0, v0, 0x100

    .line 1644
    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gl$l$a;->k:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->c(Lcom/tapjoy/internal/gl$l;I)I

    .line 1645
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 1646
    or-int/lit16 v0, v0, 0x200

    .line 1648
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->g(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 1650
    or-int/lit16 v0, v0, 0x400

    .line 1652
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->h(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 1654
    or-int/lit16 v0, v0, 0x800

    .line 1656
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->n:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->i(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 1658
    or-int/lit16 v0, v0, 0x1000

    .line 1660
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->o:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->j(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    .line 1662
    or-int/lit16 v0, v0, 0x2000

    .line 1664
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->p:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->k(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    and-int/lit16 v1, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    .line 1666
    or-int/lit16 v0, v0, 0x4000

    .line 1668
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->l(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    and-int v1, v3, v5

    if-ne v1, v5, :cond_e

    .line 1670
    or-int/2addr v0, v5

    .line 1672
    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->m(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    and-int v1, v3, v6

    if-ne v1, v6, :cond_f

    .line 1674
    or-int/2addr v0, v6

    .line 1676
    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->n(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$l;->d(Lcom/tapjoy/internal/gl$l;I)I

    .line 1678
    return-object v2

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.method public final f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2215
    if-nez p1, :cond_0

    .line 2216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2218
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2219
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    .line 2221
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2387
    if-nez p1, :cond_0

    .line 2388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2390
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2391
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    .line 2393
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2463
    if-nez p1, :cond_0

    .line 2464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2466
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2467
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    .line 2469
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2539
    if-nez p1, :cond_0

    .line 2540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2542
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2543
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->n:Ljava/lang/Object;

    .line 2545
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2615
    if-nez p1, :cond_0

    .line 2616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2618
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2619
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->o:Ljava/lang/Object;

    .line 2621
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2691
    if-nez p1, :cond_0

    .line 2692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2694
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2695
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->p:Ljava/lang/Object;

    .line 2697
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2767
    if-nez p1, :cond_0

    .line 2768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2770
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2771
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    .line 2773
    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 2

    .prologue
    .line 2843
    if-nez p1, :cond_0

    .line 2844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2846
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2847
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    .line 2849
    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 2

    .prologue
    .line 2919
    if-nez p1, :cond_0

    .line 2920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2922
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2923
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    .line 2925
    return-object p0
.end method
