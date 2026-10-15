.class Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;
.super Ljava/lang/Object;
.source "CrashDumpUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/framework/CrashDumpUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAndUploadService"
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# instance fields
.field private _serverAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/droidhen/framework/CrashDumpUploader;


# direct methods
.method constructor <init>(Lcom/droidhen/framework/CrashDumpUploader;Ljava/lang/String;)V
    .locals 0
    .param p2, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->this$0:Lcom/droidhen/framework/CrashDumpUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->_serverAddress:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private compress([B)[B
    .locals 4
    .param p1, "content"    # [B

    .prologue
    .line 147
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v2, "gzout":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v2, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 150
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 157
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzout":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    return-object v3

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readFile(Ljava/io/File;)[B
    .locals 7
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v6, 0x1000

    :try_start_0
    new-array v3, v6, [B

    .line 123
    .local v3, "buf":[B
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    :goto_0
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v1, v2

    .line 142
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buf":[B
    .end local v5    # "read":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_2
    return-object v6

    .line 126
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buf":[B
    .restart local v5    # "read":I
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v0, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 125
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    goto :goto_0

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buf":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "read":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v4

    .line 131
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    if-eqz v1, :cond_2

    .line 135
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 142
    :cond_2
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 136
    :catch_2
    move-exception v4

    .line 137
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 133
    :goto_5
    if-eqz v1, :cond_3

    .line 135
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 140
    :cond_3
    :goto_6
    throw v6

    .line 136
    :catch_3
    move-exception v4

    .line 137
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 132
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buf":[B
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 130
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 87
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v10, p0, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->this$0:Lcom/droidhen/framework/CrashDumpUploader;

    invoke-static {v10}, Lcom/droidhen/framework/CrashDumpUploader;->access$0(Lcom/droidhen/framework/CrashDumpUploader;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 89
    .local v7, "files":[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v3, "dumpFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v10, v7

    if-lt v8, v10, :cond_0

    .line 96
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v8, v10, :cond_2

    .line 117
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dumpFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "i":I
    :goto_2
    return-void

    .line 91
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "dumpFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v7    # "files":[Ljava/io/File;
    .restart local v8    # "i":I
    :cond_0
    aget-object v5, v7, v8

    .line 92
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".dmp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 93
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 97
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 98
    .restart local v5    # "f":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->readFile(Ljava/io/File;)[B

    move-result-object v1

    .line 99
    .local v1, "content":[B
    if-eqz v1, :cond_3

    .line 100
    invoke-direct {p0, v1}, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->compress([B)[B

    move-result-object v0

    .line 101
    .local v0, "compressed":[B
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    new-instance v9, Lcom/droidhen/framework/net/FileUploadRequest;

    iget-object v10, p0, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->_serverAddress:Ljava/lang/String;

    iget-object v11, p0, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;->this$0:Lcom/droidhen/framework/CrashDumpUploader;

    invoke-static {v11}, Lcom/droidhen/framework/CrashDumpUploader;->access$1(Lcom/droidhen/framework/CrashDumpUploader;)Ljava/util/HashMap;

    move-result-object v11

    invoke-direct {v9, v10, v6, v0, v11}, Lcom/droidhen/framework/net/FileUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .local v9, "request":Lcom/droidhen/framework/net/AbstractPostRequest;
    :try_start_1
    invoke-virtual {v9}, Lcom/droidhen/framework/net/AbstractPostRequest;->sendRequest()Ljava/lang/String;

    .line 106
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .end local v0    # "compressed":[B
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "request":Lcom/droidhen/framework/net/AbstractPostRequest;
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 107
    .restart local v0    # "compressed":[B
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v9    # "request":Lcom/droidhen/framework/net/AbstractPostRequest;
    :catch_0
    move-exception v4

    .line 108
    .local v4, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 114
    .end local v0    # "compressed":[B
    .end local v1    # "content":[B
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dumpFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "i":I
    .end local v9    # "request":Lcom/droidhen/framework/net/AbstractPostRequest;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 109
    .restart local v0    # "compressed":[B
    .restart local v1    # "content":[B
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "dumpFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "files":[Ljava/io/File;
    .restart local v8    # "i":I
    .restart local v9    # "request":Lcom/droidhen/framework/net/AbstractPostRequest;
    :catch_2
    move-exception v4

    .line 110
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method
