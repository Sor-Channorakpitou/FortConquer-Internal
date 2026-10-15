.class Lcom/tapjoy/internal/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static final t:Ljava/lang/String;


# instance fields
.field private volatile A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile B:Lcom/tapjoy/internal/em;

.field private C:Lcom/tapjoy/internal/ed;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Landroid/location/Location;

.field r:Ljava/util/ArrayList;

.field s:Lcom/tapjoy/internal/ey;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/Context;

.field private y:Ljava/lang/String;

.field private z:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    .line 34
    const-string v0, "2.5-16"

    sput-object v0, Lcom/tapjoy/internal/fd;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->c:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/tapjoy/internal/fd;->f:I

    .line 99
    iput v0, p0, Lcom/tapjoy/internal/fd;->g:I

    .line 100
    iput v0, p0, Lcom/tapjoy/internal/fd;->h:I

    .line 101
    iput v0, p0, Lcom/tapjoy/internal/fd;->i:I

    .line 102
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/String;

    .line 110
    iput v0, p0, Lcom/tapjoy/internal/fd;->n:I

    .line 111
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    .line 115
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->r:Ljava/util/ArrayList;

    .line 117
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    .line 119
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    .line 121
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->y:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    .line 124
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    sget-object v0, Lcom/tapjoy/internal/em;->b:Lcom/tapjoy/internal/em;

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->B:Lcom/tapjoy/internal/em;

    .line 129
    new-instance v0, Lcom/tapjoy/internal/ed;

    invoke-direct {v0}, Lcom/tapjoy/internal/ed;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    .line 130
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/tapjoy/internal/fd;->E:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    .line 138
    iput v1, p0, Lcom/tapjoy/internal/fd;->f:I

    .line 139
    iput v1, p0, Lcom/tapjoy/internal/fd;->g:I

    .line 140
    iput-object v0, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    .line 143
    iput-object v0, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    .line 162
    return-void
.end method

.method final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    .line 236
    return-void
.end method

.method final a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    .line 211
    return-void
.end method

