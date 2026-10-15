.class public Lcom/gamepromote/offerwall/ad/AdVersion;
.super Ljava/lang/Object;
.source "AdVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;
    }
.end annotation


# instance fields
.field private hasNewData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdVersion;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdVersion;->hasNewData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/gamepromote/offerwall/ad/AdVersion;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/gamepromote/offerwall/ad/AdVersion;->getVersionFromServer()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/gamepromote/offerwall/ad/AdVersion;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdVersion;->hasNewData:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gamepromote/offerwall/ad/AdVersion;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdVersion;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getVersionFromServer()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 31
    :try_start_0
    const-string v4, "http://ow.gamepromote.net/offerwall/getVersion.php"

    .line 32
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/gamepromote/utils/net/SimplePostRequest;

    invoke-direct {v2, v4, v1}, Lcom/gamepromote/utils/net/SimplePostRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .local v2, "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 36
    .local v3, "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Lcom/gamepromote/utils/net/AbstractPostRequest;->sendRequest()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 44
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 49
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return v5

    .line 37
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/net/ProtocolException;
    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v5

    goto :goto_0

    .line 48
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getVersionPre()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdVersion;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;

    invoke-direct {v0, p0}, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;-><init>(Lcom/gamepromote/offerwall/ad/AdVersion;)V

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;->start()V

    .line 23
    :cond_0
    return-void
.end method

.method public hasNewData()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdVersion;->hasNewData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method
