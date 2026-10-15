.class Lcom/tapjoy/internal/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private final a:Landroid/net/http/AndroidHttpClient;

.field private final b:Ljava/util/ArrayList;

.field private c:Lorg/apache/http/HttpResponse;

.field private d:Lorg/apache/http/client/methods/HttpRequestBase;

.field private e:Lcom/tapjoy/internal/fc$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->b:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/tapjoy/internal/ff;->a:Landroid/net/http/AndroidHttpClient;

    .line 49
    sget-object v0, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V
    .locals 5

    .prologue
    const/16 v4, 0x1bb

    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 354
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/ff$1;

    invoke-direct {v0, p2, p0}, Lcom/tapjoy/internal/ff$1;-><init>(ILandroid/content/Context;)V

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    .prologue
    .line 127
    monitor-enter p0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicHeader;

    .line 134
    iget-object v2, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 139
    new-instance v0, Lcom/tapjoy/internal/et;

    invoke-direct {v0}, Lcom/tapjoy/internal/et;-><init>()V

    .line 141
    invoke-virtual {v0}, Lcom/tapjoy/internal/et;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/et;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lcom/tapjoy/internal/et;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/internal/et;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 153
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    .line 154
    sget-object v0, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :goto_2
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_2

    .line 160
    sget-object v1, Lcom/tapjoy/internal/fc$c;->g:Lcom/tapjoy/internal/fc$c;

    iput-object v1, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    .line 182
    :goto_3
    sget-object v1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    const-string v2, "Failed to retrieve URI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 161
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_3

    .line 163
    sget-object v1, Lcom/tapjoy/internal/fc$c;->g:Lcom/tapjoy/internal/fc$c;

    iput-object v1, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    goto :goto_3

    .line 164
    :cond_3
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_4

    .line 166
    sget-object v1, Lcom/tapjoy/internal/fc$c;->d:Lcom/tapjoy/internal/fc$c;

    iput-object v1, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    goto :goto_3

    .line 167
    :cond_4
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_5

    .line 169
    sget-object v1, Lcom/tapjoy/internal/fc$c;->e:Lcom/tapjoy/internal/fc$c;

    iput-object v1, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    goto :goto_3

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    sget-object v2, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    if-ne v1, v2, :cond_6

    .line 174
    sget-object v1, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;

    iput-object v1, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    goto :goto_3

    .line 177
    :cond_6
    sget-object v1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    goto :goto_3

    .line 184
    :catch_1
    move-exception v0

    .line 186
    sget-object v1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    const-string v2, "Caught runtime exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    sget-object v0, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    goto :goto_2
.end method


# virtual methods
.method final a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ff;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 95
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-eq v0, v1, :cond_1

    .line 96
    :cond_0
    const-wide/16 v0, -0x1

    .line 98
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)J
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ff;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-eq v0, v1, :cond_1

    .line 116
    :cond_0
    const-wide/16 v0, -0x1

    .line 118
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final a(Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/ff;->b:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 234
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    sget-object v0, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    iput-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    .line 237
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->c:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Lcom/tapjoy/internal/fc$c;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/tapjoy/internal/ff;->e:Lcom/tapjoy/internal/fc$c;

    return-object v0
.end method
