.class public Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;
.super Ljava/lang/Object;
.source "DiscountManager.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/kits/DiscountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapTextureAtlasSource"
.end annotation


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field protected oriData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->oriData:[B

    .line 236
    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->bitmap:Landroid/graphics/Bitmap;

    .line 239
    iput-object p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->oriData:[B

    .line 240
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->oriData:[B

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTexturePositionX()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pBitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->oriData:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->oriData:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->bitmap:Landroid/graphics/Bitmap;

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setTexturePositionX(I)V
    .locals 0
    .param p1, "pTexturePositionX"    # I

    .prologue
    .line 254
    return-void
.end method

.method public setTexturePositionY(I)V
    .locals 0
    .param p1, "pTexturePositionY"    # I

    .prologue
    .line 258
    return-void
.end method
