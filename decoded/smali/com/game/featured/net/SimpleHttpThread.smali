.class public Lcom/game/featured/net/SimpleHttpThread;
.super Ljava/lang/Thread;
.source "SimpleHttpThread.java"


# static fields
.field private static final BYTES_BLOCK:I = 0x400

.field public static final LOG_TAG:Ljava/lang/String; = "SimpleHttpThread"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/game/featured/net/HttpTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/game/featured/net/SimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/game/featured/net/SimpleHttpThread;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/featured/net/SimpleHttpThread;->setDaemon(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/game/featured/net/SimpleHttpThread;->start()V

    .line 70
    return-void
.end method

.method public postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleHttpObserver;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/game/featured/net/SimpleHttpObserver;
    .param p4, "stopThreadWhenFinished"    # Z

    .prologue
    .line 73
    new-instance v1, Lcom/game/featured/net/HttpTask;

    invoke-direct {v1}, Lcom/game/featured/net/HttpTask;-><init>()V

    .line 74
    .local v1, "task":Lcom/game/featured/net/HttpTask;
    invoke-virtual {v1, p1}, Lcom/game/featured/net/HttpTask;->setUrl(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p2}, Lcom/game/featured/net/HttpTask;->setParam(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, p3}, Lcom/game/featured/net/HttpTask;->setObserver(Lcom/game/featured/net/SimpleHttpObserver;)V

    .line 77
    invoke-virtual {v1, p4}, Lcom/game/featured/net/HttpTask;->setStopThreadWhenFinished(Z)V

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/game/featured/net/SimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "SimpleHttpThread"

    const-string v3, "put http post task failed"

    invoke-static {v2, v3, v0}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 88
    :goto_0
    const/16 v20, 0x0

    .line 89
    .local v20, "task":Lcom/game/featured/net/HttpTask;
    const/4 v13, 0x0

    .line 90
    .local v13, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v11, 0x0

    .line 92
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/featured/net/SimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/game/featured/net/HttpTask;

    move-object/from16 v20, v0

    .line 94
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 95
    .local v12, "params":Lorg/apache/http/params/BasicHttpParams;
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 97
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 99
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v20 .. v20}, Lcom/game/featured/net/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v13    # "post":Lorg/apache/http/client/methods/HttpPost;
    .local v14, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v15, "postBaos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v15}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v9, "gzipos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/game/featured/net/HttpTask;->getParam()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 104
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 105
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 106
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 108
    .local v4, "compressedData":[B
    new-instance v21, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 109
    invoke-virtual {v10, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 110
    .local v17, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 111
    .local v18, "statusCode":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0xc8

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    .line 113
    .local v19, "succeed":Z
    :goto_1
    if-nez v19, :cond_2

    .line 114
    const-string v21, "SimpleHttpThread"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "http post failed with status code "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    move-object/from16 v8, v20

    .line 125
    .local v8, "finalTask":Lcom/game/featured/net/HttpTask;
    move/from16 v7, v19

    .line 126
    .local v7, "finalSucceed":Z
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 127
    .local v5, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/featured/net/SimpleHttpThread;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v21, v0

    new-instance v22, Lcom/game/featured/net/SimpleHttpThread$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v7, v5}, Lcom/game/featured/net/SimpleHttpThread$1;-><init>(Lcom/game/featured/net/SimpleHttpThread;Lcom/game/featured/net/HttpTask;Z[B)V

    invoke-interface/range {v21 .. v22}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual/range {v20 .. v20}, Lcom/game/featured/net/HttpTask;->isStopThreadWhenFinished()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v21

    if-eqz v21, :cond_3

    .line 143
    invoke-static {v11}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 146
    return-void

    .line 112
    .end local v5    # "data":[B
    .end local v7    # "finalSucceed":Z
    .end local v8    # "finalTask":Lcom/game/featured/net/HttpTask;
    .end local v19    # "succeed":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 116
    .restart local v19    # "succeed":Z
    :cond_2
    const/16 v21, 0x400

    :try_start_2
    move/from16 v0, v21

    new-array v3, v0, [B

    .line 117
    .local v3, "bytes":[B
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 118
    const/16 v16, 0x0

    .line 119
    .local v16, "readCount":I
    :goto_2
    const/16 v21, 0x0

    const/16 v22, 0x400

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    if-lez v16, :cond_0

    .line 120
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 140
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bytes":[B
    .end local v4    # "compressedData":[B
    .end local v9    # "gzipos":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "postBaos":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "readCount":I
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "statusCode":I
    .end local v19    # "succeed":Z
    :catch_0
    move-exception v6

    move-object v13, v14

    .line 141
    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v14    # "post":Lorg/apache/http/client/methods/HttpPost;
    .local v6, "e":Ljava/lang/Throwable;
    .restart local v13    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    :try_start_3
    const-string v21, "SimpleHttpThread"

    const-string v22, "http post task failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-static {v11}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 142
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v21

    .line 143
    :goto_4
    invoke-static {v11}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 144
    throw v21

    .line 143
    .end local v13    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "compressedData":[B
    .restart local v5    # "data":[B
    .restart local v7    # "finalSucceed":Z
    .restart local v8    # "finalTask":Lcom/game/featured/net/HttpTask;
    .restart local v9    # "gzipos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v14    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v15    # "postBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "statusCode":I
    .restart local v19    # "succeed":Z
    :cond_3
    invoke-static {v11}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 142
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "compressedData":[B
    .end local v5    # "data":[B
    .end local v7    # "finalSucceed":Z
    .end local v8    # "finalTask":Lcom/game/featured/net/HttpTask;
    .end local v9    # "gzipos":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "postBaos":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "statusCode":I
    .end local v19    # "succeed":Z
    :catchall_1
    move-exception v21

    move-object v13, v14

    .end local v14    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .line 140
    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12    # "params":Lorg/apache/http/params/BasicHttpParams;
    :catch_1
    move-exception v6

    goto :goto_3
.end method
