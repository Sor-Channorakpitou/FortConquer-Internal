.class public Lcom/droidhen/andplugin/PlistTexture;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
.source "PlistTexture.java"


# instance fields
.field _assetMgr:Landroid/content/res/AssetManager;

.field _info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;Lcom/droidhen/andplugin/PlistCache$ImageInfo;)V
    .locals 2
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p2, "info"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    .prologue
    .line 23
    iget v0, p2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->totalWidth:I

    iget v1, p2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->totalHeight:I

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(II)V

    .line 24
    iput-object p1, p0, Lcom/droidhen/andplugin/PlistTexture;->_assetMgr:Landroid/content/res/AssetManager;

    .line 25
    iput-object p2, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/andplugin/PlistTexture;->mUpdateOnHardwareNeeded:Z

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/res/AssetManager;Lcom/droidhen/andplugin/PlistCache$ImageInfo;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 2
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p2, "info"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .param p3, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    iget v0, p2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->totalWidth:I

    iget v1, p2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->totalHeight:I

    invoke-direct {p0, v0, v1, p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 32
    iput-object p1, p0, Lcom/droidhen/andplugin/PlistTexture;->_assetMgr:Landroid/content/res/AssetManager;

    .line 33
    iput-object p2, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/andplugin/PlistTexture;->mUpdateOnHardwareNeeded:Z

    .line 35
    return-void
.end method

.method public static getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTexture;
    .locals 2
    .param p0, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "confName"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v1, Lcom/droidhen/andplugin/PlistCache;->INSTANCE:Lcom/droidhen/andplugin/PlistCache;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/droidhen/andplugin/PlistCache;->initPlistInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    move-result-object v0

    .line 40
    .local v0, "info":Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    new-instance v1, Lcom/droidhen/andplugin/PlistTexture;

    invoke-direct {v1, p0, v0}, Lcom/droidhen/andplugin/PlistTexture;-><init>(Landroid/content/res/AssetManager;Lcom/droidhen/andplugin/PlistCache$ImageInfo;)V

    return-object v1
.end method

.method public static getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;
    .locals 2
    .param p0, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "confName"    # Ljava/lang/String;
    .param p4, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .prologue
    .line 45
    sget-object v1, Lcom/droidhen/andplugin/PlistCache;->INSTANCE:Lcom/droidhen/andplugin/PlistCache;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/droidhen/andplugin/PlistCache;->initPlistInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    move-result-object v0

    .line 46
    .local v0, "info":Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    new-instance v1, Lcom/droidhen/andplugin/PlistTexture;

    invoke-direct {v1, p0, v0, p4}, Lcom/droidhen/andplugin/PlistTexture;-><init>(Landroid/content/res/AssetManager;Lcom/droidhen/andplugin/PlistCache$ImageInfo;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-object v1
.end method

.method private loadBmp(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/droidhen/andplugin/PlistTexture;->_assetMgr:Landroid/content/res/AssetManager;

    iget-object v4, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    iget-object v4, v4, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->fileFullPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 72
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 74
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bitmap decode failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    iget-object v5, v5, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->fileFullPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    const/16 v3, 0xde1

    :try_start_1
    iget v4, p0, Lcom/droidhen/andplugin/PlistTexture;->mHardwareTextureID:I

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 77
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    return-void
.end method


# virtual methods
.method protected bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 55
    iget v0, p0, Lcom/droidhen/andplugin/PlistTexture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->forceBindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 56
    return-void
.end method

.method public getItem(Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    .locals 1
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->itemCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    return-object v0
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 67
    return-void
.end method

.method protected writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/droidhen/andplugin/PlistTexture;->loadBmp(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 61
    return-void
.end method
