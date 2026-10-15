.class public final Lcom/droidhen/andplugin/PlistComposedTextureRegion;
.super Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
.source "PlistComposedTextureRegion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;
    }
.end annotation


# static fields
.field private static final sInfos:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private index:I

.field private mItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;IIII)V
    .locals 8
    .param p1, "pTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p2, "info"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .param p3, "regionX"    # I
    .param p4, "regionY"    # I
    .param p5, "regionW"    # I
    .param p6, "regionH"    # I

    .prologue
    .line 73
    invoke-static/range {p1 .. p6}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->processTexture(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;IIII)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    .line 74
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v2, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionX:I

    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v3, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionY:I

    .line 75
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v4, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionW:I

    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v5, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionH:I

    .line 76
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    .line 77
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    .line 78
    return-void
.end method

.method public varargs constructor <init>(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p2, "info"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .param p3, "itemNames"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1, p2, p3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->processTexture(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v2, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionX:I

    .line 106
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v3, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionY:I

    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v4, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionW:I

    .line 107
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget v5, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionH:I

    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    .line 108
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    .line 109
    return-void
.end method

.method private constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIILjava/util/List;)V
    .locals 8
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "regionX"    # I
    .param p3, "regionY"    # I
    .param p4, "regionW"    # I
    .param p5, "regionH"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p6, "mItemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    .line 92
    iput-object p6, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    .line 93
    return-void
.end method

.method private static processTexture(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;IIII)Lcom/droidhen/andplugin/PlistTexture;
    .locals 5
    .param p0, "pTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p1, "info"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .param p2, "regionX"    # I
    .param p3, "regionY"    # I
    .param p4, "regionW"    # I
    .param p5, "regionH"    # I

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "_itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    iget-object v3, p1, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->itemCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 129
    sget-object v3, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    new-instance v4, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    invoke-direct {v4, v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 130
    return-object p0

    .line 124
    :cond_1
    iget-object v3, p1, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->itemCache:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 125
    .local v1, "item":Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    iget v3, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    if-lt v3, p2, :cond_0

    iget v3, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    add-int v4, p2, p4

    if-gt v3, v4, :cond_0

    iget v3, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    if-lt v3, p3, :cond_0

    iget v3, v1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    add-int v4, p3, p5

    if-gt v3, v4, :cond_0

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static processTexture(Lcom/droidhen/andplugin/PlistTexture;Lcom/droidhen/andplugin/PlistCache$ImageInfo;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTexture;
    .locals 12
    .param p0, "pTexture"    # Lcom/droidhen/andplugin/PlistTexture;
    .param p1, "info"    # Lcom/droidhen/andplugin/PlistCache$ImageInfo;
    .param p2, "itemNames"    # [Ljava/lang/String;

    .prologue
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "_itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    const/4 v2, -0x1

    .line 145
    .local v2, "sx":I
    const/4 v3, -0x1

    .line 146
    .local v3, "sy":I
    const/4 v6, -0x1

    .line 147
    .local v6, "ex":I
    const/4 v7, -0x1

    .line 148
    .local v7, "ey":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p2

    if-lt v8, v0, :cond_0

    .line 165
    sget-object v11, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    sub-int v4, v6, v2

    sub-int v5, v7, v3

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;-><init>(Ljava/util/List;IIII)V

    invoke-virtual {v11, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 166
    return-object p0

    .line 149
    :cond_0
    aget-object v10, p2, v8

    .line 150
    .local v10, "name":Ljava/lang/String;
    iget-object v0, p1, Lcom/droidhen/andplugin/PlistCache$ImageInfo;->itemCache:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .line 151
    .local v9, "item":Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    if-ltz v2, :cond_1

    iget v0, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    if-le v2, v0, :cond_2

    .line 152
    :cond_1
    iget v2, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    .line 154
    :cond_2
    if-ltz v3, :cond_3

    iget v0, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    if-le v3, v0, :cond_4

    .line 155
    :cond_3
    iget v3, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    .line 157
    :cond_4
    if-ltz v6, :cond_5

    iget v0, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    iget v4, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    add-int/2addr v0, v4

    if-ge v6, v0, :cond_6

    .line 158
    :cond_5
    iget v0, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    iget v4, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    add-int v6, v0, v4

    .line 160
    :cond_6
    if-ltz v7, :cond_7

    iget v0, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iget v4, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    add-int/2addr v0, v4

    if-ge v7, v0, :cond_8

    .line 161
    :cond_7
    iget v0, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iget v4, v9, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    add-int v7, v0, v4

    .line 163
    :cond_8
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cloneList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "pItemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    monitor-enter p1

    .line 279
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "_itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 284
    monitor-exit p1

    return-object v0

    .line 282
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->clone()Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "_itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .locals 7

    .prologue
    .line 272
    sget-object v1, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    new-instance v2, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v3, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 273
    new-instance v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v1

    iget v2, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mTexturePositionX:I

    iget v3, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mTexturePositionY:I

    iget v4, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mWidth:I

    iget v5, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mHeight:I

    iget-object v6, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIILjava/util/List;)V

    .line 274
    .local v0, "copy":Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInfo()Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    return-object v0
.end method

.method public getCurrentTileColumn()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentTileIndex()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    return v0
.end method

.method public getCurrentTileRow()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public getRealHeight()I
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    .line 201
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    goto :goto_0
.end method

.method public getRealWidth()I
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    goto :goto_0
.end method

.method public getTextureCoordinateX1()F
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTexturePositionOfCurrentTileX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateX2()F
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTexturePositionOfCurrentTileX()I

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getRealWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateY1()F
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTexturePositionOfCurrentTileY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateY2()F
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTexturePositionOfCurrentTileY()I

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getRealHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTexturePositionOfCurrentTileX()I
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    .line 255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    goto :goto_0
.end method

.method public getTexturePositionOfCurrentTileY()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    .line 263
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    goto :goto_0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTileHeight()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    goto :goto_0
.end method

.method public getTileWidth()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->sInfos:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;

    iget-object v0, v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->mItemInfos:Ljava/util/List;

    iget v1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    goto :goto_0
.end method

.method public setCurrentTileIndex(I)V
    .locals 0
    .param p1, "pTileIndex"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->index:I

    .line 247
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->updateTextureRegionBuffer()V

    .line 248
    return-void
.end method

.method public setCurrentTileIndex(II)V
    .locals 1
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 241
    mul-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->setCurrentTileIndex(I)V

    .line 242
    return-void
.end method
