.class public Lcom/game/share/ShareFileUtil;
.super Ljava/lang/Object;
.source "ShareFileUtil.java"


# static fields
.field private static final FILE_FOLDER:Ljava/lang/String; = "gamepromote/promptImgs/"

.field private static final FILE_NOMEDIA:Ljava/lang/String; = ".nomedia"

.field private static _isChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 93
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getShareFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileInAsset"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "gamepromote/promptImgs/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v10, "tempf":Ljava/io/File;
    sget-boolean v11, Lcom/game/share/ShareFileUtil;->_isChecked:Z

    if-eqz v11, :cond_0

    .line 47
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 48
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 87
    .end local v10    # "tempf":Ljava/io/File;
    :goto_0
    return-object v11

    .line 52
    .restart local v10    # "tempf":Ljava/io/File;
    :cond_0
    const/4 v11, 0x1

    sput-boolean v11, Lcom/game/share/ShareFileUtil;->_isChecked:Z

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 54
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 55
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 56
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 57
    .local v9, "sourceSize":I
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v7, "is2":Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 59
    .local v4, "desSize":I
    invoke-static {v7}, Lcom/game/share/ShareFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    if-ne v9, v4, :cond_1

    .line 61
    invoke-static {v6}, Lcom/game/share/ShareFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 69
    .end local v4    # "desSize":I
    .end local v7    # "is2":Ljava/io/InputStream;
    .end local v9    # "sourceSize":I
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 70
    invoke-static {}, Lcom/game/share/ShareFileUtil;->prepareDirectory()V

    .line 72
    const/16 v11, 0x1000

    new-array v3, v11, [B

    .line 73
    .local v3, "buffer":[B
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v11, 0x2000

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 74
    .local v1, "bin":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v2, v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 75
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    const/4 v8, -0x1

    .line 76
    .local v8, "readed":I
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_4

    .line 79
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 80
    invoke-static {v1}, Lcom/game/share/ShareFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v2}, Lcom/game/share/ShareFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v8    # "readed":I
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 77
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v8    # "readed":I
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "readed":I
    .end local v10    # "tempf":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 86
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private static prepareDirectory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "gamepromote/promptImgs/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .local v0, "parent":Ljava/io/File;
    invoke-static {v0}, Lcom/game/share/ShareFileUtil;->prepareNoMediaDirectory(Ljava/io/File;)V

    .line 27
    return-void
.end method

.method public static prepareNoMediaDirectory(Ljava/io/File;)V
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v0, "noMedia":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 41
    :cond_1
    return-void

    .line 32
    .end local v0    # "noMedia":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method
