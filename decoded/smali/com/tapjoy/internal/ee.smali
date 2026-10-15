.class Lcom/tapjoy/internal/ee;
.super Lcom/tapjoy/internal/ed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ee$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private j:Landroid/content/Context;

.field private k:Z

.field private l:Z

.field private m:Lcom/tapjoy/internal/eo;

.field private n:Lcom/tapjoy/internal/en;

.field private o:Ljava/util/concurrent/CountDownLatch;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/tapjoy/internal/ee;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/tapjoy/internal/ed;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/tapjoy/internal/ee;->j:Landroid/content/Context;

    .line 16
    iput-boolean v1, p0, Lcom/tapjoy/internal/ee;->k:Z

    .line 17
    iput-boolean v1, p0, Lcom/tapjoy/internal/ee;->l:Z

    .line 18
    iput-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    .line 19
    iput-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    .line 20
    iput-object v0, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    .line 21
    iput v1, p0, Lcom/tapjoy/internal/ee;->p:I

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ee;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/ee;Lcom/tapjoy/internal/en;)Lcom/tapjoy/internal/en;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    const-string v2, "false"

    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    if-eqz v0, :cond_3

    .line 103
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string v0, "true"

    .line 110
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 342
    const-string v0, "(<FIELD_SEP>|<REC_SEP>)"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ex;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->d:Ljava/lang/String;

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    const-string v0, "<REC_SEP>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 349
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    :goto_1
    return-void

    .line 350
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 352
    const-string v7, "<FIELD_SEP>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 353
    array-length v7, v5

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 355
    const-string v7, "name"

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v7, "description"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v7, "filename"

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v7, "length"

    const/4 v8, 0x3

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->b:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    const-string v1, "QuickTime Plug-in"

    const-string v3, "plugin_quicktime"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "Adobe Acrobat"

    const-string v3, "plugin_adobe_acrobat"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "Java"

    const-string v3, "plugin_java"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, "SVG Viewer"

    const-string v3, "plugin_svg_viewer"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "Flash"

    const-string v3, "plugin_flash"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, "Windows Media Player"

    const-string v3, "plugin_windows_media_player"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "Silverlight"

    const-string v3, "plugin_silverlight"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "Real Player"

    const-string v3, "plugin_realplayer"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v1, "ShockWave Director"

    const-string v3, "plugin_shockwave"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, "VLC"

    const-string v3, "plugin_vlc_player"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "DevalVR"

    const-string v3, "plugin_devalvr"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->a:Ljava/lang/String;

    .line 382
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ee;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method static synthetic b(Lcom/tapjoy/internal/ee;)Lcom/tapjoy/internal/eo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/ee;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/ee;)Lcom/tapjoy/internal/en;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/ee;)V
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/ee;->p:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    const-string v1, "(function () { var plugins_string=\'\', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + \'<FIELD_SEP>\' + p.description + \'<FIELD_SEP>\' + p.filename + \'<FIELD_SEP>\' + p.length.toString() + \'<REC_SEP>\'; } return plugins_string;})();"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/en;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/ee;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    const-string v1, "navigator.mimeTypes.length"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/en;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ee;->f:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v0, "(function () { var mime_string=\'\', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();"

    iget-object v1, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/en;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ex;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->h:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    const-string v2, "failed to convert"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->h:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->l:Z

    if-eqz v0, :cond_2

    .line 50
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/en;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->e:Ljava/lang/String;

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->e:Ljava/lang/String;

    return-object v0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    iget-object v1, p0, Lcom/tapjoy/internal/ee;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/en;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method final a(Landroid/content/Context;ZI)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    iput-object p1, p0, Lcom/tapjoy/internal/ee;->j:Landroid/content/Context;

    .line 121
    iput-boolean p2, p0, Lcom/tapjoy/internal/ee;->k:Z

    .line 122
    iput p3, p0, Lcom/tapjoy/internal/ee;->p:I

    .line 124
    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->k:Z

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return v1

    .line 127
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "initJSExecutor: jsProblem = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tapjoy/internal/ee;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", jsExec = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", hasBadOptions = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/en;->a(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    iget-boolean v3, p0, Lcom/tapjoy/internal/ee;->k:Z

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/en;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    :cond_2
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 133
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    invoke-static {}, Lcom/tapjoy/internal/en;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tapjoy/internal/en;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    .line 137
    :goto_2
    new-instance v5, Lcom/tapjoy/internal/eo;

    if-eqz v0, :cond_6

    move-object v0, v3

    :goto_3
    invoke-direct {v5, v0}, Lcom/tapjoy/internal/eo;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v5, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    .line 139
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Firing off initJSExecutor on UI thread using latch: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " with count: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    new-instance v0, Lcom/tapjoy/internal/ee$1;

    invoke-direct {v0, p0, p0, v3}, Lcom/tapjoy/internal/ee$1;-><init>(Lcom/tapjoy/internal/ee;Lcom/tapjoy/internal/ee;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ee;->l:Z

    .line 173
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "initJSExecutor no response from UI thread before timeout using init latch: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    const-string v2, "Interrupted initing js engine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :cond_4
    const-string v0, "true"

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 135
    goto :goto_2

    .line 137
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 182
    :cond_7
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    :cond_8
    move v1, v2

    .line 188
    goto/16 :goto_0
.end method

.method final b()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    iget-object v2, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_2

    .line 200
    :try_start_0
    sget-object v2, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waiting for getBrowserInfo to finished, latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    iget-object v2, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    invoke-static {}, Lcom/tapjoy/internal/en;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/en;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    :cond_0
    iget v2, p0, Lcom/tapjoy/internal/ee;->p:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    iget-object v2, v2, Lcom/tapjoy/internal/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    iget-object v0, v0, Lcom/tapjoy/internal/eo;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/ee;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    iget-object v0, v0, Lcom/tapjoy/internal/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    iget-object v0, v0, Lcom/tapjoy/internal/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ee;->f:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget v0, p0, Lcom/tapjoy/internal/ee;->f:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    iget-object v0, v0, Lcom/tapjoy/internal/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    iget-object v0, v0, Lcom/tapjoy/internal/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ex;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->h:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got mime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/internal/ee;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->g:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    :goto_4
    return-void

    .line 206
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    sget-object v1, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    const-string v2, "getBrowserInfo interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 206
    :catch_1
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    const-string v3, "failed to convert"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ee;->f:I

    goto :goto_1

    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->h:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_3

    .line 211
    :cond_7
    sget-object v0, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBrowserInfo no response from UI thread before timeout using latch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ee;->l:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/tapjoy/internal/ee;->n:Lcom/tapjoy/internal/en;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tapjoy/internal/ee;->l:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/tapjoy/internal/ee;->k:Z

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final d()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-static {}, Lcom/tapjoy/internal/en;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/en;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v0

    .line 244
    :goto_0
    if-eqz v1, :cond_2

    .line 246
    iget v2, p0, Lcom/tapjoy/internal/ee;->p:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 247
    const/4 v0, 0x2

    .line 249
    :cond_1
    iget v2, p0, Lcom/tapjoy/internal/ee;->p:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 250
    add-int/lit8 v0, v0, 0x2

    .line 252
    :cond_2
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    .line 253
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    sget-object v3, Lcom/tapjoy/internal/ee;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing off getBrowserInfo on UI thread using latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    iget-object v3, p0, Lcom/tapjoy/internal/ee;->m:Lcom/tapjoy/internal/eo;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/eo;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 260
    new-instance v0, Lcom/tapjoy/internal/ee$2;

    iget-object v1, p0, Lcom/tapjoy/internal/ee;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p0, p0, v1}, Lcom/tapjoy/internal/ee$2;-><init>(Lcom/tapjoy/internal/ee;Lcom/tapjoy/internal/ee;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void

    .line 236
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
