.class public Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
.super Ljava/lang/Object;
.source "PlistCache.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/andplugin/PlistCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlistItemInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public height:I

.field public itemName:Ljava/lang/String;

.field public offsetX:F

.field public offsetY:F

.field public originalHeight:I

.field public originalWidth:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    .locals 3

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "copy":Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->clone()Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;)I
    .locals 2
    .param p1, "another"    # Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    .prologue
    .line 148
    iget v0, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iget v1, p1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    if-ne v0, v1, :cond_0

    .line 149
    iget v0, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    iget v1, p1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->x:I

    sub-int/2addr v0, v1

    .line 151
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    iget v1, p1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->y:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->compareTo(Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;)I

    move-result v0

    return v0
.end method

.method public xOffset()F
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->offsetX:F

    iget v1, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalWidth:I

    iget v2, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public yOffset()F
    .locals 3

    .prologue
    .line 143
    iget v0, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->offsetY:F

    neg-float v0, v0

    iget v1, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->originalHeight:I

    iget v2, p0, Lcom/droidhen/andplugin/PlistCache$PlistItemInfo;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
