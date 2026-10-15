.class public final Lcom/tapjoy/internal/fx;
.super Lcom/tapjoy/internal/r;
.source "SourceFile"


# static fields
.field private static c:Lcom/tapjoy/internal/fx;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/tapjoy/internal/fx$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/fx$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/r;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/t;)V

    .line 144
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 398
    if-eqz p0, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 400
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 401
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 403
    :try_start_0
    const-string v3, "drawable"

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 410
    :cond_0
    if-eqz v1, :cond_1

    .line 411
    const-string v0, "meta-data of {} invalid"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    sget-boolean v3, Lcom/tapjoy/internal/fs;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "Tapjoy"

    const/4 v4, 0x4

    invoke-static {v4, v3, v0, v1}, Lcom/tapjoy/internal/ad;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    .line 414
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 301
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/tapjoy/TapjoyReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p6, :cond_0

    const-string v0, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v2, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x8000000

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1

    const/high16 v0, 0x10000000

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 302
    if-nez v2, :cond_2

    move-object v0, v1

    .line 328
    :goto_0
    return-object v0

    .line 307
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 311
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 316
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.tapjoy.notification.icon"

    invoke-static {v0, v4, p0}, Lcom/tapjoy/internal/fx;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 317
    if-nez v0, :cond_3

    .line 318
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_7

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 321
    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 322
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 326
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    .line 328
    :cond_5
    new-instance v1, Lcom/tapjoy/internal/a$d;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/a$d;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput v0, v3, Landroid/app/Notification;->icon:I

    iget-object v0, v1, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object p2, v1, Lcom/tapjoy/internal/a$d;->b:Ljava/lang/CharSequence;

    iput-object p3, v1, Lcom/tapjoy/internal/a$d;->c:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/tapjoy/internal/a$d;->d:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Lcom/tapjoy/internal/a$c;

    invoke-direct {v0}, Lcom/tapjoy/internal/a$c;-><init>()V

    iput-object p2, v0, Lcom/tapjoy/internal/a$c;->e:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/tapjoy/internal/a$c;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/a$d;->a(Lcom/tapjoy/internal/a$l;)Lcom/tapjoy/internal/a$d;

    move-result-object v0

    if-eqz p5, :cond_6

    iget-object v1, v0, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    :cond_6
    invoke-static {}, Lcom/tapjoy/internal/a;->a()Lcom/tapjoy/internal/a$f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/a$f;->a(Lcom/tapjoy/internal/a$d;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 318
    :cond_7
    const v0, 0x1080093

    goto :goto_1

    .line 324
    :cond_8
    if-eqz p4, :cond_4

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    goto :goto_2
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/fx;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/tapjoy/internal/fx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/fx;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tapjoy/internal/fx;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/fx;

    .line 42
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/fx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 219
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 282
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 167
    invoke-static {p1}, Lcom/tapjoy/internal/fv;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/fv;->c(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 173
    invoke-virtual {p0}, Lcom/tapjoy/internal/fx;->a()Z

    .line 174
    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v0, v8

    .line 179
    const-string v0, "fiverocks"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    invoke-static {p1}, Lcom/tapjoy/internal/fy;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {p1}, Lcom/tapjoy/internal/fv;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fv;->d(Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return v8

    .line 186
    :cond_1
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 190
    const-string v0, "rich"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 191
    const-string v0, "sound"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 192
    const-string v0, "important"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 193
    const-string v0, "payload"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    const-string v0, "always"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    const-string v9, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v8

    .line 198
    :goto_1
    const-string v9, "repeatable"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 199
    const-string v9, "true"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    move v9, v8

    .line 201
    :goto_2
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/tapjoy/internal/fv;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fv;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :cond_4
    invoke-static {v2}, Lcom/tapjoy/internal/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/tapjoy/internal/fx;->a(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v10}, Lcom/tapjoy/internal/fx;->a(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v11}, Lcom/tapjoy/internal/fx;->a(Ljava/lang/Object;)Z

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/tapjoy/internal/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    .line 208
    invoke-static {p1}, Lcom/tapjoy/internal/fv;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v9}, Lcom/tapjoy/internal/fv;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    move v0, v7

    .line 196
    goto :goto_1

    :cond_6
    move v9, v7

    .line 199
    goto :goto_2

    :cond_7
    move v8, v7

    .line 215
    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 287
    return v2
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 293
    return v1
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Lcom/tapjoy/internal/r;->a([Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method
