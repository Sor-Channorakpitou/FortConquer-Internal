.class public Lcom/game/util/SdCardUtil;
.super Ljava/lang/Object;
.source "SdCardUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SdCardUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getFullpathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePathToSdcard"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSdCardAvalaible()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "mounted"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mkdir(Ljava/lang/String;)Z
    .locals 5
    .param p0, "relativePathToSdcard"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {}, Lcom/game/util/SdCardUtil;->isSdCardAvalaible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    const/4 v2, 0x0

    .line 25
    :cond_0
    :goto_0
    return v2

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/game/util/SdCardUtil;->getFullpathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    const/4 v2, 0x1

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 21
    .local v2, "status":Z
    if-nez v2, :cond_0

    .line 22
    const-string v3, "SdCardUtil"

    const-string v4, "create img dir failed"

    invoke-static {v3, v4}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveFile([BLjava/lang/String;)V
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/game/util/SdCardUtil;->isSdCardAvalaible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 52
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    invoke-static {v3}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v4, "SdCardUtil"

    const-string v5, "save featured img failed"

    invoke-static {v4, v5, v0}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v2}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 57
    :goto_2
    invoke-static {v2}, Lcom/game/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 58
    throw v4

    .line 56
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 53
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
