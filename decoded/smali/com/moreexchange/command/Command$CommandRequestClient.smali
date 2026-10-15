.class Lcom/moreexchange/command/Command$CommandRequestClient;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandRequestClient"
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://www.moreadexchange.com:8080/"

.field private static client:Lcom/loopj/android/http/AsyncHttpClient;

.field private static headers:[Lorg/apache/http/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/moreexchange/command/Command$CommandRequestClient;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 369
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    sput-object v0, Lcom/moreexchange/command/Command$CommandRequestClient;->headers:[Lorg/apache/http/Header;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "responseHandler"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 372
    invoke-static {}, Lcom/moreexchange/command/Command$CommandRequestClient;->initHeaders()V

    .line 373
    sget-object v0, Lcom/moreexchange/command/Command$CommandRequestClient;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/moreexchange/command/Command$CommandRequestClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/moreexchange/command/Command$CommandRequestClient;->headers:[Lorg/apache/http/Header;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 374
    return-void
.end method

.method private static getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativeUrl"    # Ljava/lang/String;

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.moreadexchange.com:8080/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initHeaders()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 387
    sget-object v0, Lcom/moreexchange/command/Command$CommandRequestClient;->headers:[Lorg/apache/http/Header;

    aget-object v0, v0, v5

    if-nez v0, :cond_0

    .line 388
    sget-object v0, Lcom/moreexchange/command/Command$CommandRequestClient;->headers:[Lorg/apache/http/Header;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "auth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/moreexchange/MoreExchange;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/moreexchange/MoreExchange;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 390
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "responseHandler"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 377
    invoke-static {}, Lcom/moreexchange/command/Command$CommandRequestClient;->initHeaders()V

    .line 378
    sget-object v0, Lcom/moreexchange/command/Command$CommandRequestClient;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/moreexchange/command/Command$CommandRequestClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/moreexchange/command/Command$CommandRequestClient;->headers:[Lorg/apache/http/Header;

    const-string v5, "application/json"

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 380
    return-void
.end method
