.class Lcom/tapjoy/internal/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ek$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private final a:Lcom/tapjoy/internal/ek$a;

.field final b:Lcom/tapjoy/internal/ff;

.field final c:Ljava/lang/String;

.field final d:Lcom/tapjoy/internal/ej;

.field private final e:Lcom/tapjoy/internal/fc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/tapjoy/internal/ek;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/http/AndroidHttpClient;Lcom/tapjoy/internal/ek$a;Ljava/lang/String;Lcom/tapjoy/internal/ej;Ljava/util/Map;Lcom/tapjoy/internal/fc;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/tapjoy/internal/ff;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/ff;-><init>(Landroid/net/http/AndroidHttpClient;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0, p5}, Lcom/tapjoy/internal/ff;->a(Ljava/util/Map;)V

    .line 43
    iput-object p2, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    .line 44
    iput-object p3, p0, Lcom/tapjoy/internal/ek;->c:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/tapjoy/internal/ek;->d:Lcom/tapjoy/internal/ej;

    .line 46
    iput-object p6, p0, Lcom/tapjoy/internal/ek;->e:Lcom/tapjoy/internal/fc;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Lcom/tapjoy/internal/fc$c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->f()Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->d()Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->d()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->c()V

    .line 113
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 52
    sget-object v0, Lcom/tapjoy/internal/ek;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting retrieval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ek;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-wide/16 v0, -0x1

    .line 54
    iget-object v2, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    sget-object v3, Lcom/tapjoy/internal/ek$a;->a:Lcom/tapjoy/internal/ek$a;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    sget-object v3, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/ek$a;

    if-ne v2, v3, :cond_3

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->d:Lcom/tapjoy/internal/ej;

    invoke-virtual {v2}, Lcom/tapjoy/internal/ej;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ff;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 63
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 65
    sget-object v0, Lcom/tapjoy/internal/ek;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to retrieve from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v2}, Lcom/tapjoy/internal/ff;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->e:Lcom/tapjoy/internal/fc;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->e:Lcom/tapjoy/internal/fc;

    iget-object v1, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ff;->f()Lcom/tapjoy/internal/fc$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fc;->a(Lcom/tapjoy/internal/fc$c;)V

    .line 90
    :cond_2
    :goto_1
    return-void

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    sget-object v3, Lcom/tapjoy/internal/ek$a;->c:Lcom/tapjoy/internal/ek$a;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    sget-object v3, Lcom/tapjoy/internal/ek$a;->d:Lcom/tapjoy/internal/ek$a;

    if-ne v2, v3, :cond_1

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    iget-object v1, p0, Lcom/tapjoy/internal/ek;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->d:Lcom/tapjoy/internal/ej;

    invoke-virtual {v2}, Lcom/tapjoy/internal/ej;->c()Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ff;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)J

    move-result-wide v0

    goto :goto_0

    .line 73
    :cond_5
    sget-object v2, Lcom/tapjoy/internal/ek;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retrieved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v3}, Lcom/tapjoy/internal/ff;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 78
    sget-object v2, Lcom/tapjoy/internal/ek;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") status on request to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ff;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    sget-object v1, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/ek$a;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->a:Lcom/tapjoy/internal/ek$a;

    sget-object v1, Lcom/tapjoy/internal/ek$a;->d:Lcom/tapjoy/internal/ek$a;

    if-ne v0, v1, :cond_2

    .line 85
    :cond_7
    sget-object v0, Lcom/tapjoy/internal/ek;->f:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->b:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->e()V

    goto :goto_1
.end method
