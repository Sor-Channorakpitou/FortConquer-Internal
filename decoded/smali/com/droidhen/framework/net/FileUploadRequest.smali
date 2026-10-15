.class public Lcom/droidhen/framework/net/FileUploadRequest;
.super Lcom/droidhen/framework/net/AbstractPostRequest;
.source "FileUploadRequest.java"


# instance fields
.field private data:[B

.field private fileName:Ljava/lang/String;

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

.field private strBoundary:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/droidhen/framework/net/AbstractPostRequest;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/droidhen/framework/net/FileUploadRequest;->url:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/droidhen/framework/net/FileUploadRequest;->fileName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/droidhen/framework/net/FileUploadRequest;->data:[B

    .line 19
    iput-object p4, p0, Lcom/droidhen/framework/net/FileUploadRequest;->params:Ljava/util/Map;

    .line 20
    invoke-direct {p0}, Lcom/droidhen/framework/net/FileUploadRequest;->newBoundary()V

    .line 21
    return-void
.end method

.method private newBoundary()V
    .locals 6

    .prologue
    .line 44
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/droidhen/framework/net/FileUploadRequest;->strBoundary:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/form-data; boundary=---------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/droidhen/framework/net/FileUploadRequest;->strBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/droidhen/framework/net/FileUploadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected writeBinary([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "\r\nContent-Type: application/octet-stream"

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 57
    const-string v0, "\r\n\r\n"

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/droidhen/framework/net/FileUploadRequest;->write([B)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n-----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/droidhen/framework/net/FileUploadRequest;->strBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public writeData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------------------------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/droidhen/framework/net/FileUploadRequest;->strBoundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/droidhen/framework/net/FileUploadRequest;->params:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/droidhen/framework/net/FileUploadRequest;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 33
    .local v1, "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 37
    .end local v1    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    iget-object v2, p0, Lcom/droidhen/framework/net/FileUploadRequest;->data:[B

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/droidhen/framework/net/FileUploadRequest;->data:[B

    invoke-virtual {p0, v2}, Lcom/droidhen/framework/net/FileUploadRequest;->writeFile([B)V

    .line 40
    :cond_1
    const-string v2, "--"

    invoke-virtual {p0, v2}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 41
    return-void

    .line 33
    .restart local v1    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    .local v0, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/droidhen/framework/net/FileUploadRequest;->writeParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeFile([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\nContent-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/droidhen/framework/net/FileUploadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/droidhen/framework/net/FileUploadRequest;->writeBinary([B)V

    .line 65
    return-void
.end method

.method protected writeParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "\r\nContent-Disposition: form-data; name=\""

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"\r\n\r\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n-----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/droidhen/framework/net/FileUploadRequest;->strBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/droidhen/framework/net/FileUploadRequest;->write(Ljava/lang/String;)V

    .line 53
    return-void
.end method
