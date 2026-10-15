.class public Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;
.super Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
.source "LineVertexBuffer.java"


# static fields
.field public static final VERTICES_PER_LINE:I = 0x2


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "pDrawType"    # I
    .param p2, "pManaged"    # Z

    .prologue
    .line 28
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;-><init>(IIZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized update(FFFF)V
    .locals 4
    .param p1, "pX1"    # F
    .param p2, "pY1"    # F
    .param p3, "pX2"    # F
    .param p4, "pY2"    # F

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;->mBufferData:[I

    .line 46
    .local v1, "bufferData":[I
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    .line 47
    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    .line 49
    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    .line 50
    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    .line 52
    iget-object v0, p0, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 53
    .local v0, "buffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 54
    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    .line 57
    invoke-super {p0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 44
    .end local v0    # "buffer":Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    .end local v1    # "bufferData":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
