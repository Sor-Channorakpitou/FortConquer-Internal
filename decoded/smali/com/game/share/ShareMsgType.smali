.class public final enum Lcom/game/share/ShareMsgType;
.super Ljava/lang/Enum;
.source "ShareMsgType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/game/share/ShareMsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/game/share/ShareMsgType;

.field public static final enum Empty:Lcom/game/share/ShareMsgType;

.field public static final enum Level:Lcom/game/share/ShareMsgType;

.field public static final enum LevelMode:Lcom/game/share/ShareMsgType;

.field public static final enum Score:Lcom/game/share/ShareMsgType;

.field public static final enum ScoreMode:Lcom/game/share/ShareMsgType;


# instance fields
.field private _strResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/game/share/ShareMsgType;

    const-string v1, "Empty"

    sget v2, Lcom/game/featured/R$string;->share_content:I

    invoke-direct {v0, v1, v3, v2}, Lcom/game/share/ShareMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/game/share/ShareMsgType;->Empty:Lcom/game/share/ShareMsgType;

    .line 14
    new-instance v0, Lcom/game/share/ShareMsgType;

    const-string v1, "Score"

    sget v2, Lcom/game/featured/R$string;->share_content_score:I

    invoke-direct {v0, v1, v4, v2}, Lcom/game/share/ShareMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/game/share/ShareMsgType;->Score:Lcom/game/share/ShareMsgType;

    .line 15
    new-instance v0, Lcom/game/share/ShareMsgType;

    const-string v1, "ScoreMode"

    sget v2, Lcom/game/featured/R$string;->share_content_score_mode:I

    invoke-direct {v0, v1, v5, v2}, Lcom/game/share/ShareMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/game/share/ShareMsgType;->ScoreMode:Lcom/game/share/ShareMsgType;

    .line 16
    new-instance v0, Lcom/game/share/ShareMsgType;

    const-string v1, "Level"

    sget v2, Lcom/game/featured/R$string;->share_content_level:I

    invoke-direct {v0, v1, v6, v2}, Lcom/game/share/ShareMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/game/share/ShareMsgType;->Level:Lcom/game/share/ShareMsgType;

    .line 17
    new-instance v0, Lcom/game/share/ShareMsgType;

    const-string v1, "LevelMode"

    sget v2, Lcom/game/featured/R$string;->share_content_level_mode:I

    invoke-direct {v0, v1, v7, v2}, Lcom/game/share/ShareMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/game/share/ShareMsgType;->LevelMode:Lcom/game/share/ShareMsgType;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/game/share/ShareMsgType;

    sget-object v1, Lcom/game/share/ShareMsgType;->Empty:Lcom/game/share/ShareMsgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/game/share/ShareMsgType;->Score:Lcom/game/share/ShareMsgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/game/share/ShareMsgType;->ScoreMode:Lcom/game/share/ShareMsgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/game/share/ShareMsgType;->Level:Lcom/game/share/ShareMsgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/game/share/ShareMsgType;->LevelMode:Lcom/game/share/ShareMsgType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/game/share/ShareMsgType;->ENUM$VALUES:[Lcom/game/share/ShareMsgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "strResId"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/game/share/ShareMsgType;->_strResId:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/game/share/ShareMsgType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/game/share/ShareMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/game/share/ShareMsgType;

    return-object v0
.end method

.method public static values()[Lcom/game/share/ShareMsgType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/game/share/ShareMsgType;->ENUM$VALUES:[Lcom/game/share/ShareMsgType;

    array-length v1, v0

    new-array v2, v1, [Lcom/game/share/ShareMsgType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public format(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "score"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 27
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v1, ""

    .line 30
    .local v1, "appName":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    .line 29
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 31
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "str1_appName":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 38
    .local v6, "str2_device":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/game/share/PublisherType;->CURRENT:Lcom/game/share/PublisherType;

    invoke-virtual {v9}, Lcom/game/share/PublisherType;->getSharePrefix()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "str3_url":Ljava/lang/String;
    iget v8, p0, Lcom/game/share/ShareMsgType;->_strResId:I

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    .line 41
    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    const/4 v10, 0x4

    aput-object p3, v9, v10

    .line 40
    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "str":Ljava/lang/String;
    return-object v4

    .line 32
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "str1_appName":Ljava/lang/String;
    .end local v6    # "str2_device":Ljava/lang/String;
    .end local v7    # "str3_url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
