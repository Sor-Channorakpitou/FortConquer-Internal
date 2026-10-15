.class Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;
.super Ljava/lang/Object;
.source "PlistComposedTextureRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/andplugin/PlistComposedTextureRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitInfo"
.end annotation


# instance fields
.field final itemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final regionH:I

.field final regionW:I

.field final regionX:I

.field final regionY:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionX:I

    .line 46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionY:I

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    add-int/2addr v1, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionW:I

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v1, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    add-int/2addr v1, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    iget v0, v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionH:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIII)V
    .locals 0
    .param p2, "regionX"    # I
    .param p3, "regionY"    # I
    .param p4, "regionW"    # I
    .param p5, "regionH"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->itemInfos:Ljava/util/List;

    .line 55
    iput p2, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionX:I

    .line 56
    iput p3, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionY:I

    .line 57
    iput p4, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionW:I

    .line 58
    iput p5, p0, Lcom/droidhen/andplugin/PlistComposedTextureRegion$InitInfo;->regionH:I

    .line 59
    return-void
.end method
