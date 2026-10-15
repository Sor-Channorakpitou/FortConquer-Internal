.class public final Lcom/tapjoy/internal/gw;
.super Lcom/tapjoy/internal/gt;
.source "SourceFile"


# instance fields
.field private final c:Lcom/tapjoy/internal/gl$l;

.field private final d:Lcom/tapjoy/internal/gl$a;

.field private final e:Lcom/tapjoy/internal/gl$x;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$x;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tapjoy/internal/gt;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tapjoy/internal/gw;->c:Lcom/tapjoy/internal/gl$l;

    .line 22
    iput-object p2, p0, Lcom/tapjoy/internal/gw;->d:Lcom/tapjoy/internal/gl$a;

    .line 23
    iput-object p3, p0, Lcom/tapjoy/internal/gw;->e:Lcom/tapjoy/internal/gl$x;

    .line 24
    iput-object p4, p0, Lcom/tapjoy/internal/gw;->f:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/gl$n;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->f()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->h()Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->j()Lcom/tapjoy/internal/gl$x;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/tapjoy/internal/gw;-><init>(Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$x;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "api/v1/tokens"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Lcom/tapjoy/internal/gt;->e()Ljava/util/Map;

    move-result-object v1

    .line 43
    const-string v0, "info"

    new-instance v2, Lcom/tapjoy/internal/bs;

    iget-object v3, p0, Lcom/tapjoy/internal/gw;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "app"

    new-instance v2, Lcom/tapjoy/internal/bs;

    iget-object v3, p0, Lcom/tapjoy/internal/gw;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "user"

    new-instance v2, Lcom/tapjoy/internal/bs;

    iget-object v3, p0, Lcom/tapjoy/internal/gw;->e:Lcom/tapjoy/internal/gl$x;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$x;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bs;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/gw;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 47
    const-string v0, "push_token"

    iget-object v2, p0, Lcom/tapjoy/internal/gw;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    return-object v1

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
