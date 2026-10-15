.class public Lorg/anddev/andengine/util/ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferOutputStream.java"


# instance fields
.field protected mCount:I

.field protected mData:[B

.field protected final mMaximumGrow:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "pInitialCapacity"    # I
    .param p2, "pMaximumGrow"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    iput p2, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mMaximumGrow:I

    .line 35
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    .line 36
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1
    .param p1, "pDesiredCapacity"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->grow(I)V

    .line 73
    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 7
    .param p1, "pDesiredCapacity"    # I

    .prologue
    const/4 v6, 0x0

    .line 76
    iget-object v4, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    array-length v3, v4

    .line 77
    .local v3, "oldCapacity":I
    iget v4, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mMaximumGrow:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    .local v1, "grow":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Growing by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 79
    add-int v2, v3, v1

    .line 81
    .local v2, "newCapacity":I
    sub-int v4, v2, p1

    if-gez v4, :cond_0

    .line 82
    move v2, p1

    .line 84
    :cond_0
    if-gez v2, :cond_2

    .line 85
    if-gez p1, :cond_1

    .line 86
    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v4

    .line 88
    :cond_1
    const v2, 0x7fffffff

    .line 92
    :cond_2
    new-array v0, v2, [B

    .line 93
    .local v0, "data":[B
    iget-object v4, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    iget v5, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    .line 95
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "pByte"    # I

    .prologue
    .line 48
    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->ensureCapacity(I)V

    .line 49
    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    iget v1, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 50
    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    .line 51
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "pData"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I

    .prologue
    .line 55
    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->ensureCapacity(I)V

    .line 56
    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    iget v1, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    .line 58
    return-void
.end method
