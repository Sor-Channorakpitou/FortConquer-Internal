.class public Lorg/anddev/andengine/opengl/font/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# instance fields
.field private final mFontsManaged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/font/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadFont(Lorg/anddev/andengine/opengl/font/Font;)V
    .locals 2
    .param p1, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;

    .prologue
    .line 47
    monitor-enter p0

    if-nez p1, :cond_0

    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFont must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadFonts(Lorg/anddev/andengine/opengl/font/FontLibrary;)V
    .locals 1
    .param p1, "pFontLibrary"    # Lorg/anddev/andengine/opengl/font/FontLibrary;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/anddev/andengine/opengl/font/FontLibrary;->loadFonts(Lorg/anddev/andengine/opengl/font/FontManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V
    .locals 2
    .param p1, "pFonts"    # [Lorg/anddev/andengine/opengl/font/Font;

    .prologue
    .line 58
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFont(Lorg/anddev/andengine/opengl/font/Font;)V

    .line 58
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadFonts()V
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 75
    .local v1, "managedFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Font;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/font/Font;->reload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    .end local v1    # "managedFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Font;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateFonts(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 65
    .local v1, "fonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Font;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 66
    .local v0, "fontCount":I
    if-lez v0, :cond_0

    .line 67
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_1

    .line 71
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v3, p1}, Lorg/anddev/andengine/opengl/font/Font;->update(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 64
    .end local v0    # "fontCount":I
    .end local v1    # "fonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Font;>;"
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
