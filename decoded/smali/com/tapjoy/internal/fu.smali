.class public final Lcom/tapjoy/internal/fu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/fy;

.field final b:Lcom/tapjoy/internal/ft;

.field c:J

.field private d:I

.field private final e:Lcom/tapjoy/internal/gl$f$a;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fy;Lcom/tapjoy/internal/ft;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/fu;->d:I

    .line 59
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->k()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 64
    iput-object p1, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    .line 65
    iput-object p2, p0, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/ft;

    .line 66
    return-void
.end method


# virtual methods
.method final a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->b()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    .line 279
    invoke-static {}, Lcom/tapjoy/internal/gl$c;->U()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/internal/fy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 284
    invoke-static {}, Lcom/tapjoy/internal/z;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-static {}, Lcom/tapjoy/internal/z;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gl$c$a;->b(J)Lcom/tapjoy/internal/gl$c$a;

    .line 292
    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$n;->f()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$n;->h()Lcom/tapjoy/internal/gl$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$n;->j()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$c$a;

    .line 295
    return-object v1

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gl$c$a;->c(J)Lcom/tapjoy/internal/gl$c$a;

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/tapjoy/internal/gl$c$a;)V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/fu;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tapjoy/internal/fu;->d:I

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/gl$c$a;->a(I)Lcom/tapjoy/internal/gl$c$a;

    .line 300
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$f$a;)Lcom/tapjoy/internal/gl$c$a;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c$a;->f()Lcom/tapjoy/internal/gl$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$f$a;

    .line 304
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$f$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$f$a;

    .line 305
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$f$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$f$a;

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/ft;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c$a;->e()Lcom/tapjoy/internal/gl$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 308
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f$a;->f()Lcom/tapjoy/internal/gl$f$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0, p2, p3, p4}, Lcom/tapjoy/internal/fy;->a(Ljava/lang/String;D)V

    .line 118
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v1, "purchase"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/tapjoy/internal/gl$r;->C()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$r$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v1

    .line 121
    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$r$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$r$a;

    .line 124
    :cond_0
    invoke-virtual {v1, p3, p4}, Lcom/tapjoy/internal/gl$r$a;->a(D)Lcom/tapjoy/internal/gl$r$a;

    .line 125
    if-eqz p5, :cond_1

    .line 126
    invoke-virtual {v1, p5}, Lcom/tapjoy/internal/gl$r$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$r$a;

    .line 128
    :cond_1
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$r$a;)Lcom/tapjoy/internal/gl$c$a;

    .line 129
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 131
    iget-object v1, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c$a;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/tapjoy/internal/fy;->a(JD)V

    .line 132
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 234
    sget-object v0, Lcom/tapjoy/internal/gl$i;->c:Lcom/tapjoy/internal/gl$i;

    invoke-virtual {p0, v0, p2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {v2, p1}, Lcom/tapjoy/internal/gl$c$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    .line 238
    :cond_0
    if-eqz p3, :cond_1

    .line 239
    invoke-virtual {v2, p3}, Lcom/tapjoy/internal/gl$c$a;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    .line 241
    :cond_1
    if-eqz p4, :cond_2

    .line 242
    invoke-virtual {v2, p4}, Lcom/tapjoy/internal/gl$c$a;->f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    .line 244
    :cond_2
    if-eqz p5, :cond_3

    .line 245
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    invoke-static {}, Lcom/tapjoy/internal/gl$j;->i()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gl$j$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$j$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gl$j$a;->a(J)Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$j$a;)Lcom/tapjoy/internal/gl$c$a;

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 250
    return-void
.end method
