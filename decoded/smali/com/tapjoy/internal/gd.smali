.class public final Lcom/tapjoy/internal/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/cl;


# instance fields
.field final a:Lcom/tapjoy/internal/fv;

.field b:Ljava/util/Set;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fv;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tapjoy/internal/gd;->a:Lcom/tapjoy/internal/fv;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->c:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/tapjoy/internal/cz;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->d:Ljava/util/Map;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gd;->b:Ljava/util/Set;

    .line 47
    return-void
.end method

.method private a(Lcom/tapjoy/internal/cg;Lcom/tapjoy/internal/gu$a;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 183
    instance-of v0, p1, Lcom/tapjoy/internal/gu;

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p2, Lcom/tapjoy/internal/gu$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p2, Lcom/tapjoy/internal/gu$a;->b:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/tapjoy/internal/cx;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/tapjoy/internal/gd;->b:Ljava/util/Set;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    check-cast p1, Lcom/tapjoy/internal/gu;

    .line 189
    iget-object v0, p1, Lcom/tapjoy/internal/gu;->c:Ljava/lang/String;

    .line 190
    iget-boolean v1, p1, Lcom/tapjoy/internal/gu;->d:Z

    .line 191
    iget-object v2, p0, Lcom/tapjoy/internal/gd;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    if-nez v1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/tapjoy/internal/gd;->c:Ljava/util/Map;

    iget-object v3, p2, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1
    iget-object v2, p2, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    iget-object v3, p0, Lcom/tapjoy/internal/gd;->a:Lcom/tapjoy/internal/fv;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fv;->j()Lcom/tapjoy/internal/fw;

    move-result-object v3

    instance-of v4, v2, Lcom/tapjoy/internal/gb;

    if-eqz v4, :cond_3

    const-string v1, "No content for \"{}\""

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/fw;->a(Ljava/lang/String;)V

    .line 196
    :goto_1
    return-void

    .line 185
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/da;->a(Ljava/util/Iterator;)Ljava/util/HashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_3
    const-string v4, "New content for \"{}\" is ready"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/fw;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/cg;)V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lcom/tapjoy/internal/gu$a;

    new-instance v1, Lcom/tapjoy/internal/gb;

    invoke-direct {v1}, Lcom/tapjoy/internal/gb;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/gu$a;-><init>(Lcom/tapjoy/internal/gc;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/gd;->a(Lcom/tapjoy/internal/cg;Lcom/tapjoy/internal/gu$a;)V

    .line 205
    return-void
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/cg;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p2, Lcom/tapjoy/internal/gu$a;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gd;->a(Lcom/tapjoy/internal/cg;Lcom/tapjoy/internal/gu$a;)V

    return-void
.end method
