.class public Lcom/droidhen/andplugin/PlistTextureRegionFactory;
.super Ljava/lang/Object;
.source "PlistTextureRegionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;IIII)Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .locals 7
    .param p0, "plistTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p1, "regionX"    # I
    .param p2, "regionY"    # I
    .param p3, "regionW"    # I
    .param p4, "regionH"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v2, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;-><init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;IIII)V

    return-object v0
.end method

.method public static varargs createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .locals 2
    .param p0, "plistTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p1, "itemNames"    # [Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v1, p0, Lcom/droidhen/andplugin/PlistTexture;->_info:Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;-><init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;
    .locals 2
    .param p0, "plistTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/PlistTexture;->getItem(Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-result-object v0

    .line 26
    .local v0, "itemInfo":Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    new-instance v1, Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v1, p0, v0}, Lcom/droidhen/andplugin/PlistTextureRegion;-><init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;)V

    return-object v1
.end method

.method public static createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;
    .locals 2
    .param p0, "plistTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "pTileColumns"    # I
    .param p3, "pTileRows"    # I

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/PlistTexture;->getItem(Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-result-object v0

    .line 10
    .local v0, "itemInfo":Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    new-instance v1, Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;-><init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;II)V

    return-object v1
.end method
