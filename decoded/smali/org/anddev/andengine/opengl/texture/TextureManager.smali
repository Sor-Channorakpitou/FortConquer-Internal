.class public Lorg/anddev/andengine/opengl/texture/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# instance fields
.field private final mTexturesLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesManaged:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesToBeLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesToBeUnloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method protected declared-synchronized clear()V
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z
    .locals 1
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x0

    .line 68
    :goto_0
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 2
    .param p1, "pTextures"    # [Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 92
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 95
    return-void

    .line 93
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadTextures()V
    .locals 4

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 105
    .local v0, "managedTextures":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 106
    .local v1, "texture":Lorg/anddev/andengine/opengl/texture/ITexture;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/anddev/andengine/opengl/texture/ITexture;->setLoadedToHardware(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v0    # "managedTextures":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .end local v1    # "texture":Lorg/anddev/andengine/opengl/texture/ITexture;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unloadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z
    .locals 1
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 87
    :goto_1
    monitor-exit p0

    return v0

    .line 82
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public varargs unloadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 2
    .param p1, "pTextures"    # [Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 98
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->unloadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 98
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized updateTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 118
    .local v6, "texturesManaged":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    iget-object v5, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    .line 119
    .local v5, "texturesLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    iget-object v7, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    .line 120
    .local v7, "texturesToBeLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    iget-object v9, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    .line 123
    .local v9, "texturesToBeUnloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 125
    .local v11, "textursLoadedCount":I
    if-lez v11, :cond_0

    .line 126
    add-int/lit8 v1, v11, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_4

    .line 139
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 141
    .local v8, "texturesToBeLoadedCount":I
    if-lez v8, :cond_1

    .line 142
    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-gez v1, :cond_6

    .line 156
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 158
    .local v10, "texturesToBeUnloadedCount":I
    if-lez v10, :cond_2

    .line 159
    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-gez v1, :cond_8

    .line 170
    .end local v1    # "i":I
    :cond_2
    if-gtz v8, :cond_3

    .line 173
    :cond_3
    monitor-exit p0

    return-void

    .line 127
    .end local v8    # "texturesToBeLoadedCount":I
    .end local v10    # "texturesToBeUnloadedCount":I
    .restart local v1    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 128
    .local v3, "textureToBeReloaded":Lorg/anddev/andengine/opengl/texture/ITexture;
    invoke-interface {v3}, Lorg/anddev/andengine/opengl/texture/ITexture;->isUpdateOnHardwareNeeded()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_5

    .line 130
    :try_start_2
    invoke-interface {v3, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v3    # "textureToBeReloaded":Lorg/anddev/andengine/opengl/texture/ITexture;
    .end local v5    # "texturesLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .end local v6    # "texturesManaged":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .end local v7    # "texturesToBeLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .end local v9    # "texturesToBeUnloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .end local v11    # "textursLoadedCount":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 143
    .restart local v1    # "i":I
    .restart local v5    # "texturesLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .restart local v6    # "texturesManaged":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .restart local v7    # "texturesToBeLoaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .restart local v8    # "texturesToBeLoadedCount":I
    .restart local v9    # "texturesToBeUnloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/ITexture;>;"
    .restart local v11    # "textursLoadedCount":I
    :cond_6
    :try_start_4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 144
    .local v2, "textureToBeLoaded":Lorg/anddev/andengine/opengl/texture/ITexture;
    invoke-interface {v2}, Lorg/anddev/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    if-nez v12, :cond_7

    .line 146
    :try_start_5
    invoke-interface {v2, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    :cond_7
    :goto_4
    :try_start_6
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "textureToBeLoaded":Lorg/anddev/andengine/opengl/texture/ITexture;
    .restart local v10    # "texturesToBeUnloadedCount":I
    :cond_8
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 161
    .local v4, "textureToBeUnloaded":Lorg/anddev/andengine/opengl/texture/ITexture;
    invoke-interface {v4}, Lorg/anddev/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 162
    invoke-interface {v4, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 164
    :cond_9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method
