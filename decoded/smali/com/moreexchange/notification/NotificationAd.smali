.class public Lcom/moreexchange/notification/NotificationAd;
.super Ljava/lang/Object;
.source "NotificationAd.java"


# static fields
.field private static final NOTIFICATION_GAP:J = 0x5265c00L

.field private static final NOTIFY_DIRECTORY:Ljava/lang/String; = "droidhen"

.field private static final NOTIFY_FILE:Ljava/lang/String; = "rndata"

.field private static final NOTIFY_TIME:Ljava/lang/String; = "notify.time"

.field private static final SHOW_NOTIFICATION:I = 0x1

.field private static bitmap:Landroid/graphics/Bitmap;

.field private static context:Landroid/content/Context;

.field private static fromPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field private static payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

.field private static payAdvertisers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field

.field private static toPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/notification/NotificationAd;->payAdvertisers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/notification/NotificationAd;->fromPackages:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/notification/NotificationAd;->toPackages:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/moreexchange/notification/NotificationAd$1;

    invoke-direct {v0}, Lcom/moreexchange/notification/NotificationAd$1;-><init>()V

    sput-object v0, Lcom/moreexchange/notification/NotificationAd;->handler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->retriveJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lcom/moreexchange/notification/NotificationAd;->isEnoughTimePast(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/moreexchange/notification/NotificationAd;->payAdvertisers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/moreexchange/notification/NotificationAd;->isNeedNotify(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/moreexchange/model/PayAdvertiser;)V
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/moreexchange/notification/NotificationAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    return-void
.end method

.method static synthetic access$6()Lcom/moreexchange/model/PayAdvertiser;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/moreexchange/notification/NotificationAd;->payAdvertiser:Lcom/moreexchange/model/PayAdvertiser;

    return-object v0
.end method

.method static synthetic access$7()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/moreexchange/notification/NotificationAd;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8()V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->showNotification()V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "passport"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    .local v1, "source":[B
    :goto_0
    return-object v1

    .line 232
    .end local v1    # "source":[B
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "source":[B
    goto :goto_0
.end method

.method public static initNotificationAd()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/moreexchange/notification/NotificationAd$2;

    invoke-direct {v1}, Lcom/moreexchange/notification/NotificationAd$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method private static isEnoughTimePast(Lorg/json/JSONObject;)Z
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 208
    if-nez p0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v2

    .line 212
    :cond_1
    const-string v3, "notify.time"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 214
    .local v0, "timestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isNeedNotify(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    .line 218
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, "notifyId":I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static popupNotification(Lcom/moreexchange/model/PayAdvertiser;)V
    .locals 13
    .param p0, "payAdvertiser"    # Lcom/moreexchange/model/PayAdvertiser;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getAppIcon()Lcom/moreexchange/model/Icon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/moreexchange/model/Icon;->getBitmapFromFile()Landroid/graphics/Bitmap;

    move-result-object v9

    sput-object v9, Lcom/moreexchange/notification/NotificationAd;->bitmap:Landroid/graphics/Bitmap;

    .line 127
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->bitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v4, 0x0

    .line 132
    .local v4, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getAppUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v3, "intent":Landroid/content/Intent;
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    invoke-static {v9, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 134
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .local v6, "osVersion":I
    const/16 v9, 0x10

    if-lt v6, v9, :cond_2

    .line 137
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v9, Lcom/moreexchange/R$drawable;->r_icon:I

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    sget-object v10, Lcom/moreexchange/notification/NotificationAd;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 140
    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 141
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_0

    .line 158
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_1
    iget v9, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 161
    :try_start_0
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    .line 162
    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    check-cast v5, Landroid/app/NotificationManager;

    .line 164
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/4 v9, 0x1

    invoke-virtual {v5, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :goto_2
    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/moreexchange/notification/NotificationAd;->saveNotify(Ljava/lang/String;I)V

    .line 171
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->fromPackages:Ljava/util/List;

    sget-object v10, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->toPackages:Ljava/util/List;

    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :try_start_1
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->fromPackages:Ljava/util/List;

    sget-object v10, Lcom/moreexchange/notification/NotificationAd;->toPackages:Ljava/util/List;

    sget-object v11, Lcom/moreexchange/command/Command$AdType;->NOTIFICATION:Lcom/moreexchange/command/Command$AdType;

    invoke-static {v9, v10, v11}, Lcom/moreexchange/command/Command;->shownAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    :goto_3
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->fromPackages:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 183
    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->toPackages:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 147
    :cond_2
    new-instance v4, Landroid/app/Notification;

    .end local v4    # "notification":Landroid/app/Notification;
    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 148
    .restart local v4    # "notification":Landroid/app/Notification;
    new-instance v8, Landroid/widget/RemoteViews;

    sget-object v9, Lcom/moreexchange/notification/NotificationAd;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/moreexchange/R$layout;->r_statusbar:I

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 150
    .local v8, "view":Landroid/widget/RemoteViews;
    sget v9, Lcom/moreexchange/R$id;->title:I

    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    sget v9, Lcom/moreexchange/R$id;->description:I

    invoke-virtual {p0}, Lcom/moreexchange/model/PayAdvertiser;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    sget v9, Lcom/moreexchange/R$id;->icon:I

    sget-object v10, Lcom/moreexchange/notification/NotificationAd;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 153
    iput-object v8, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 154
    sget v9, Lcom/moreexchange/R$drawable;->r_icon:I

    iput v9, v4, Landroid/app/Notification;->icon:I

    .line 155
    iput-object v1, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 165
    .end local v8    # "view":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v7

    .line 166
    .local v7, "t":Ljava/lang/Throwable;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 176
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 178
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 179
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private static retriveJSONObject()Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 285
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 287
    .local v0, "externalFilesDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v8, "droidhen"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v8, "rndata"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v1, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 298
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 300
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "line":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-static {v3}, Lcom/moreexchange/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 304
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    invoke-static {v5}, Lcom/moreexchange/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 315
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v8

    .line 305
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 306
    .local v7, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    invoke-static {v4}, Lcom/moreexchange/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 307
    goto :goto_0

    .line 308
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    .line 309
    :goto_2
    invoke-static {v4}, Lcom/moreexchange/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 310
    throw v8

    :cond_0
    move-object v8, v9

    .line 312
    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    move-object v8, v9

    .line 315
    goto :goto_0

    .line 308
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 305
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static save(Lorg/json/JSONObject;)V
    .locals 10
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 241
    const/4 v7, 0x0

    .line 244
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/moreexchange/notification/NotificationAd;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 245
    .local v4, "source":[B
    invoke-static {v4}, Lcom/moreexchange/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "encode":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 248
    .local v2, "externalFilesDir":Ljava/io/File;
    if-eqz v2, :cond_2

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v9, "droidhen"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 282
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "encode":Ljava/lang/String;
    .end local v2    # "externalFilesDir":Ljava/io/File;
    .end local v4    # "source":[B
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 262
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "encode":Ljava/lang/String;
    .restart local v2    # "externalFilesDir":Ljava/io/File;
    .restart local v4    # "source":[B
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 263
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v9, "rndata"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 269
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 272
    :cond_1
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 281
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "encode":Ljava/lang/String;
    .end local v2    # "externalFilesDir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "source":[B
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :goto_1
    invoke-static {v7}, Lcom/moreexchange/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v6

    .line 278
    .local v6, "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "encode":Ljava/lang/String;
    .restart local v2    # "externalFilesDir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "source":[B
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private static saveNotify(Ljava/lang/String;I)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "notifyId"    # I

    .prologue
    .line 187
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->retriveJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 190
    .local v1, "oldNotifyId":I
    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-le p1, v1, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v3, "notify.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    invoke-static {v0}, Lcom/moreexchange/notification/NotificationAd;->save(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static showNotification()V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->retriveJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/moreexchange/notification/NotificationAd;->isEnoughTimePast(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    sget-object v2, Lcom/moreexchange/notification/NotificationAd;->payAdvertisers:Ljava/util/List;

    sget-object v3, Lcom/moreexchange/notification/NotificationAd;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v3}, Lcom/moreexchange/command/Command;->getNotificationAd(ILjava/util/List;Landroid/os/Handler;)V

    .line 122
    :cond_0
    return-void
.end method
