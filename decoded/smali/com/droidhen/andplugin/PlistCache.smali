.class public Lcom/droidhen/andplugin/PlistCache;
.super Ljava/lang/Object;
.source "PlistCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/andplugin/PlistCache$ImageInfo;,
        Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/droidhen/andplugin/PlistCache;


# instance fields
.field private _imageInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/droidhen/andplugin/PlistCache$ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/droidhen/andplugin/PlistCache;

    invoke-direct {v0}, Lcom/droidhen/andplugin/PlistCache;-><init>()V

    sput-object v0, Lcom/droidhen/andplugin/PlistCache;->INSTANCE:Lcom/droidhen/andplugin/PlistCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistCache;->_imageInfoCache:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method private findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 99
    .local v3, "nlist":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 100
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 109
    return-object v4

    .line 101
    :cond_0
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 102
    .local v0, "child":Lorg/w3c/dom/Node;
    instance-of v6, v0, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_2

    move-object v1, v0

    .line 103
    check-cast v1, Lorg/w3c/dom/Element;

    .line 104
    .local v1, "ele":Lorg/w3c/dom/Element;
    if-eqz p2, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v1    # "ele":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getImageInfo(Lorg/w3c/dom/Element;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .locals 8
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 80
    new-instance v2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    invoke-direct {v2}, Lcom/droidhen/andplugin/PlistCache$ImageInfo;-><init>()V

    .line 82
    .local v2, "imageInfo":Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/droidhen/andplugin/PlistCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "widthStr":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "heightStr":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->totalWidth:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->totalHeight:I

    .line 93
    return-object v2

    .line 88
    .end local v1    # "heightStr":Ljava/lang/String;
    .end local v3    # "widthStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .restart local v3    # "widthStr":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "heightStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 8
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 113
    const-string v4, ""

    .line 114
    .local v4, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 115
    .local v3, "nlist":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 116
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 123
    return-object v4

    .line 117
    :cond_0
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 118
    .local v0, "child":Lorg/w3c/dom/Node;
    instance-of v6, v0, Lorg/w3c/dom/Text;

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 119
    check-cast v1, Lorg/w3c/dom/Text;

    .line 120
    .local v1, "ele":Lorg/w3c/dom/Text;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .end local v1    # "ele":Lorg/w3c/dom/Text;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseConf(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .locals 6
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p2, "confName"    # Ljava/lang/String;
    .param p3, "imageFullPath"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    invoke-static {p1, p2}, Lcom/droidhen/andplugin/XMLUtil;->openDocument(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 41
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "dict"

    invoke-direct {p0, v4, v5}, Lcom/droidhen/andplugin/PlistCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 42
    .local v3, "root":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v5, "dict"

    invoke-direct {p0, v4, v5}, Lcom/droidhen/andplugin/PlistCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 43
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4}, Lcom/droidhen/andplugin/PlistCache;->getImageInfo(Lorg/w3c/dom/Element;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    move-result-object v2

    .line 44
    .local v2, "imageInfo":Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    iput-object p3, v2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->fileFullPath:Ljava/lang/String;

    .line 45
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4, v2}, Lcom/droidhen/andplugin/PlistCache;->parseItemInfo(Lorg/w3c/dom/Element;Lcom/droidhen/andplugin/PlistCache$ImageInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object v2

    .line 47
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "imageInfo":Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .end local v3    # "root":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private parseItemInfo(Lorg/w3c/dom/Element;Lcom/droidhen/andplugin/PlistCache$ImageInfo;)V
    .locals 8
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "imageInfo"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-direct {p0, p1, v7}, Lcom/droidhen/andplugin/PlistCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 55
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 77
    return-void

    .line 56
    :cond_0
    new-instance v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-direct {v4}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;-><init>()V

    .line 58
    .local v4, "info":Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->itemName:Ljava/lang/String;

    .line 59
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5, v7}, Lcom/droidhen/andplugin/PlistCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    .line 61
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    .line 63
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    .line 64
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    .line 66
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->offsetX:F

    .line 67
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->offsetY:F

    .line 69
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    .line 71
    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/droidhen/andplugin/PlistCache;->getTextData(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 70
    iput v5, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    .line 73
    iget-object v5, p2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->itemCache:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0
.end method


# virtual methods
.method public initPlistInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .locals 5
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "confName"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v3, p0, Lcom/droidhen/andplugin/PlistCache;->_imageInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    .line 27
    .local v2, "info":Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    if-nez v2, :cond_0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "imageFullPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "confFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/droidhen/andplugin/PlistCache;->parseConf(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistCache$ImageInfo;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/droidhen/andplugin/PlistCache;->_imageInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v0    # "confFullPath":Ljava/lang/String;
    .end local v1    # "imageFullPath":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
