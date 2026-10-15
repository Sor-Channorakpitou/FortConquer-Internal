.class public final Lcom/tapjoy/internal/gl$c$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/tapjoy/internal/gl$i;

.field private d:Ljava/lang/Object;

.field private e:J

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:J

.field private i:J

.field private j:Lcom/tapjoy/internal/gl$l;

.field private k:Lcom/tapjoy/internal/gl$a;

.field private l:Lcom/tapjoy/internal/gl$x;

.field private m:I

.field private n:I

.field private o:Lcom/tapjoy/internal/gl$f;

.field private p:Lcom/tapjoy/internal/gl$r;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Lcom/tapjoy/internal/gl$p;

.field private t:Ljava/lang/Object;

.field private u:Ljava/lang/Object;

.field private v:Ljava/lang/Object;

.field private w:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14859
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 15175
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 15210
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 15350
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->g:Ljava/lang/Object;

    .line 15490
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->c()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    .line 15550
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->c()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    .line 15610
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    .line 15734
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->c()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    .line 15794
    invoke-static {}, Lcom/tapjoy/internal/gl$r;->c()Lcom/tapjoy/internal/gl$r;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    .line 15854
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->q:Ljava/lang/Object;

    .line 15930
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->r:Ljava/lang/Object;

    .line 16006
    invoke-static {}, Lcom/tapjoy/internal/gl$p;->c()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    .line 16066
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->t:Ljava/lang/Object;

    .line 16142
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->u:Ljava/lang/Object;

    .line 16218
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    .line 16294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    .line 14860
    return-void
.end method

.method static synthetic k()Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 14852
    new-instance v0, Lcom/tapjoy/internal/gl$c$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$c$a;-><init>()V

    return-object v0
.end method

