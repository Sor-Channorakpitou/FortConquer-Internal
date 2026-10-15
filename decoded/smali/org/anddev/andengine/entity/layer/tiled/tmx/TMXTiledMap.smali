.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
.super Ljava/lang/Object;
.source "TMXTiledMap.java"

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private final mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGlobalTileIDToTextureRegionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:Ljava/lang/String;

.field private final mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

.field private final mTMXLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXObjectGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXTileSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileColumns:I

.field private final mTileHeight:I

.field private final mTileWidth:I

.field private final mTilesRows:I


# direct methods
.method constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "pAttributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXLayers:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXObjectGroups:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTextureRegionCache:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    .line 53
    const-string v0, ""

    const-string v1, "orientation"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    const-string v1, "orthogonal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orientation: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const-string v0, "width"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileColumns:I

    .line 58
    const-string v0, "height"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTilesRows:I

    .line 59
    const-string v0, "tilewidth"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileWidth:I

    .line 60
    const-string v0, "tileheight"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileHeight:I

    .line 62
    new-instance v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    const v1, 0x88e4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;-><init>(IZ)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .line 63
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->update(FF)V

    .line 64
    return-void
.end method


# virtual methods
.method addTMXLayer(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;)V
    .locals 1
    .param p1, "pTMXLayer"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method addTMXObjectGroup(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;)V
    .locals 1
    .param p1, "pTMXObjectGroup"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXObjectGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method addTMXTileSet(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;)V
    .locals 1
    .param p1, "pTMXTileSet"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addTMXTiledMapProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;)V
    .locals 1
    .param p1, "pTMXTiledMapProperty"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->unloadFromActiveBufferObjectManager()V

    .line 156
    :cond_0
    return-void
.end method

.method public final getHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTilesRows:I

    return v0
.end method

.method public final getOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    return-object v0
.end method

.method public getTMXLayers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXLayers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTMXObjectGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXObjectGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTMXTileProperties(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 8
    .param p1, "pGlobalTileID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;

    .line 165
    .local v1, "globalTileIDToTMXTilePropertiesCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;>;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    .line 166
    .local v0, "cachedTMXTileProperties":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;, "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;>;"
    if-eqz v0, :cond_0

    .line 174
    .end local v0    # "cachedTMXTileProperties":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;, "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;>;"
    :goto_0
    return-object v0

    .line 169
    .restart local v0    # "cachedTMXTileProperties":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;, "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;>;"
    :cond_0
    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    .line 171
    .local v4, "tmxTileSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_1

    .line 177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No TMXTileProperties found for pGlobalTileID="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    .line 173
    .local v3, "tmxTileSet":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    invoke-virtual {v3}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getFirstGlobalTileID()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 174
    invoke-virtual {v3, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getTMXTilePropertiesFromGlobalTileID(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getTMXTilePropertiesByGlobalTileID(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .param p1, "pGlobalTileID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getTMXTileSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTMXTiledMapProperties()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 9
    .param p1, "pGlobalTileID"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTextureRegionCache:Landroid/util/SparseArray;

    .line 184
    .local v1, "globalTileIDToTextureRegionCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/opengl/texture/region/TextureRegion;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 185
    .local v0, "cachedTextureRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    if-eqz v0, :cond_0

    .line 196
    .end local v0    # "cachedTextureRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "cachedTextureRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    :cond_0
    iget-object v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    .line 190
    .local v5, "tmxTileSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_1

    .line 199
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No TextureRegion found for pGlobalTileID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 191
    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    .line 192
    .local v4, "tmxTileSet":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    invoke-virtual {v4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getFirstGlobalTileID()I

    move-result v6

    if-lt p1, v6, :cond_2

    .line 193
    invoke-virtual {v4, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v3

    .line 195
    .local v3, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v3

    .line 196
    goto :goto_0

    .line 190
    .end local v3    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public final getTileColumns()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileColumns:I

    return v0
.end method

.method public final getTileHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileHeight:I

    return v0
.end method

.method public final getTileRows()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTilesRows:I

    return v0
.end method

.method public final getTileWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileWidth:I

    return v0
.end method

.method public final getWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileColumns:I

    return v0
.end method
