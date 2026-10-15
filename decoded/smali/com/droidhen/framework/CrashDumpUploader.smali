.class public Lcom/droidhen/framework/CrashDumpUploader;
.super Ljava/lang/Object;
.source "CrashDumpUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;,
        Lcom/droidhen/framework/CrashDumpUploader$CrashDumpUploaderHolder;
    }
.end annotation


# static fields
.field private static final CRASH_DUMP_EXT:Ljava/lang/String; = ".dmp"

.field private static final CRASH_DUMP_ZIP_EXT:Ljava/lang/String; = ".zip"


# instance fields
.field private _isInited:Z

.field private _params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _pool:Ljava/util/concurrent/ExecutorService;

.field private _searchDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/framework/CrashDumpUploader;->_pool:Ljava/util/concurrent/ExecutorService;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/framework/CrashDumpUploader;->_isInited:Z

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/framework/CrashDumpUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/droidhen/framework/CrashDumpUploader;->_searchDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/droidhen/framework/CrashDumpUploader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/droidhen/framework/CrashDumpUploader;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/droidhen/framework/CrashDumpUploader$CrashDumpUploaderHolder;->INSTANCE:Lcom/droidhen/framework/CrashDumpUploader;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkAndUpload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_isInited:Z

    if-nez v4, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 45
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_searchDir:Ljava/lang/String;

    .line 46
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 49
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 53
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 54
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    .line 58
    :goto_1
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "project"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    if-eqz v2, :cond_0

    .line 60
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "versionCode"

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "versionName"

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "brand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "manufacturer"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    const-string v5, "androidSdkInt"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_isInited:Z

    .line 70
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_pool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;

    invoke-direct {v5, p0, p2}, Lcom/droidhen/framework/CrashDumpUploader$CheckAndUploadService;-><init>(Lcom/droidhen/framework/CrashDumpUploader;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :goto_2
    monitor-exit p0

    return-void

    .line 56
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/droidhen/framework/CrashDumpUploader;->_params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 71
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 50
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
