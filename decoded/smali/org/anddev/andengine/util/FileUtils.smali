.class public Lorg/anddev/andengine/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "pIn"    # Ljava/io/File;
    .param p1, "pOut"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, v1}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 149
    return-void

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 148
    throw v2
.end method

.method public static copyToExternalStorage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pSourceResourceID"    # I
    .param p2, "pFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/anddev/andengine/util/FileUtils;->copyToExternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static copyToExternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .param p2, "pFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lorg/anddev/andengine/util/FileUtils;->isExternalStorageWriteable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {p0, p2}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "absoluteFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/anddev/andengine/util/StreamUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 73
    return-void

    .line 71
    .end local v0    # "absoluteFilePath":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "External Storage is not writeable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyToExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pSourceAssetPath"    # Ljava/lang/String;
    .param p2, "pFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/anddev/andengine/util/FileUtils;->copyToExternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static copyToInternalStorage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pSourceResourceID"    # I
    .param p2, "pFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/anddev/andengine/util/FileUtils;->copyToInternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static copyToInternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .param p2, "pFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/StreamUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 64
    return-void
.end method

.method public static copyToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pSourceAssetPath"    # Ljava/lang/String;
    .param p2, "pFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/anddev/andengine/util/FileUtils;->copyToInternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 6
    .param p0, "pFileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "children":[Ljava/lang/String;
    array-length v1, v0

    .line 163
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 172
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "childrenCount":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    :goto_1
    return v4

    .line 164
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "childrenCount":I
    .restart local v2    # "i":I
    :cond_1
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/anddev/andengine/util/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v3

    .line 165
    .local v3, "success":Z
    if-nez v3, :cond_2

    .line 166
    const/4 v4, 0x0

    goto :goto_1

    .line 163
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ensureDirectoriesExistOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pDirectory"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->isDirectoryExistingOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    .line 100
    :cond_0
    invoke-static {}, Lorg/anddev/andengine/util/FileUtils;->isExternalStorageWriteable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "absoluteDirectoryPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0

    .line 104
    .end local v0    # "absoluteDirectoryPath":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "External Storage is not writeable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilePath"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsolutePathOnInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilePath"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryListOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "absoluteFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDirectoryListOnExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilePath"    # Ljava/lang/String;
    .param p2, "pFilenameFilter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "absoluteFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDirectoryExistingOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pDirectory"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lorg/anddev/andengine/util/FileUtils;->isExternalStorageReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "absoluteFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    .end local v0    # "absoluteFilePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "External Storage is not readable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageWriteable()Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFileExistingOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilePath"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lorg/anddev/andengine/util/FileUtils;->isExternalStorageReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "absoluteFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    .end local v0    # "absoluteFilePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "External Storage is not readable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static openOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p0, p1}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "absoluteFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
