.class public abstract Lcom/droidhen/framework/net/AbstractPostRequest;
.super Ljava/lang/Object;
.source "AbstractPostRequest.java"


# static fields
.field private static final DEFAULT_SO_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_TIMEOUT:I = 0x1f40


# instance fields
.field private dos:Ljava/io/DataOutputStream;

.field private timeout:I

.field private urlc:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    .line 17
    iput-object v0, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    .line 18
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->timeout:I

    .line 12
    return-void
.end method

.method private createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "request":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 83
    .local v1, "urlc":Ljava/net/HttpURLConnection;
    iget v2, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->timeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 87
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 88
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 89
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 90
    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "Content-Type"

    invoke-virtual {p0}, Lcom/droidhen/framework/net/AbstractPostRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "Accept"

    .line 95
    const-string v3, "image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, deflate"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "Accept-Language"

    const-string v3, "en-au"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "Host"

    const-string v3, "rookie"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "User-Agent"

    .line 101
    const-string v3, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.0.3215; .NET CLR 1.0.3705)"

    .line 99
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v1
.end method


# virtual methods
.method protected abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public sendRequest()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 24
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/droidhen/framework/net/AbstractPostRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/droidhen/framework/net/AbstractPostRequest;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    iput-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    .line 25
    new-instance v6, Ljava/io/DataOutputStream;

    iget-object v7, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    .line 27
    invoke-virtual {p0}, Lcom/droidhen/framework/net/AbstractPostRequest;->writeData()V

    .line 29
    iget-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 30
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 35
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\ufeff"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 39
    .local v4, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_0

    .line 40
    iget-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 42
    :cond_0
    iget-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    if-eqz v6, :cond_1

    .line 44
    :try_start_2
    iget-object v6, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 48
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 54
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 56
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 37
    :cond_3
    :goto_3
    return-object v4

    .line 33
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 38
    .end local v0    # "b":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .line 39
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_4
    iget-object v7, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_5

    .line 40
    iget-object v7, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->urlc:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 42
    :cond_5
    iget-object v7, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    if-eqz v7, :cond_6

    .line 44
    :try_start_6
    iget-object v7, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 48
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 50
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 54
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 56
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 60
    :cond_8
    :goto_7
    throw v6

    .line 51
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b":I
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 57
    :catch_1
    move-exception v6

    goto :goto_3

    .line 51
    .end local v0    # "b":I
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "temp":Ljava/lang/String;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v7

    goto :goto_6

    .line 57
    :catch_3
    move-exception v7

    goto :goto_7

    .line 45
    :catch_4
    move-exception v7

    goto :goto_5

    .line 38
    :catchall_1
    move-exception v6

    goto :goto_4

    .line 45
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b":I
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "temp":Ljava/lang/String;
    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->timeout:I

    .line 68
    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected write([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/droidhen/framework/net/AbstractPostRequest;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 72
    return-void
.end method

.method public abstract writeData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
