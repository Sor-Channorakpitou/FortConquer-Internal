.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;
.super Ljava/lang/Object;
.source "TMXLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;

    .prologue
    .line 46
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p3, "pTMXTilePropertyListener"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    .prologue
    .line 54
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p3, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p3, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .param p4, "pTMXTilePropertyListener"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    .line 60
    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 61
    iput-object p4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    .line 62
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    .locals 10
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 87
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 89
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 90
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v4, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;

    iget-object v6, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iget-object v8, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iget-object v9, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    .line 91
    .local v4, "tmxParser":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;
    invoke-interface {v5, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 93
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 95
    invoke-virtual {v4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->getTMXTiledMap()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 100
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "tmxParser":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v6

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;

    invoke-direct {v6, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 98
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "pe":Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v6, 0x0

    goto :goto_0

    .line 101
    .end local v1    # "pe":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;

    invoke-direct {v6, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public loadFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    .locals 4
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAssetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->load(Ljava/io/InputStream;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load TMXTiledMap from asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
