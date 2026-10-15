.class public Lcom/moreexchange/util/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# static fields
.field private static androidId:Ljava/lang/String;

.field private static androidSdkInt:I

.field private static country:Ljava/lang/String;

.field private static deviceId:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static language:Ljava/lang/String;

.field private static osVersion:Ljava/lang/String;

.field private static sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "1.0.0"

    sput-object v0, Lcom/moreexchange/util/DeviceInformation;->sdkVersion:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAndroidSdkInt()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/moreexchange/util/DeviceInformation;->androidSdkInt:I

    return v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInformation(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 54
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 55
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 57
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->country:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->language:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->androidId:Ljava/lang/String;

    .line 60
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceId:Ljava/lang/String;

    .line 64
    :cond_0
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 65
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->androidId:Ljava/lang/String;

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceId:Ljava/lang/String;

    .line 68
    :cond_1
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 69
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    .line 70
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    .line 73
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 74
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    .line 78
    :cond_3
    sget-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    .line 79
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v2, Lcom/moreexchange/util/DeviceInformation;->osVersion:Ljava/lang/String;

    .line 80
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v2, Lcom/moreexchange/util/DeviceInformation;->androidSdkInt:I

    .line 82
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    return-void
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/moreexchange/util/DeviceInformation;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method
