.class public final Lcom/tapjoy/internal/fy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/tapjoy/internal/fy;


# instance fields
.field private final c:Lcom/tapjoy/internal/gl$l$a;

.field private final d:Lcom/tapjoy/internal/gl$a$a;

.field private final e:Lcom/tapjoy/internal/gl$x$a;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/tapjoy/internal/gf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/gf;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/tapjoy/internal/gi;->a()V

    .line 74
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->M()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    .line 75
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->o()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    .line 76
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->ac()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    const-string v3, "11.1.0/Android"

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->k(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    const-string v3, "Android"

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l$a;->h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 87
    iput-object v3, p0, Lcom/tapjoy/internal/fy;->f:Landroid/content/Context;

    .line 89
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "9774d56d682e549c"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {v0}, Lcom/tapjoy/internal/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    if-nez v0, :cond_0

    .line 91
    invoke-static {v3}, Lcom/tapjoy/internal/w;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 92
    new-instance v5, Ljava/io/File;

    invoke-static {v3}, Lcom/tapjoy/internal/fv;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v6, "deviceid"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_17

    new-instance v0, Ljava/io/File;

    const-string v6, ".io.5rocks"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-static {v5, v0}, Lcom/tapjoy/internal/ab;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/gl$l$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 98
    invoke-static {v3}, Lcom/tapjoy/internal/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    iget-object v4, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/gl$l$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 103
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 104
    const-string v0, "phone"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 106
    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-static {v5}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/gl$l$a;->l(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 113
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v5}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/gl$l$a;->m(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 119
    :cond_3
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 120
    if-nez v5, :cond_4

    .line 122
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 124
    iget-object v5, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    invoke-virtual {v5, v0}, Lcom/tapjoy/internal/gl$l$a;->n(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :cond_4
    :goto_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gl$l$a;->i(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 137
    iget-object v3, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    invoke-static {v4, v0}, Lcom/tapjoy/internal/af;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-lez v6, :cond_5

    aget-object v1, v5, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/cn;->a([B)[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Lcom/tapjoy/internal/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/gl$l$a;->j(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 139
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-static {v4, v0}, Lcom/tapjoy/internal/af;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/gl$a$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a$a;

    .line 140
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-static {v4, v0}, Lcom/tapjoy/internal/af;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/gl$a$a;->a(I)Lcom/tapjoy/internal/gl$a$a;

    .line 142
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 144
    iget-object v3, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/gl$a$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a$a;

    .line 147
    :cond_6
    invoke-static {v4, v0}, Lcom/tapjoy/internal/fy;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 149
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$a$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a$a;

    .line 152
    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    .line 154
    iput-object p2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->c:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 11.1.0/Android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$l$a;->k(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gf;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    iget-object v4, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v4, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "it"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-nez v5, :cond_b

    iget-object v0, v4, Lcom/tapjoy/internal/gf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/internal/af;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-nez v5, :cond_a

    iget-object v0, v4, Lcom/tapjoy/internal/gf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-nez v5, :cond_a

    new-instance v0, Ljava/io/File;

    iget-object v1, v4, Lcom/tapjoy/internal/gf;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tapjoy/internal/af;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-nez v5, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_a
    iget-object v4, v4, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "it"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(J)Lcom/tapjoy/internal/gl$x$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/tapjoy/internal/fy;->a(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/gl$x$a;->a(I)Lcom/tapjoy/internal/gl$x$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    const/16 v3, 0x1e

    invoke-static {v3, v0}, Lcom/tapjoy/internal/fy;->a(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->b(I)Lcom/tapjoy/internal/gl$x$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->e(I)Lcom/tapjoy/internal/gl$x$a;

    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->b(J)Lcom/tapjoy/internal/gl$x$a;

    :cond_d
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-lez v3, :cond_e

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->c(J)Lcom/tapjoy/internal/gl$x$a;

    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-lez v3, :cond_f

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->d(J)Lcom/tapjoy/internal/gl$x$a;

    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :cond_10
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->f(I)Lcom/tapjoy/internal/gl$x$a;

    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    cmpl-double v3, v0, v10

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(D)Lcom/tapjoy/internal/gl$x$a;

    :cond_12
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-lez v3, :cond_13

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->e(J)Lcom/tapjoy/internal/gl$x$a;

    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    cmpl-double v3, v0, v10

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->b(D)Lcom/tapjoy/internal/gl$x$a;

    :cond_14
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v1, 0x2

    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/gl$u;->a([B)Lcom/tapjoy/internal/gl$u;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->h()Lcom/tapjoy/internal/gl$x$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$u;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gl$x$a;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->q:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$a$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a$a;

    :goto_4
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->r:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :goto_5
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->s:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v12, :cond_1a

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->g(I)Lcom/tapjoy/internal/gl$x$a;

    :goto_6
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->t:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v12, :cond_1b

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->h(I)Lcom/tapjoy/internal/gl$x$a;

    :goto_7
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->u:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :goto_8
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->v:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :goto_9
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->w:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :goto_a
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->x:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :goto_b
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->y:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->i(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    :goto_c
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->A:Lcom/tapjoy/internal/j;

    invoke-virtual {v1}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_21

    iget-object v3, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gl$x$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(Z)Lcom/tapjoy/internal/gl$x$a;

    :goto_d
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v1}, Lcom/tapjoy/internal/j;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$x$a;->b(Z)Lcom/tapjoy/internal/gl$x$a;

    .line 157
    new-instance v1, Lcom/tapjoy/internal/fy$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/fy$1;-><init>(Lcom/tapjoy/internal/fy;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_22

    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_23

    new-instance v0, Lcom/tapjoy/internal/y$a;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/y$a;-><init>(Ljava/lang/Runnable;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/y$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    :goto_f
    return-void

    :cond_16
    move-object v0, v1

    .line 89
    goto/16 :goto_0

    :cond_17
    move-object v0, v1

    .line 92
    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a$a;->h()Lcom/tapjoy/internal/gl$a$a;

    goto/16 :goto_4

    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->p()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_5

    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->s()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->v()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_7

    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->y()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_8

    :cond_1d
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->B()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_9

    :cond_1e
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->E()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_a

    :cond_1f
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->H()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_b

    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->K()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_c

    :cond_21
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->k()Lcom/tapjoy/internal/gl$x$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->l()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_d

    :cond_22
    move v0, v2

    .line 157
    goto :goto_e

    :cond_23
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 130
    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method

.method private static a(II)I
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/fy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/fy;
    .locals 3

    .prologue
    .line 54
    const-class v1, Lcom/tapjoy/internal/fy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fy;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/tapjoy/internal/fy;

    invoke-static {p0}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/internal/fy;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gf;)V

    sput-object v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fy;

    .line 57
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    const-string v1, "com.tapjoy.appstore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gf;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Lcom/tapjoy/internal/gl$u;->f()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$u$a;->a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$u$a;->e()Lcom/tapjoy/internal/gl$u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$u;->a()[B

    move-result-object v0

    .line 538
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 540
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->f:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 323
    invoke-static {}, Lcom/tapjoy/internal/fp;->a()Landroid/app/Activity;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$l$a;->a(I)Lcom/tapjoy/internal/gl$l$a;

    .line 328
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$l$a;->b(I)Lcom/tapjoy/internal/gl$l$a;

    .line 329
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$l$a;->c(I)Lcom/tapjoy/internal/gl$l$a;

    .line 330
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 455
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/n;->a(J)V

    .line 456
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->b(J)Lcom/tapjoy/internal/gl$x$a;

    .line 457
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(JD)V
    .locals 3

    .prologue
    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gf;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0, p1, p2}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 506
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v0, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 509
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/gl$x$a;->e(J)Lcom/tapjoy/internal/gl$x$a;

    .line 510
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, p3, p4}, Lcom/tapjoy/internal/gl$x$a;->b(D)Lcom/tapjoy/internal/gl$x$a;

    .line 511
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(JJ)V
    .locals 3

    .prologue
    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gf;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0, p1, p2}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 464
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0, p3, p4}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 467
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/gl$x$a;->c(J)Lcom/tapjoy/internal/gl$x$a;

    .line 468
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, p3, p4}, Lcom/tapjoy/internal/gl$x$a;->d(J)Lcom/tapjoy/internal/gl$x$a;

    .line 469
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gl$x$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    .line 385
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 473
    monitor-enter p0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gf;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 479
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v1, v0}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v2}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v2

    add-double/2addr p2, v2

    .line 481
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v2, v1, p2, p3}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->f(I)Lcom/tapjoy/internal/gl$x$a;

    .line 498
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, p2, p3}, Lcom/tapjoy/internal/gl$x$a;->a(D)Lcom/tapjoy/internal/gl$x$a;

    .line 499
    monitor-exit p0

    return-void

    .line 484
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, v1, p1}, Lcom/tapjoy/internal/q;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->m:Lcom/tapjoy/internal/m;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 488
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v2, v1, p2, p3}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 489
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 490
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$x$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    .line 494
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->i()Lcom/tapjoy/internal/gl$x$a;

    .line 495
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->j()Lcom/tapjoy/internal/gl$x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 579
    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->s:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m;->a(I)V

    .line 582
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->r()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$x$a;->g(I)Lcom/tapjoy/internal/gl$x$a;

    .line 589
    :goto_1
    monitor-exit p0

    return v0

    .line 583
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->q()Z

    move-result v0

    .line 587
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->s()Lcom/tapjoy/internal/gl$x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 612
    monitor-enter p0

    .line 614
    packed-switch p1, :pswitch_data_0

    .line 666
    :goto_0
    :try_start_0
    monitor-exit p0

    return v0

    .line 616
    :pswitch_0
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->u:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 617
    if-eqz p2, :cond_2

    .line 618
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$x$a;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 621
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->w()Z

    move-result v0

    .line 622
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->y()Lcom/tapjoy/internal/gl$x$a;

    goto :goto_0

    .line 626
    :pswitch_1
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->v:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 627
    if-eqz p2, :cond_5

    .line 628
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 629
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$x$a;->f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    goto :goto_0

    .line 631
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->z()Z

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->B()Lcom/tapjoy/internal/gl$x$a;

    goto :goto_0

    .line 636
    :pswitch_2
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->w:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 637
    if-eqz p2, :cond_8

    .line 638
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->C()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v0, v1

    .line 639
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$x$a;->g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_0

    .line 641
    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->C()Z

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->E()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_0

    .line 646
    :pswitch_3
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->x:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 647
    if-eqz p2, :cond_b

    .line 648
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->F()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    move v0, v1

    .line 649
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$x$a;->h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_0

    .line 651
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->F()Z

    move-result v0

    .line 652
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->H()Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_0

    .line 656
    :pswitch_4
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->y:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 657
    if-eqz p2, :cond_e

    .line 658
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->I()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    move v0, v1

    .line 659
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$x$a;->i(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    goto/16 :goto_0

    .line 661
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->I()Z

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->K()Lcom/tapjoy/internal/gl$x$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final a(Ljava/lang/String;JZ)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 515
    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x$a;->g()I

    move-result v3

    move v2, v1

    .line 517
    :goto_0
    if-ge v2, v3, :cond_2

    .line 518
    iget-object v4, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v4, v2}, Lcom/tapjoy/internal/gl$x$a;->c(I)Lcom/tapjoy/internal/gl$t;

    move-result-object v4

    .line 519
    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    if-eqz p4, :cond_0

    .line 521
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-static {v4}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/tapjoy/internal/gl$t$a;->a(J)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$x$a;->a(ILcom/tapjoy/internal/gl$t$a;)Lcom/tapjoy/internal/gl$x$a;

    .line 522
    invoke-direct {p0}, Lcom/tapjoy/internal/fy;->g()V

    .line 523
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :goto_1
    return v0

    .line 525
    :cond_0
    monitor-exit p0

    move v0, v1

    goto :goto_1

    .line 517
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-static {}, Lcom/tapjoy/internal/gl$t;->k()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tapjoy/internal/gl$t$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/tapjoy/internal/gl$t$a;->a(J)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$x$a;->a(Lcom/tapjoy/internal/gl$t$a;)Lcom/tapjoy/internal/gl$x$a;

    .line 531
    invoke-direct {p0}, Lcom/tapjoy/internal/fy;->g()V

    .line 532
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 727
    monitor-enter p0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 729
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->m()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 730
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$x$a;->b(Z)Lcom/tapjoy/internal/gl$x$a;

    .line 731
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 729
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/tapjoy/internal/gl$n;
    .locals 7

    .prologue
    .line 334
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$l$a;->g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$l$a;->h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;

    .line 340
    const/4 v1, 0x0

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    sub-long/2addr v2, v4

    .line 342
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ltz v1, :cond_1

    .line 343
    iget-object v4, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gl$x$a;->c(I)Lcom/tapjoy/internal/gl$t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$t;->h()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    .line 344
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$x$a;->d(I)Lcom/tapjoy/internal/gl$x$a;

    .line 345
    const/4 v0, 0x1

    .line 342
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 348
    :cond_1
    if-eqz v0, :cond_2

    .line 349
    invoke-direct {p0}, Lcom/tapjoy/internal/fy;->g()V

    .line 352
    :cond_2
    invoke-static {}, Lcom/tapjoy/internal/gl$n;->k()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->c:Lcom/tapjoy/internal/gl$l$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$n$a;->a(Lcom/tapjoy/internal/gl$l$a;)Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$n$a;->a(Lcom/tapjoy/internal/gl$a$a;)Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$n$a;->a(Lcom/tapjoy/internal/gl$x$a;)Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$n$a;->e()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)Z
    .locals 2

    .prologue
    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->t:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m;->a(I)V

    .line 600
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->u()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$x$a;->h(I)Lcom/tapjoy/internal/gl$x$a;

    .line 607
    :goto_1
    monitor-exit p0

    return v0

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->t()Z

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->v()Lcom/tapjoy/internal/gl$x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 543
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->q:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 546
    if-eqz p1, :cond_2

    .line 547
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 548
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$a$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a$a;

    .line 553
    :goto_1
    monitor-exit p0

    return v0

    .line 547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a$a;->f()Z

    move-result v0

    .line 551
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gl$a$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a$a;->h()Lcom/tapjoy/internal/gl$a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->r:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 564
    if-eqz p1, :cond_2

    .line 565
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 566
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$x$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    .line 571
    :goto_1
    monitor-exit p0

    return v0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->n()Z

    move-result v0

    .line 569
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->p()Lcom/tapjoy/internal/gl$x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$p;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/16 v12, 0x1e

    const/4 v0, 0x1

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 392
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x64

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v5, v2, v3

    .line 393
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/m;

    invoke-virtual {v2}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 394
    if-eq v2, v5, :cond_6

    .line 395
    if-nez v2, :cond_0

    .line 399
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$x$a;->a(I)Lcom/tapjoy/internal/gl$x$a;

    .line 400
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$x$a;->b(I)Lcom/tapjoy/internal/gl$x$a;

    .line 402
    invoke-static {}, Lcom/tapjoy/internal/gl$p;->k()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v1

    .line 403
    const-string v2, "fq7_0_1"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$p$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;

    .line 404
    const-string v2, "fq30_0_1"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$p$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v5}, Lcom/tapjoy/internal/m;->a(I)V

    .line 432
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v2, v2, Lcom/tapjoy/internal/gf;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/m;->a(I)V

    .line 433
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$p$a;->e()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    :goto_1
    monitor-exit p0

    .line 435
    :goto_2
    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 407
    const/4 v0, 0x7

    invoke-static {v0, v6}, Lcom/tapjoy/internal/fy;->a(II)I

    move-result v7

    .line 408
    const/16 v0, 0x1e

    invoke-static {v0, v6}, Lcom/tapjoy/internal/fy;->a(II)I

    move-result v8

    .line 410
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 411
    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v9, v2, 0x64

    rem-int/lit8 v9, v9, 0x64

    add-int/lit8 v9, v9, -0x1

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v3, v0, v9, v2}, Ljava/util/Calendar;->set(III)V

    .line 412
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 413
    :goto_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v12, :cond_3

    move v0, v4

    .line 420
    :goto_4
    or-int/lit8 v0, v0, 0x1

    .line 422
    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/tapjoy/internal/fy;->a(II)I

    move-result v2

    .line 423
    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/tapjoy/internal/fy;->a(II)I

    move-result v3

    .line 424
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$x$a;->a(I)Lcom/tapjoy/internal/gl$x$a;

    .line 425
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/gl$x$a;->b(I)Lcom/tapjoy/internal/gl$x$a;

    .line 427
    invoke-static {}, Lcom/tapjoy/internal/gl$p;->k()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v1

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "fq7_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$p$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fq30_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$p$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 412
    :pswitch_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    :goto_5
    move v3, v4

    :goto_6
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v10, v10, v0

    if-gez v10, :cond_1

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_2
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v10, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    goto :goto_5

    :cond_1
    if-lez v9, :cond_2

    move v0, v3

    goto/16 :goto_3

    :cond_2
    neg-int v0, v3

    goto/16 :goto_3

    .line 415
    :cond_3
    if-ltz v0, :cond_4

    .line 416
    shl-int v0, v6, v0

    goto/16 :goto_4

    .line 418
    :cond_4
    neg-int v0, v0

    shr-int v0, v6, v0

    goto/16 :goto_4

    .line 433
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 435
    :cond_6
    const/4 v0, 0x0

    monitor-exit p0

    goto/16 :goto_2

    .line 412
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 671
    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 673
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->c(I)Lcom/tapjoy/internal/gl$t;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    invoke-static {v1}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$t$a;->b(J)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$t$a;->e()Lcom/tapjoy/internal/gl$t;

    move-result-object v1

    .line 676
    iget-object v2, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gl$x$a;->a(ILcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$x$a;

    .line 677
    invoke-direct {p0}, Lcom/tapjoy/internal/fy;->g()V

    .line 678
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :goto_1
    return v0

    .line 672
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 681
    :cond_1
    monitor-exit p0

    .line 682
    const/4 v0, 0x0

    goto :goto_1

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 447
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->g:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/m;->a(I)V

    .line 448
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->e(I)Lcom/tapjoy/internal/gl$x$a;

    .line 449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gl$x$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->m()Z

    move-result v0

    return v0
.end method
