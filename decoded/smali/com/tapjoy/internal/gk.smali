.class public final Lcom/tapjoy/internal/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gk$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/tapjoy/internal/bn;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "pkg_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "pkg_rev"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->h()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "data_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "installer"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const-string v1, "store"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gl$c;ZZZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 254
    new-instance v0, Lcom/tapjoy/internal/bn;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->f()Lcom/tapjoy/internal/gl$i;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    .line 258
    const-string v0, "time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 259
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->k()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 260
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 261
    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 270
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 274
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "info"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bs;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->t()Lcom/tapjoy/internal/gl$l;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;

    .line 277
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bs;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->v()Lcom/tapjoy/internal/gl$a;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;

    .line 280
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const-string v0, "user"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bs;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->x()Lcom/tapjoy/internal/gl$x;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$x;Lcom/tapjoy/internal/gl$c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    const-string v0, "event_seq"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->B()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 287
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    const-string v0, "event_prev"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bs;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->D()Lcom/tapjoy/internal/gl$f;

    move-result-object v3

    new-instance v4, Lcom/tapjoy/internal/bn;

    invoke-direct {v4}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->f()Lcom/tapjoy/internal/gl$i;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "category"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_5
    invoke-virtual {v4}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;

    .line 292
    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->E()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 293
    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bs;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->F()Lcom/tapjoy/internal/gl$r;

    move-result-object v3

    new-instance v4, Lcom/tapjoy/internal/bn;

    invoke-direct {v4}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    move-result-object v4

    const-string v5, "product_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "product_quantity"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->h()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    :cond_7
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "product_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->j()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bn;->a(D)Lcom/tapjoy/internal/bn;

    :cond_8
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "product_price_currency"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_9
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "currency_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_a
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "product_type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_b
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "product_title"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_c
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "product_description"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_d
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "transaction_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_e
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "transaction_state"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->v()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    :cond_f
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "transaction_date"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->x()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    :cond_10
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "campaign_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    :cond_11
    invoke-virtual {v4}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;

    .line 297
    :cond_12
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->G()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 298
    const-string v0, "exception"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 303
    :cond_13
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->K()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 304
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 305
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->I()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 306
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/bt;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bt;->a(Ljava/util/Map;)V

    .line 308
    :cond_14
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->L()Lcom/tapjoy/internal/gl$p;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 310
    const-string v3, "fq7_change"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_15
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 313
    const-string v3, "fq30_change"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_16
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 316
    const-string v3, "push_id"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_17
    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_18
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->M()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 327
    const-string v0, "category"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 329
    :cond_19
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->O()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 330
    const-string v0, "p1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 332
    :cond_1a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->Q()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 333
    const-string v0, "p2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 335
    :cond_1b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->T()I

    move-result v0

    if-lez v0, :cond_20

    .line 336
    const-string v0, "values"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    .line 337
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$j;

    .line 338
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$j;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    goto :goto_2

    .line 262
    :cond_1c
    invoke-static {}, Lcom/tapjoy/internal/z;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->m()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->o()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 264
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tapjoy/internal/z;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 265
    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    goto/16 :goto_0

    .line 267
    :cond_1d
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    goto/16 :goto_0

    .line 319
    :cond_1e
    :try_start_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->I()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 320
    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bs;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->J()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 340
    :cond_1f
    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    .line 343
    :cond_20
    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gl$d;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    new-instance v0, Lcom/tapjoy/internal/bn;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->a()Lcom/tapjoy/internal/bn;

    move-result-object v9

    .line 354
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v1

    move-object v5, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$c;

    .line 355
    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->s()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->t()Lcom/tapjoy/internal/gl$l;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/gl$l;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 357
    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->t()Lcom/tapjoy/internal/gl$l;

    move-result-object v6

    move v8, v3

    .line 361
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->u()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->v()Lcom/tapjoy/internal/gl$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 363
    :cond_1
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->v()Lcom/tapjoy/internal/gl$a;

    move-result-object v5

    move v7, v3

    .line 367
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->w()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->x()Lcom/tapjoy/internal/gl$x;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/gl$x;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 369
    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->x()Lcom/tapjoy/internal/gl$x;

    move-result-object v1

    move-object v4, v1

    move v1, v3

    .line 373
    :goto_3
    new-instance v11, Lcom/tapjoy/internal/bs;

    invoke-static {v0, v8, v7, v1}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$c;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/bn;

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    .line 375
    goto :goto_0

    :cond_3
    move v8, v2

    move-object v6, v5

    .line 359
    goto :goto_1

    :cond_4
    move v7, v2

    move-object v5, v4

    .line 365
    goto :goto_2

    :cond_5
    move-object v4, v1

    move v1, v2

    .line 371
    goto :goto_3

    .line 376
    :cond_6
    invoke-virtual {v9}, Lcom/tapjoy/internal/bn;->b()Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gl$i;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/tapjoy/internal/gk$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 388
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 382
    :pswitch_0
    const-string v0, "app"

    .line 386
    :goto_0
    return-object v0

    .line 384
    :pswitch_1
    const-string v0, "campaign"

    goto :goto_0

    .line 386
    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/tapjoy/internal/bn;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "os_name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "os_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "device_maker"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "device_model"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "pkg_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "pkg_sign"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "display_d"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->r()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "display_w"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->t()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "display_h"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->v()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "country_sim"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "country_net"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->K()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gl$x;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$x;Lcom/tapjoy/internal/gl$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gl$x;Lcom/tapjoy/internal/gl$c;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    .line 83
    new-instance v0, Lcom/tapjoy/internal/bn;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "installed"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->G()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    const-string v0, "idfa"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 93
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 107
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const-string v0, "fq7"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->j()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-string v0, "fq30"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->l()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->n()I

    move-result v0

    if-lez v0, :cond_9

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->n()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$t;

    .line 117
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_6
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/tapjoy/internal/gi;->b()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    const-string v2, "idfa"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 101
    invoke-static {}, Lcom/tapjoy/internal/gi;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    goto/16 :goto_0

    .line 121
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 122
    const-string v0, "push"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->a()Lcom/tapjoy/internal/bn;

    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    goto :goto_2

    .line 126
    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->b()Lcom/tapjoy/internal/bn;

    .line 130
    :cond_9
    const-string v0, "session"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    .line 132
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->p()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    const-string v0, "total_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 138
    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 139
    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->t()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 141
    :cond_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->u()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 142
    const-string v0, "last_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 145
    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    .line 147
    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->c()Lcom/tapjoy/internal/bn;

    .line 149
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    const-string v0, "currency"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 152
    :cond_e
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->z()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 155
    :cond_f
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->A()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 156
    const-string v0, "total_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->B()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(D)Lcom/tapjoy/internal/bn;

    .line 158
    :cond_10
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->C()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 159
    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->D()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 161
    :cond_11
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->E()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 162
    const-string v0, "last_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->F()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(D)Lcom/tapjoy/internal/bn;

    .line 165
    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    .line 167
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->M()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 168
    const-string v0, "user_id"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 170
    :cond_13
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->O()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 171
    const-string v0, "user_level"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->P()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 173
    :cond_14
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->Q()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    const-string v0, "friend_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->R()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 176
    :cond_15
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->S()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 177
    const-string v0, "uv1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 179
    :cond_16
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->U()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 180
    const-string v0, "uv2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 182
    :cond_17
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->W()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 183
    const-string v0, "uv3"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 185
    :cond_18
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->Y()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 186
    const-string v0, "uv4"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 188
    :cond_19
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->aa()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 189
    const-string v0, "uv5"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bn;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    .line 192
    :cond_1a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->L()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 193
    const-string v0, "push_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bn;->a(J)Lcom/tapjoy/internal/bn;

    .line 196
    :cond_1b
    invoke-virtual {v1}, Lcom/tapjoy/internal/bn;->d()Lcom/tapjoy/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
