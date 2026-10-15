.class public abstract Lcom/tapjoy/internal/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bq;
.implements Lcom/tapjoy/internal/bv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/bt$1;,
        Lcom/tapjoy/internal/bt$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bt;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/tapjoy/internal/bt$a;->a()Lcom/tapjoy/internal/bt$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bt$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bt;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->g()V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->v()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->h()V

    .line 197
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/bt;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/tapjoy/internal/bt$a;->a()Lcom/tapjoy/internal/bt$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bt$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bt;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Lcom/tapjoy/internal/cb;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/cb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private u()Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->l()Lcom/tapjoy/internal/by;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/by;->i:Lcom/tapjoy/internal/by;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->p()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->l()Lcom/tapjoy/internal/by;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/tapjoy/internal/bt$1;->a:[I

    invoke-virtual {v0}, Lcom/tapjoy/internal/by;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 176
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a value but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->d()Ljava/util/List;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->e()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->p()V

    .line 168
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_4
    new-instance v0, Lcom/tapjoy/internal/co;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/co;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-interface {p1, p0}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->a:Ljava/util/HashMap;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/tapjoy/internal/bo;)V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->g()V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {p2, p0}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->h()V

    .line 232
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->i()V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->v()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->j()V

    .line 212
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->l()Lcom/tapjoy/internal/by;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/by;->c:Lcom/tapjoy/internal/by;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->l()Lcom/tapjoy/internal/by;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/by;->f:Lcom/tapjoy/internal/by;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 186
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Ljava/util/List;)V

    .line 187
    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 201
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bt;->a(Ljava/util/Map;)V

    .line 202
    return-object v0
.end method

.method public final f()Ljava/net/URL;
    .locals 2

    .prologue
    .line 309
    const-string v0, "BASE_URI"

    invoke-interface {p0, v0}, Lcom/tapjoy/internal/bq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
