.class public Lcom/moreexchange/model/Icon;
.super Ljava/lang/Object;
.source "Icon.java"


# static fields
.field public static final COMPLETE_DOWNLOAD_ICON_BITMAP_MESSAGE:I = 0x1001

.field private static final DIRECTORY_PICTURES:Ljava/lang/String; = "MoreExchange"

.field public static final RECYCLE_ICON_BITMAP_MESSAGE:I = 0x1002


# instance fields
.field private bitmapReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private isDownloadingBitmap:Z

.field mIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/model/Icon;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 30
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moreexchange/model/Icon;->isDownloadingBitmap:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/moreexchange/model/Icon;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 30
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moreexchange/model/Icon;->isDownloadingBitmap:Z

    .line 47
    iput-object p1, p0, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/moreexchange/model/Icon;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/moreexchange/model/Icon;->isDownloadingBitmap:Z

    return-void
.end method

.method static synthetic access$1(Lcom/moreexchange/model/Icon;Ljava/lang/ref/SoftReference;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method static synthetic access$2(Lcom/moreexchange/model/Icon;Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/moreexchange/model/Icon;->writeIcon2File(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private deleteIconFileNameExtention(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "iconFileName"    # Ljava/lang/String;
    .param p2, "extention"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 263
    .local v1, "iconFileNameLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 265
    .local v0, "extentionLength":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    sub-int v3, v1, v0

    if-ne v2, v3, :cond_0

    .line 267
    const/4 v2, 0x0

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 269
    .end local p1    # "iconFileName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static drawIcon(Lcom/moreexchange/model/Icon;Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "icon"    # Lcom/moreexchange/model/Icon;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultImageResource"    # I

    .prologue
    .line 133
    if-eqz p0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/moreexchange/model/Icon;->renderBitmap(Landroid/widget/ImageView;)V

    .line 137
    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getBitmapReference()Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getIconDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/moreexchange/model/Icon;->getSdCardIconPath()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "iconPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/moreexchange/model/Icon;->getInternalStorageIconPath()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    return-object v0
.end method

.method private getInternalStorageIconPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MoreExchange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSdCardIconPath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 228
    .local v2, "externalFilesDir":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v6, "MoreExchange"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "externalFilesDir":Ljava/io/File;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object v5

    .line 242
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "externalFilesDir":Ljava/io/File;
    .restart local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/.nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, "noMediaFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 247
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v3    # "noMediaFile":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 248
    .restart local v3    # "noMediaFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static recycleIcon(Lcom/moreexchange/model/Icon;)V
    .locals 4
    .param p0, "icon"    # Lcom/moreexchange/model/Icon;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getBitmapReference()Ljava/lang/ref/SoftReference;

    move-result-object v1

    .line 61
    .local v1, "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    new-instance v2, Ljava/lang/ref/SoftReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/moreexchange/model/Icon;->setBitmapReference(Ljava/lang/ref/SoftReference;)V

    .line 68
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_0
    return-void
.end method

.method private writeIcon2File(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 195
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getIconFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    const/4 v2, 0x1

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 200
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public downloadIcon(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/moreexchange/model/Icon;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    new-instance v2, Lcom/moreexchange/model/Icon$3;

    invoke-direct {v2, p0, p1}, Lcom/moreexchange/model/Icon$3;-><init>(Lcom/moreexchange/model/Icon;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 179
    return-void
.end method

.method public getBitmapFromFile()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 185
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getIconFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBitmapReference()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public getIconFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "iconFileName":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v2, ".png"

    invoke-direct {p0, v0, v2}, Lcom/moreexchange/model/Icon;->deleteIconFileNameExtention(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, ".jpg"

    invoke-direct {p0, v0, v2}, Lcom/moreexchange/model/Icon;->deleteIconFileNameExtention(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v2, ".jpeg"

    invoke-direct {p0, v0, v2}, Lcom/moreexchange/model/Icon;->deleteIconFileNameExtention(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-direct {p0}, Lcom/moreexchange/model/Icon;->getIconDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isIconDownload()Z
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getIconFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public renderBitmap(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 71
    iget-object v2, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 73
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/moreexchange/model/Icon;->getBitmapFromFile()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-boolean v2, p0, Lcom/moreexchange/model/Icon;->isDownloadingBitmap:Z

    if-nez v2, :cond_0

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moreexchange/model/Icon;->isDownloadingBitmap:Z

    .line 86
    new-instance v1, Lcom/moreexchange/model/Icon$1;

    invoke-direct {v1, p0, p1}, Lcom/moreexchange/model/Icon$1;-><init>(Lcom/moreexchange/model/Icon;Landroid/widget/ImageView;)V

    .line 95
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/moreexchange/model/Icon;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v3, p0, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    new-instance v4, Lcom/moreexchange/model/Icon$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/moreexchange/model/Icon$2;-><init>(Lcom/moreexchange/model/Icon;Landroid/widget/ImageView;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0

    .line 128
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBitmapReference(Ljava/lang/ref/SoftReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/moreexchange/model/Icon;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 39
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/moreexchange/model/Icon;->mIconUrl:Ljava/lang/String;

    .line 56
    return-void
.end method
