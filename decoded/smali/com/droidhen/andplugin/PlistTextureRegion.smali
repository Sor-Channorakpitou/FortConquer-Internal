.class public Lcom/droidhen/andplugin/PlistTextureRegion;
.super Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
.source "PlistTextureRegion.java"


# instance fields
.field private _itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;


# direct methods
.method public constructor <init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;)V
    .locals 6
    .param p1, "pTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p2, "itemInfo"    # Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .prologue
    .line 9
    iget v2, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    iget v3, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iget v4, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    .line 10
    iget v5, p2, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 11
    iput-object p2, p0, Lcom/droidhen/andplugin/PlistTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 12
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public xOffset()F
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->xOffset()F

    move-result v0

    return v0
.end method

.method public yOffset()F
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistTextureRegion;->_itemInfo:Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->yOffset()F

    move-result v0

    return v0
.end method
