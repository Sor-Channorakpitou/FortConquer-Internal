.class Lcom/tapjoy/internal/ei;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Lcom/tapjoy/internal/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/tapjoy/internal/ei;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ei;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;Lcom/tapjoy/internal/ej;Ljava/util/Map;Lcom/tapjoy/internal/fc;)V
    .locals 7

    .prologue
    .line 20
    sget-object v2, Lcom/tapjoy/internal/ek$a;->a:Lcom/tapjoy/internal/ek$a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/ek;-><init>(Landroid/net/http/AndroidHttpClient;Lcom/tapjoy/internal/ek$a;Ljava/lang/String;Lcom/tapjoy/internal/ej;Ljava/util/Map;Lcom/tapjoy/internal/fc;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/fc$c;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tapjoy/internal/ei;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->f()Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ey;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fc$c;->j:Lcom/tapjoy/internal/fc$c;

    goto :goto_0

    .line 54
    :cond_1
    invoke-super {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/tapjoy/internal/ei;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting retrieval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ei;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ei;->d:Lcom/tapjoy/internal/ej;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ej;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    .line 30
    invoke-super {p0}, Lcom/tapjoy/internal/ek;->run()V

    .line 32
    invoke-virtual {p0}, Lcom/tapjoy/internal/ei;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 34
    new-instance v0, Lcom/tapjoy/internal/ey;

    invoke-direct {v0}, Lcom/tapjoy/internal/ey;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    iget-object v1, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ff;->d()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ey;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/tapjoy/internal/ei;->e:Ljava/lang/String;

    const-string v2, "IO Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
