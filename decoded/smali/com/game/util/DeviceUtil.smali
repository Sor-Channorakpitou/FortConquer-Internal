.class public Lcom/game/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/util/DeviceUtil$DeviceInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/game/util/DeviceUtil$DeviceInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-direct {v0}, Lcom/game/util/DeviceUtil$DeviceInfo;-><init>()V

    .line 32
    .local v0, "info":Lcom/game/util/DeviceUtil$DeviceInfo;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 33
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 34
    const-string v3, "android_id"

    .line 33
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->androidId:Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->imei:Ljava/lang/String;

    .line 36
    iget-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->imei:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 37
    iget-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->androidId:Ljava/lang/String;

    iput-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->imei:Ljava/lang/String;

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/game/util/PackageUtil;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->installedPackages:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/game/util/DeviceUtil$DeviceInfo;->packageName:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method public static getMyPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
