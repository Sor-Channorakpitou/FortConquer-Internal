.class public Lorg/anddev/andengine/util/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
    }
.end annotation


# static fields
.field private static final BOGOMIPS_PATTERN:Ljava/lang/String; = "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

.field private static final MEMFREE_PATTERN:Ljava/lang/String; = "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

.field private static final MEMTOTAL_PATTERN:Ljava/lang/String; = "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUBogoMips()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v2, "/proc/cpuinfo"

    const-string v3, "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/anddev/andengine/util/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 88
    .local v1, "matchResult":Ljava/util/regex/MatchResult;
    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 89
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    return v2

    .line 91
    :cond_0
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCPUFrequencyCurrent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMax()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMaxScaling()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 171
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMin()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMinScaling()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMemoryFree()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v2, "/proc/meminfo"

    const-string v3, "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/anddev/andengine/util/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 124
    .local v1, "matchResult":Ljava/util/regex/MatchResult;
    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 127
    :cond_0
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getMemoryTotal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v2, "/proc/meminfo"

    const-string v3, "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/anddev/andengine/util/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 106
    .local v1, "matchResult":Ljava/util/regex/MatchResult;
    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 107
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 109
    :cond_0
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;)I
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lorg/anddev/andengine/util/SystemUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public static getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lorg/anddev/andengine/util/SystemUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pFeature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v4, "hasSystemFeature"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    .local v0, "PackageManager_hasSystemFeatures":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    move v2, v3

    .line 73
    .end local v0    # "PackageManager_hasSystemFeatures":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 71
    .restart local v0    # "PackageManager_hasSystemFeatures":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 72
    .end local v0    # "PackageManager_hasSystemFeatures":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    move v2, v3

    .line 73
    goto :goto_0
.end method

.method public static isAndroidVersionOrHigher(I)Z
    .locals 1
    .param p0, "pBuildVersionCode"    # I

    .prologue
    .line 81
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 10
    .param p0, "pSystemFile"    # Ljava/lang/String;
    .param p1, "pPattern"    # Ljava/lang/String;
    .param p2, "pHorizon"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/cat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 179
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 180
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v4, "scanner":Ljava/util/Scanner;
    invoke-virtual {v4, p1, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 183
    .local v2, "matchFound":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v4}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 191
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 184
    return-object v5

    .end local v2    # "matchFound":Z
    :cond_0
    move v2, v5

    .line 182
    goto :goto_0

    .line 186
    .restart local v2    # "matchFound":Z
    :cond_1
    :try_start_1
    new-instance v5, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v5}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v2    # "matchFound":Z
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v5, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 191
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 192
    throw v5
.end method

.method private static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 8
    .param p0, "pSystemFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/cat"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 200
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 201
    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 208
    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 202
    return v4

    .line 203
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v4, v1}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 208
    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 209
    throw v4

    .line 205
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v4, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v4, v1}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
