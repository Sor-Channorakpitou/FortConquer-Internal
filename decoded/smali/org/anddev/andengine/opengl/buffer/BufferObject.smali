.class public abstract Lorg/anddev/andengine/opengl/buffer/BufferObject;
.super Ljava/lang/Object;
.source "BufferObject.java"


# static fields
.field private static final HARDWAREBUFFERID_FETCHER:[I


# instance fields
.field protected final mBufferData:[I

.field private final mDrawType:I

.field protected final mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

.field private mHardwareBufferID:I

.field private mHardwareBufferNeedsUpdate:Z

.field private mLoadedToHardware:Z

.field private mManaged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->HARDWAREBUFFERID_FETCHER:[I

    .line 15
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "pCapacity"    # I
    .param p2, "pDrawType"    # I
    .param p3, "pManaged"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    .line 48
    iput p2, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mDrawType:I

    .line 49
    iput-boolean p3, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mManaged:Z

    .line 50
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mBufferData:[I

    .line 51
    new-instance v0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    invoke-direct {v0, p1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 53
    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->loadToActiveBufferObjectManager()V

    .line 56
    :cond_0
    return-void
.end method

.method private deleteBufferOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .param p1, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 136
    iget v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 137
    return-void
.end method

.method private generateHardwareBufferID(Ljavax/microedition/khronos/opengles/GL11;)I
    .locals 3
    .param p1, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/4 v2, 0x0

    .line 140
    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/buffer/BufferObject;->HARDWAREBUFFERID_FETCHER:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 142
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->HARDWAREBUFFERID_FETCHER:[I

    aget v0, v0, v2

    return v0
.end method


# virtual methods
.method public getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    return-object v0
.end method

.method public getHardwareBufferID()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mManaged:Z

    return v0
.end method

.method public loadToActiveBufferObjectManager()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    .line 116
    return-void
.end method

.method public loadToHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .param p1, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->generateHardwareBufferID(Ljavax/microedition/khronos/opengles/GL11;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    .line 126
    return-void
.end method

.method public selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .param p1, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 99
    iget v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    .line 100
    .local v0, "hardwareBufferID":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->bindBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 106
    iget-boolean v1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    iget-object v1, v1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mDrawType:I

    invoke-static {p1, v1, v2}, Lorg/anddev/andengine/opengl/util/GLHelper;->bufferData(Ljavax/microedition/khronos/opengles/GL11;Ljava/nio/ByteBuffer;I)V

    .line 108
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHardwareBufferNeedsUpdate()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    .line 92
    return-void
.end method

.method setLoadedToHardware(Z)V
    .locals 0
    .param p1, "pLoadedToHardware"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    .line 84
    return-void
.end method

.method public setManaged(Z)V
    .locals 0
    .param p1, "pManaged"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mManaged:Z

    .line 68
    return-void
.end method

.method public unloadFromActiveBufferObjectManager()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->unloadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    .line 120
    return-void
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .param p1, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->deleteBufferOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    .line 133
    return-void
.end method