.method final a(Lcom/tapjoy/internal/ed;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    .line 167
    return-void
.end method

.method final a(Lcom/tapjoy/internal/em;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->B:Lcom/tapjoy/internal/em;

    .line 206
    return-void
.end method

.method final a(Lcom/tapjoy/internal/ey;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    .line 226
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    .line 187
    return-void
.end method

.method final a(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 321
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    const-string p2, "TrustDefenderMobileSDK"

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    .line 328
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 330
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    .line 343
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 340
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    return-object v0
.end method

.method final b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string p1, "h.online-metrix.net"

    .line 268
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    .line 277
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    sget-object v1, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid hostname "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Lcom/tapjoy/internal/em;
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatus returns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->B:Lcom/tapjoy/internal/em;

    invoke-virtual {v1}, Lcom/tapjoy/internal/em;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->B:Lcom/tapjoy/internal/em;

    return-object v0
.end method

.method final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 289
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    const-string v1, "Invalid org_id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 292
    :cond_1
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/String;

    .line 293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final d()Lcom/tapjoy/internal/ey;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/String;

    return-object v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0xc19

    iput v0, p0, Lcom/tapjoy/internal/fd;->n:I

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fp/mobile/conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final i()Lcom/tapjoy/internal/ej;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Lcom/tapjoy/internal/ej;

    invoke-direct {v0}, Lcom/tapjoy/internal/ej;-><init>()V

    .line 363
    const-string v1, "org_id"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 364
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 365
    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 366
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 368
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->y:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "api_key"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 373
    :cond_0
    return-object v0
.end method

.method final j()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 384
    sget-object v0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    .line 385
    iget v0, p0, Lcom/tapjoy/internal/fd;->n:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 387
    new-instance v0, Lcom/tapjoy/internal/el$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/el$a;-><init>()V

    .line 388
    invoke-static {v0}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/el$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget v1, v0, Lcom/tapjoy/internal/el$a;->b:I

    iput v1, p0, Lcom/tapjoy/internal/fd;->g:I

    .line 391
    iget v0, v0, Lcom/tapjoy/internal/el$a;->a:I

    iput v0, p0, Lcom/tapjoy/internal/fd;->f:I

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "get time zone"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 401
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/fd;->n:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tapjoy/internal/ez;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-nez v1, :cond_22

    .line 408
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/tapjoy/internal/ez;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v1, v0}, Lcom/tapjoy/internal/ez;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    .line 412
    :goto_1
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v4, "cookie"

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 415
    :cond_3
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 417
    iget-object v2, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/internal/ez;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 421
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 401
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :cond_5
    invoke-static {v2, v0}, Lcom/tapjoy/internal/ez;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    .line 426
    :cond_6
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v4, "LSC"

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 429
    :cond_7
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 431
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/internal/ez;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    .line 432
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v4, "imei"

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 435
    :cond_8
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->c:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 437
    if-nez v1, :cond_9

    .line 438
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/tapjoy/internal/ez;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_9
    if-nez v2, :cond_a

    .line 440
    iget-object v2, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/internal/ez;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 442
    :cond_a
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 444
    :cond_b
    iget-object v3, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/internal/ez;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->c:Ljava/lang/String;

    .line 446
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "Flash"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 450
    :cond_d
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 451
    :cond_f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 452
    :cond_10
    iget v0, p0, Lcom/tapjoy/internal/fd;->n:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/tapjoy/internal/fd;->i:I

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/tapjoy/internal/fd;->h:I

    if-nez v0, :cond_12

    .line 454
    :cond_11
    new-instance v1, Lcom/tapjoy/internal/eh;

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/eh;-><init>(Landroid/view/Display;)V

    .line 455
    invoke-virtual {v1}, Lcom/tapjoy/internal/eh;->a()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/fd;->h:I

    .line 456
    invoke-virtual {v1}, Lcom/tapjoy/internal/eh;->b()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/fd;->i:I

    .line 458
    :cond_12
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "get screen dimensions"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 460
    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 461
    :cond_15
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 462
    :cond_16
    invoke-static {}, Lcom/tapjoy/internal/el;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "get device state"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 465
    :cond_17
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 466
    :cond_19
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 467
    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 469
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/el;->a(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    .line 471
    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "get device fingerprint"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 473
    :cond_1c
    iget v0, p0, Lcom/tapjoy/internal/fd;->n:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->E:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 475
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/ec;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->E:Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "get self hash"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    :cond_1d
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 481
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    invoke-static {v0}, Lcom/tapjoy/internal/el;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    .line 483
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    .line 488
    :cond_1f
    sget-object v0, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fonts gives: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "Get Fontlist"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 491
    :cond_21
    return-void

    :cond_22
    move-object v1, v2

    goto/16 :goto_1
.end method

.method final k()Ljava/util/Map;
    .locals 3

    .prologue
    .line 499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 500
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-object v0
.end method

.method final l()Ljava/util/Map;
    .locals 4

    .prologue
    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 513
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    sget-object v1, Lcom/tapjoy/internal/fd;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting User-Agent to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 521
    const-string v1, "Cookie"

    const-string v2, "thx_guid="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :goto_0
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-object v0

    .line 525
    :cond_1
    const-string v1, "Cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thx_guid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final m()Lcom/tapjoy/internal/ej;
    .locals 9

    .prologue
    .line 546
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->x:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget-object v1, v1, Lcom/tapjoy/internal/ey;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/el;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 549
    const-string v1, ";"

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ex;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v1, "Check URLs"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 553
    :cond_0
    const-string v0, ""

    .line 557
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget v1, v1, Lcom/tapjoy/internal/ey;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget-object v0, v0, Lcom/tapjoy/internal/ey;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tapjoy/internal/el;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v2, "get URLs"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 565
    new-instance v6, Lcom/tapjoy/internal/ej;

    invoke-direct {v6}, Lcom/tapjoy/internal/ej;-><init>()V

    .line 566
    invoke-virtual {v6}, Lcom/tapjoy/internal/ej;->a()V

    .line 568
    const-string v0, "w"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget-object v2, v2, Lcom/tapjoy/internal/ey;->b:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 569
    const-string v0, "c"

    iget v2, p0, Lcom/tapjoy/internal/fd;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 570
    const-string v0, "z"

    iget v2, p0, Lcom/tapjoy/internal/fd;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 571
    const-string v0, "f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tapjoy/internal/fd;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tapjoy/internal/fd;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 572
    const-string v0, "lh"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->j:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 573
    const-string v0, "dr"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->k:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 575
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget-object v0, v0, Lcom/tapjoy/internal/ed;->b:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    const-string v0, "p"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget-object v2, v2, Lcom/tapjoy/internal/ed;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 578
    const-string v0, "pl"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget-object v2, v2, Lcom/tapjoy/internal/ed;->b:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 579
    const-string v0, "ph"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget-object v2, v2, Lcom/tapjoy/internal/ed;->d:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 581
    :cond_2
    const-string v0, "hh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/ex;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 582
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget v0, v0, Lcom/tapjoy/internal/ed;->f:I

    if-lez v0, :cond_3

    .line 584
    const-string v0, "mt"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget-object v2, v2, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 585
    const-string v0, "mn"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->C:Lcom/tapjoy/internal/ed;

    iget v2, v2, Lcom/tapjoy/internal/ed;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 587
    :cond_3
    const-string v0, "mdf"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->l:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 588
    const-string v0, "mds"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->m:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 590
    const-string v0, "imei"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->u:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 593
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 595
    const-string v0, "tdlat"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 596
    const-string v0, "tdlon"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 597
    const-string v0, "tdlacc"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->q:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 600
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/fd;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 602
    const/4 v0, 0x0

    .line 603
    iget-object v2, p0, Lcom/tapjoy/internal/fd;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "aca"

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 607
    const/4 v0, 0x5

    if-lt v3, v0, :cond_a

    .line 608
    :cond_5
    const-string v0, "ah"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->E:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 612
    const-string v0, "la"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget-object v3, v3, Lcom/tapjoy/internal/ey;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 613
    const-string v0, "lq"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->D:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 615
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    const-string v2, "nu"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 617
    const-string v0, "fc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget-object v3, v3, Lcom/tapjoy/internal/ey;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 619
    const-string v0, "ftsn"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->w:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 620
    const-string v0, "fts"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->v:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 621
    const-string v0, "v"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 622
    const-string v0, "o"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 623
    const-string v0, "mf"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 624
    const-string v0, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 625
    const-string v0, "fg"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->c:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 626
    const-string v0, "ls"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 627
    const-string v2, "gr"

    iget-object v0, p0, Lcom/tapjoy/internal/fd;->s:Lcom/tapjoy/internal/ey;

    iget-object v0, v0, Lcom/tapjoy/internal/ey;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_1
    invoke-virtual {v6, v2, v0}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 628
    const-string v0, "grr"

    invoke-virtual {v6, v0, v5}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 630
    const-string v0, "at"

    const-string v2, "agent_mobile"

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 631
    const-string v0, "av"

    sget-object v2, Lcom/tapjoy/internal/fd;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 632
    const-string v0, "ex3"

    invoke-virtual {v6, v0, v1}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 634
    new-instance v0, Lcom/tapjoy/internal/ej;

    invoke-direct {v0}, Lcom/tapjoy/internal/ej;-><init>()V

    .line 635
    const-string v1, "org_id"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 636
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 637
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v2, "params without xor"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 638
    :cond_6
    invoke-virtual {v6}, Lcom/tapjoy/internal/ej;->b()Ljava/lang/String;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v3, "url encoding"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 641
    :cond_7
    const-string v2, "ja"

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 642
    const-string v1, "h"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    move-result-object v1

    const-string v2, "m"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/ej;

    .line 644
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->z:Landroid/util/TimingLogger;

    const-string v2, "Params xor\'d"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 646
    :cond_8
    return-object v0

    .line 627
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    move v2, v3

    goto/16 :goto_0
.end method
