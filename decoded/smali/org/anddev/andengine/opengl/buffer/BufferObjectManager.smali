.class public Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;
.super Ljava/lang/Object;
.source "BufferObjectManager.java"


# static fields
.field private static mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

.field private static final mBufferObjectsLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBufferObjectsManaged:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBufferObjectsToBeLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    return-object v0
.end method

.method public static setActiveInstance(Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;)V
    .locals 0
    .param p0, "pActiveInstance"    # Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    .prologue
    .line 42
    sput-object p0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 1
    .param p1, "pBufferObject"    # Lorg/anddev/andengine/opengl/buffer/BufferObject;

    .prologue
    .line 64
    monitor-enter p0

    if-nez p1, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_0
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_1
    :try_start_1
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public varargs loadBufferObjects([Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 2
    .param p1, "pBufferObjects"    # [Lorg/anddev/andengine/opengl/buffer/BufferObject;

    .prologue
    .line 91
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 94
    return-void

    .line 92
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadBufferObjects()V
    .locals 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 104
    .local v1, "loadedBufferObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 108
    sget-object v2, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/opengl/buffer/BufferObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setLoadedToHardware(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    .end local v1    # "loadedBufferObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unloadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 1
    .param p1, "pBufferObject"    # Lorg/anddev/andengine/opengl/buffer/BufferObject;

    .prologue
    .line 78
    monitor-enter p0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_0
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_2
    :try_start_1
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public varargs unloadBufferObjects([Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 2
    .param p1, "pBufferObjects"    # [Lorg/anddev/andengine/opengl/buffer/BufferObject;

    .prologue
    .line 97
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->unloadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    .line 97
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized updateBufferObjects(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 10
    .param p1, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    sget-object v4, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    .line 115
    .local v4, "bufferObjectsManaged":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    sget-object v3, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 116
    .local v3, "bufferObjectsLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    sget-object v5, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    .line 117
    .local v5, "bufferObjectsToBeLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    sget-object v6, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    .line 120
    .local v6, "bufferObjectsToBeUnloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 122
    .local v1, "bufferObjectToBeLoadedCount":I
    if-lez v1, :cond_0

    .line 123
    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_2

    .line 132
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 136
    .end local v8    # "i":I
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 138
    .local v7, "bufferObjectsToBeUnloadedCount":I
    if-lez v7, :cond_1

    .line 139
    add-int/lit8 v8, v7, -0x1

    .restart local v8    # "i":I
    :goto_1
    if-gez v8, :cond_4

    .line 148
    .end local v8    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 124
    .end local v7    # "bufferObjectsToBeUnloadedCount":I
    .restart local v8    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;

    .line 125
    .local v0, "bufferObjectToBeLoaded":Lorg/anddev/andengine/opengl/buffer/BufferObject;
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->isLoadedToHardware()Z

    move-result v9

    if-nez v9, :cond_3

    .line 126
    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->loadToHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 127
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setHardwareBufferNeedsUpdate()V

    .line 129
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 140
    .end local v0    # "bufferObjectToBeLoaded":Lorg/anddev/andengine/opengl/buffer/BufferObject;
    .restart local v7    # "bufferObjectsToBeUnloadedCount":I
    :cond_4
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/opengl/buffer/BufferObject;

    .line 141
    .local v2, "bufferObjectToBeUnloaded":Lorg/anddev/andengine/opengl/buffer/BufferObject;
    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->isLoadedToHardware()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 142
    invoke-virtual {v2, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 144
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 114
    .end local v1    # "bufferObjectToBeLoadedCount":I
    .end local v2    # "bufferObjectToBeUnloaded":Lorg/anddev/andengine/opengl/buffer/BufferObject;
    .end local v3    # "bufferObjectsLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    .end local v4    # "bufferObjectsManaged":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    .end local v5    # "bufferObjectsToBeLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    .end local v6    # "bufferObjectsToBeUnloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/buffer/BufferObject;>;"
    .end local v7    # "bufferObjectsToBeUnloadedCount":I
    .end local v8    # "i":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method
