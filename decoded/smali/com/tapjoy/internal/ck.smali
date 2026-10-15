.class public final Lcom/tapjoy/internal/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/cj;
.implements Ljava/io/Closeable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ck$1;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/tapjoy/internal/ck;->d:I

    .line 61
    const-string v0, "/"

    iput-object v0, p0, Lcom/tapjoy/internal/ck;->f:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/ck;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/tapjoy/internal/ck;->b:Ljava/lang/String;

    .line 73
    iput p3, p0, Lcom/tapjoy/internal/ck;->c:I

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    .line 76
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ck;->h:Lorg/apache/http/client/HttpClient;

    .line 77
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    iget-object v2, p0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    :cond_0
    iget-object v2, p0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private b(Lcom/tapjoy/internal/cg;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 159
    .line 160
    iget-boolean v0, p0, Lcom/tapjoy/internal/ck;->e:Z

    if-eqz v0, :cond_c

    .line 161
    const/4 v0, 0x1

    move v1, v0

    .line 164
    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "https"

    .line 165
    :goto_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/tapjoy/internal/ck;->d:I

    .line 166
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/cg;->c()Ljava/lang/String;

    move-result-object v3

    .line 167
    iget-object v1, p0, Lcom/tapjoy/internal/ck;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tapjoy/internal/ck;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_0
    new-instance v8, Lcom/tapjoy/internal/h;

    invoke-direct {v8}, Lcom/tapjoy/internal/h;-><init>()V

    .line 175
    invoke-virtual {p1}, Lcom/tapjoy/internal/cg;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/tapjoy/internal/bh$a;

    .line 176
    sget-object v1, Lcom/tapjoy/internal/ck$1;->a:[I

    invoke-virtual {v6}, Lcom/tapjoy/internal/bh$a;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    const-string v0, "http"

    goto :goto_1

    .line 165
    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/ck;->c:I

    goto :goto_2

    .line 179
    :pswitch_0
    iget-object v1, p0, Lcom/tapjoy/internal/ck;->b:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v8, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 181
    sget-object v0, Lcom/tapjoy/internal/bh$a;->a:Lcom/tapjoy/internal/bh$a;

    if-ne v6, v0, :cond_3

    .line 182
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    move-object v1, v0

    .line 244
    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 245
    invoke-interface {v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_4

    .line 184
    :cond_3
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    move-object v1, v0

    .line 186
    goto :goto_3

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcom/tapjoy/internal/ck;->b:Ljava/lang/String;

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Lcom/tapjoy/internal/cg;->d()Ljava/lang/String;

    move-result-object v1

    .line 193
    if-nez v1, :cond_7

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 196
    new-instance v1, Lcom/tapjoy/internal/hi;

    sget-object v0, Lcom/tapjoy/internal/hf;->a:Lcom/tapjoy/internal/hf;

    invoke-direct {v1, v0, v7}, Lcom/tapjoy/internal/hi;-><init>(Lcom/tapjoy/internal/hf;B)V

    .line 197
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 199
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/tapjoy/internal/hm;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v8, "text/plain"

    sget-object v9, Lcom/tapjoy/internal/aq;->c:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8, v9}, Lcom/tapjoy/internal/hm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v5, v7}, Lcom/tapjoy/internal/hi;->a(Ljava/lang/String;Lcom/tapjoy/internal/hk;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 201
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cw;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 204
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hc;

    .line 206
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/hc;)V

    goto :goto_6

    :cond_5
    move-object v0, v1

    .line 230
    :goto_7
    sget-object v1, Lcom/tapjoy/internal/bh$a;->b:Lcom/tapjoy/internal/bh$a;

    if-ne v6, v1, :cond_9

    .line 231
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 232
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_3

    .line 211
    :cond_6
    :try_start_1
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v8, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 212
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cw;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 216
    :cond_7
    const-string v0, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 217
    invoke-virtual {p1}, Lcom/tapjoy/internal/cg;->e()Ljava/util/Map;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    :try_start_2
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; charset=UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 223
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cw;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 226
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown content type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_9
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 236
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_3

    .line 247
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/cg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 248
    invoke-interface {v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_8

    .line 250
    :cond_b
    return-object v1

    :cond_c
    move v1, v7

    goto/16 :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/cg;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ck;->b(Lcom/tapjoy/internal/cg;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/tapjoy/internal/ck;->h:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 129
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 131
    sparse-switch v2, :sswitch_data_0

    .line 137
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    throw v0

    .line 140
    :sswitch_0
    const/4 v2, 0x0

    .line 142
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/cg;->a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 146
    :try_start_3
    invoke-static {v1}, Lcom/tapjoy/internal/dd;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    if-eqz v3, :cond_1

    .line 152
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    return-object v0

    .line 146
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 147
    :try_start_4
    invoke-static {v1}, Lcom/tapjoy/internal/dd;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x199 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 106
    iput p1, p0, Lcom/tapjoy/internal/ck;->d:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ck;->e:Z

    .line 108
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tapjoy/internal/ck;->f:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/tapjoy/internal/ck;

    iget-object v1, p0, Lcom/tapjoy/internal/ck;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ck;->b:Ljava/lang/String;

    iget v3, p0, Lcom/tapjoy/internal/ck;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/ck;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/tapjoy/internal/ck;->d:I

    iput v1, v0, Lcom/tapjoy/internal/ck;->d:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/ck;->e:Z

    iput-boolean v1, v0, Lcom/tapjoy/internal/ck;->e:Z

    iget-object v1, p0, Lcom/tapjoy/internal/ck;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/ck;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/tapjoy/internal/ck;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/ck;->h:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/ck;->h:Lorg/apache/http/client/HttpClient;

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ck;->h:Lorg/apache/http/client/HttpClient;

    .line 103
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/tapjoy/internal/ck;->close()V

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 95
    return-void
.end method
