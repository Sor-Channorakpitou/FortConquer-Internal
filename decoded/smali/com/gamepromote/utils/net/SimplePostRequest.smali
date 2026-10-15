.class public Lcom/gamepromote/utils/net/SimplePostRequest;
.super Lcom/gamepromote/utils/net/AbstractPostRequest;
.source "SimplePostRequest.java"


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/gamepromote/utils/net/AbstractPostRequest;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/gamepromote/utils/net/SimplePostRequest;->url:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/gamepromote/utils/net/SimplePostRequest;->params:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method protected getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gamepromote/utils/net/SimplePostRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v3, p0, Lcom/gamepromote/utils/net/SimplePostRequest;->params:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "i":I
    iget-object v3, p0, Lcom/gamepromote/utils/net/SimplePostRequest;->params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 29
    .local v2, "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    .end local v0    # "i":I
    .end local v2    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-void

    .line 29
    .restart local v0    # "i":I
    .restart local v2    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .local v1, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 31
    const-string v3, "&"

    invoke-virtual {p0, v3}, Lcom/gamepromote/utils/net/SimplePostRequest;->write(Ljava/lang/String;)V

    .line 33
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/gamepromote/utils/net/SimplePostRequest;->write(Ljava/lang/String;)V

    .line 34
    const-string v3, "="

    invoke-virtual {p0, v3}, Lcom/gamepromote/utils/net/SimplePostRequest;->write(Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/gamepromote/utils/net/SimplePostRequest;->write(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
