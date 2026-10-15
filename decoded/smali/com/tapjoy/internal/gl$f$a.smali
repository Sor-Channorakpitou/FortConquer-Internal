.class public final Lcom/tapjoy/internal/gl$f$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/tapjoy/internal/gl$i;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12214
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 12322
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 12357
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    .line 12433
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->e:Ljava/lang/Object;

    .line 12215
    return-void
.end method

.method static synthetic g()Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12207
    new-instance v0, Lcom/tapjoy/internal/gl$f$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f$a;-><init>()V

    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gl$f$a;
    .locals 2

    .prologue
    .line 12236
    new-instance v0, Lcom/tapjoy/internal/gl$f$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f$a;->e()Lcom/tapjoy/internal/gl$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 12207
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f$a;->h()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;
    .locals 2

    .prologue
    .line 12272
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->c()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12288
    :goto_0
    return-object p0

    .line 12273
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12274
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->f()Lcom/tapjoy/internal/gl$i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$f$a;

    .line 12276
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12277
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12278
    invoke-static {p1}, Lcom/tapjoy/internal/gl$f;->b(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    .line 12281
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12282
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12283
    invoke-static {p1}, Lcom/tapjoy/internal/gl$f;->c(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->e:Ljava/lang/Object;

    .line 12286
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$f;->d(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12339
    if-nez p1, :cond_0

    .line 12340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12342
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12343
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 12345
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12402
    if-nez p1, :cond_0

    .line 12403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12405
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12406
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    .line 12408
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 12207
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f$a;->h()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12478
    if-nez p1, :cond_0

    .line 12479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12481
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12482
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f$a;->e:Ljava/lang/Object;

    .line 12484
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12207
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f$a;->h()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12292
    iget v2, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 12300
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 12292
    goto :goto_0

    .line 12296
    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    .line 12300
    goto :goto_1

    :cond_3
    move v2, v0

    .line 12296
    goto :goto_2
.end method

.method public final e()Lcom/tapjoy/internal/gl$f;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12252
    new-instance v2, Lcom/tapjoy/internal/gl$f;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$f;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 12253
    iget v3, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12255
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 12258
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f$a;->c:Lcom/tapjoy/internal/gl$i;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$i;

    .line 12259
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 12260
    or-int/lit8 v0, v0, 0x2

    .line 12262
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12263
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 12264
    or-int/lit8 v0, v0, 0x4

    .line 12266
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$f;->b(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12267
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;I)I

    .line 12268
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final f()Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12490
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 12491
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->c()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->e:Ljava/lang/Object;

    .line 12493
    return-object p0
.end method
