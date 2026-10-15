.class public Lorg/anddev/andengine/util/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "pCloseable"    # Ljava/io/Closeable;

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pOutputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 67
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 12
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pOutputStream"    # Ljava/io/OutputStream;
    .param p2, "pByteLimit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x2000

    const/4 v8, 0x0

    .line 98
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gez v5, :cond_2

    .line 99
    new-array v0, v9, [B

    .line 101
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-ne v4, v10, :cond_1

    .line 120
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 121
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 105
    .end local v0    # "buf":[B
    .end local v4    # "read":I
    :cond_2
    new-array v0, v9, [B

    .line 106
    .restart local v0    # "buf":[B
    long-to-int v5, p2

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 107
    .local v1, "bufferReadLimit":I
    move-wide v2, p2

    .line 110
    .local v2, "pBytesLeftToRead":J
    :goto_2
    invoke-virtual {p0, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .restart local v4    # "read":I
    if-eq v4, v10, :cond_0

    .line 111
    int-to-long v6, v4

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 112
    invoke-virtual {p1, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    int-to-long v6, v4

    sub-long/2addr v2, v6

    goto :goto_2

    .line 115
    :cond_3
    long-to-int v5, v2

    invoke-virtual {p1, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pByteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 82
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "dataOffset":I
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 73
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 77
    return-void

    .line 74
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pOutputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 125
    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {p0, p1, v2, v3}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 126
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 128
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 130
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 132
    throw v1
.end method

.method public static flushCloseStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "pOutputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 162
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 163
    throw v1
.end method

.method public static flushCloseWriter(Ljava/io/Writer;)V
    .locals 2
    .param p0, "pWriter"    # Ljava/io/Writer;

    .prologue
    .line 173
    if-eqz p0, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 179
    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 180
    throw v1
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v1, "sc":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static streamToBytes(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pReadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x2000

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 61
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    int-to-long v2, p1

    invoke-static {p0, v0, v2, v3}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    move v1, p1

    .line 60
    goto :goto_0
.end method
