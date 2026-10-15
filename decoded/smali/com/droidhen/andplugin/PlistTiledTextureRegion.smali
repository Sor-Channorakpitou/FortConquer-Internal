.class public Lcom/droidhen/andplugin/PlistTiledTextureRegion;
.super Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
.source "PlistTiledTextureRegion.java"


# instance fields
.field private _itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;


# direct methods
.method public constructor <init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;II)V
    .locals 8
    .param p1, "pTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p2, "itemInfo"    # Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    .param p3, "pTileColumns"    # I
    .param p4, "pTileRows"    # I

    .prologue
    .line 11
    iget v2, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    iget v3, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iget v4, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    .line 12
    iget v5, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    .line 13
    iput-object p2, p0, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public xOffset()F
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->xOffset()F

    move-result v0

    return v0
.end method

.method public yOffset()F
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->yOffset()F

    move-result v0

    return v0
.end method