.method private l()Lcom/tapjoy/internal/gl$c$a;
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    .line 14917
    new-instance v0, Lcom/tapjoy/internal/gl$c$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$c$a;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->m()Lcom/tapjoy/internal/gl$c;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$c;->c()Lcom/tapjoy/internal/gl$c;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->f()Lcom/tapjoy/internal/gl$i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$c$a;

    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(J)Lcom/tapjoy/internal/gl$c$a;

    :cond_3
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->b(J)Lcom/tapjoy/internal/gl$c$a;

    :cond_4
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->g:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->c(J)Lcom/tapjoy/internal/gl$c$a;

    :cond_6
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->q()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->d(J)Lcom/tapjoy/internal/gl$c$a;

    :cond_7
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->s()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->t()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_16

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    invoke-static {}, Lcom/tapjoy/internal/gl$l;->c()Lcom/tapjoy/internal/gl$l;

    move-result-object v4

    if-eq v3, v4, :cond_16

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$l$a;->e()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    :goto_1
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->u()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->v()Lcom/tapjoy/internal/gl$a;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_17

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    invoke-static {}, Lcom/tapjoy/internal/gl$a;->c()Lcom/tapjoy/internal/gl$a;

    move-result-object v4

    if-eq v3, v4, :cond_17

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$a$a;->e()Lcom/tapjoy/internal/gl$a;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    :goto_2
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_9
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->w()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->x()Lcom/tapjoy/internal/gl$x;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_18

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v4

    if-eq v3, v4, :cond_18

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$x$a;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->e()Lcom/tapjoy/internal/gl$x;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    :goto_3
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_a
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->y()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->z()I

    move-result v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->m:I

    :cond_b
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->A()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->B()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$c$a;->a(I)Lcom/tapjoy/internal/gl$c$a;

    :cond_c
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->C()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->D()Lcom/tapjoy/internal/gl$f;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_19

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    invoke-static {}, Lcom/tapjoy/internal/gl$f;->c()Lcom/tapjoy/internal/gl$f;

    move-result-object v4

    if-eq v3, v4, :cond_19

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$f$a;->e()Lcom/tapjoy/internal/gl$f;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    :goto_4
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->E()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->F()Lcom/tapjoy/internal/gl$r;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_1a

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    invoke-static {}, Lcom/tapjoy/internal/gl$r;->c()Lcom/tapjoy/internal/gl$r;

    move-result-object v4

    if-eq v3, v4, :cond_1a

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$r$a;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$r$a;->e()Lcom/tapjoy/internal/gl$r;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    :goto_5
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_e
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->G()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->q:Ljava/lang/Object;

    :cond_f
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->I()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->r:Ljava/lang/Object;

    :cond_10
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->K()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->L()Lcom/tapjoy/internal/gl$p;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_1b

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    invoke-static {}, Lcom/tapjoy/internal/gl$p;->c()Lcom/tapjoy/internal/gl$p;

    move-result-object v4

    if-eq v3, v4, :cond_1b

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$p;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$p$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p$a;->f()Lcom/tapjoy/internal/gl$p;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    :goto_6
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/2addr v2, v5

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_11
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->M()Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->e(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->t:Ljava/lang/Object;

    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->O()Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->f(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->u:Ljava/lang/Object;

    :cond_13
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->Q()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->g(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    :cond_14
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    :cond_15
    :goto_7
    iget-object v2, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->i(Lcom/tapjoy/internal/gl$c;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto/16 :goto_0

    :cond_16
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    goto/16 :goto_1

    :cond_17
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    goto/16 :goto_2

    :cond_18
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    goto/16 :goto_3

    :cond_19
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    goto/16 :goto_4

    :cond_1a
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    goto/16 :goto_5

    :cond_1b
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    goto/16 :goto_6

    :cond_1c
    invoke-direct {v0}, Lcom/tapjoy/internal/gl$c$a;->n()V

    iget-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7
.end method

.method private m()Lcom/tapjoy/internal/gl$c;
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 14933
    new-instance v1, Lcom/tapjoy/internal/gl$c;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/gl$c;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 14934
    iget v2, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 14935
    const/4 v0, 0x0

    .line 14936
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14937
    const/4 v0, 0x1

    .line 14939
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$i;

    .line 14940
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14941
    or-int/lit8 v0, v0, 0x2

    .line 14943
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14944
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14945
    or-int/lit8 v0, v0, 0x4

    .line 14947
    :cond_2
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->e:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;J)J

    .line 14948
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 14949
    or-int/lit8 v0, v0, 0x8

    .line 14951
    :cond_3
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->f:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;J)J

    .line 14952
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 14953
    or-int/lit8 v0, v0, 0x10

    .line 14955
    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->g:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14956
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 14957
    or-int/lit8 v0, v0, 0x20

    .line 14959
    :cond_5
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->h:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;J)J

    .line 14960
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 14961
    or-int/lit8 v0, v0, 0x40

    .line 14963
    :cond_6
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->i:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;J)J

    .line 14964
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 14965
    or-int/lit16 v0, v0, 0x80

    .line 14967
    :cond_7
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l;

    .line 14968
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 14969
    or-int/lit16 v0, v0, 0x100

    .line 14971
    :cond_8
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a;

    .line 14972
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 14973
    or-int/lit16 v0, v0, 0x200

    .line 14975
    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x;

    .line 14976
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 14977
    or-int/lit16 v0, v0, 0x400

    .line 14979
    :cond_a
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->m:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;I)I

    .line 14980
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 14981
    or-int/lit16 v0, v0, 0x800

    .line 14983
    :cond_b
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->n:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;I)I

    .line 14984
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 14985
    or-int/lit16 v0, v0, 0x1000

    .line 14987
    :cond_c
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f;

    .line 14988
    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 14989
    or-int/lit16 v0, v0, 0x2000

    .line 14991
    :cond_d
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r;

    .line 14992
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 14993
    or-int/lit16 v0, v0, 0x4000

    .line 14995
    :cond_e
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->q:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14996
    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    .line 14997
    or-int/2addr v0, v6

    .line 14999
    :cond_f
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->r:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15000
    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    .line 15001
    or-int/2addr v0, v7

    .line 15003
    :cond_10
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p;

    .line 15004
    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    .line 15005
    or-int/2addr v0, v8

    .line 15007
    :cond_11
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->t:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->e(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15008
    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    .line 15009
    or-int/2addr v0, v9

    .line 15011
    :cond_12
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->u:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->f(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15012
    and-int/2addr v2, v10

    if-ne v2, v10, :cond_13

    .line 15013
    or-int/2addr v0, v10

    .line 15015
    :cond_13
    iget-object v2, p0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gl$c;->g(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15016
    iget v2, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_14

    .line 15017
    iget-object v2, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    .line 15018
    iget v2, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15020
    :cond_14
    iget-object v2, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Ljava/util/List;)Ljava/util/List;

    .line 15021
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;I)I

    .line 15022
    return-object v1
.end method

.method private n()V
    .locals 3

    .prologue
    const/high16 v2, 0x100000

    .line 16297
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 16298
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    .line 16299
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16301
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 14852
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->l()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15719
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15720
    iput p1, p0, Lcom/tapjoy/internal/gl$c$a;->n:I

    .line 15722
    return-object p0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15303
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15304
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->e:J

    .line 15306
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15567
    if-nez p1, :cond_0

    .line 15568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15570
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$a;

    .line 15572
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15573
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$f$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 15764
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f$a;->e()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    .line 15766
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15767
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15192
    if-nez p1, :cond_0

    .line 15193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15195
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15196
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 15198
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$j$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 3

    .prologue
    .line 16374
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->n()V

    .line 16375
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j$a;->e()Lcom/tapjoy/internal/gl$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$j;->d()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16377
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15507
    if-nez p1, :cond_0

    .line 15508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15510
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$l;

    .line 15512
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15513
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$p$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 16036
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p$a;->e()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    .line 16038
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16039
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 16023
    if-nez p1, :cond_0

    .line 16024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16026
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->s:Lcom/tapjoy/internal/gl$p;

    .line 16028
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16029
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$r$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 15824
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r$a;->e()Lcom/tapjoy/internal/gl$r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$r;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    .line 15826
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15827
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15627
    if-nez p1, :cond_0

    .line 15628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15630
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    .line 15632
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15633
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15255
    if-nez p1, :cond_0

    .line 15256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15258
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15259
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 15261
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 14852
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->l()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15335
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15336
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->f:J

    .line 15338
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15395
    if-nez p1, :cond_0

    .line 15396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15398
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15399
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->g:Ljava/lang/Object;

    .line 15401
    return-object p0
.end method

.method public final c(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15443
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15444
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->h:J

    .line 15446
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 15975
    if-nez p1, :cond_0

    .line 15976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15978
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15979
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->r:Ljava/lang/Object;

    .line 15981
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14852
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->l()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 15475
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 15476
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->i:J

    .line 15478
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 16111
    if-nez p1, :cond_0

    .line 16112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16114
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16115
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->t:Ljava/lang/Object;

    .line 16117
    return-object p0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15117
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 15153
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 15117
    goto :goto_0

    .line 15121
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v0, v3

    :goto_2
    if-eqz v0, :cond_0

    .line 15125
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    move v0, v3

    :goto_3
    if-eqz v0, :cond_0

    .line 15129
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    move v0, v3

    :goto_4
    if-eqz v0, :cond_3

    .line 15130
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15135
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_9

    move v0, v3

    :goto_5
    if-eqz v0, :cond_4

    .line 15136
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->o:Lcom/tapjoy/internal/gl$f;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15141
    :cond_4
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    move v0, v3

    :goto_6
    if-eqz v0, :cond_5

    .line 15142
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->p:Lcom/tapjoy/internal/gl$r;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    .line 15147
    :goto_7
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 15148
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$j;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_6
    move v0, v2

    .line 15121
    goto :goto_2

    :cond_7
    move v0, v2

    .line 15125
    goto :goto_3

    :cond_8
    move v0, v2

    .line 15129
    goto :goto_4

    :cond_9
    move v0, v2

    .line 15135
    goto :goto_5

    :cond_a
    move v0, v2

    .line 15141
    goto :goto_6

    :cond_b
    move v2, v3

    .line 15153
    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 16187
    if-nez p1, :cond_0

    .line 16188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16190
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16191
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->u:Ljava/lang/Object;

    .line 16193
    return-object p0
.end method

.method public final e()Lcom/tapjoy/internal/gl$c;
    .locals 2

    .prologue
    .line 14925
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->m()Lcom/tapjoy/internal/gl$c;

    move-result-object v0

    .line 14926
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14927
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    .line 14929
    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 16263
    if-nez p1, :cond_0

    .line 16264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16266
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16267
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    .line 16269
    return-object p0
.end method

.method public final f()Lcom/tapjoy/internal/gl$i;
    .locals 1

    .prologue
    .line 15186
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15221
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 15222
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 15223
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 15225
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 15226
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15227
    iput-object v1, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 15231
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 15297
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$c$a;->e:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 16071
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16077
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->t:Ljava/lang/Object;

    .line 16078
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 16079
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 16081
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 16082
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16083
    iput-object v1, p0, Lcom/tapjoy/internal/gl$c$a;->t:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 16087
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
