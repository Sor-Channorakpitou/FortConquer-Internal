.class public final Lcom/tapjoy/internal/gl$j;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$j$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$j;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11310
    new-instance v0, Lcom/tapjoy/internal/gl$j$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$j;->b:Lcom/tapjoy/internal/ds;

    .line 11767
    new-instance v0, Lcom/tapjoy/internal/gl$j;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j;-><init>()V

    .line 11768
    sput-object v0, Lcom/tapjoy/internal/gl$j;->c:Lcom/tapjoy/internal/gl$j;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j;->k()V

    .line 11769
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11243
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 11387
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 11417
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 11243
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 11258
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 11387
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 11417
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 11259
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j;->k()V

    .line 11260
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v2

    .line 11263
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 11267
    const/4 v0, 0x0

    .line 11268
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 11269
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v4

    .line 11270
    sparse-switch v4, :sswitch_data_0

    .line 11275
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 11277
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 11273
    goto :goto_0

    .line 11282
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 11283
    iget v5, p0, Lcom/tapjoy/internal/gl$j;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$j;->e:I

    .line 11284
    iput-object v4, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11307
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11300
    :catchall_0
    move-exception v0

    .line 11301
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11305
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    .line 11307
    :goto_1
    throw v0

    .line 11288
    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$j;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gl$j;->e:I

    .line 11289
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gl$j;->g:J
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 11296
    :catch_1
    move-exception v0

    .line 11297
    :try_start_4
    new-instance v1, Lcom/tapjoy/internal/dn;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11301
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 11305
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    .line 11306
    :goto_2
    return-void

    .line 11305
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 11270
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;B)V
    .locals 0

    .prologue
    .line 11234
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$j;-><init>(Lcom/tapjoy/internal/di;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 11240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 11387
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 11417
    iput v1, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 11241
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    .line 11242
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 11234
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$j;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;I)I
    .locals 0

    .prologue
    .line 11234
    iput p1, p0, Lcom/tapjoy/internal/gl$j;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;J)J
    .locals 1

    .prologue
    .line 11234
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$j;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11234
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 11234
    iput-object p1, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$j;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 11234
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public static c()Lcom/tapjoy/internal/gl$j;
    .locals 1

    .prologue
    .line 11247
    sget-object v0, Lcom/tapjoy/internal/gl$j;->c:Lcom/tapjoy/internal/gl$j;

    return-object v0
.end method

.method public static i()Lcom/tapjoy/internal/gl$j$a;
    .locals 1

    .prologue
    .line 11541
    invoke-static {}, Lcom/tapjoy/internal/gl$j$a;->f()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 11356
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    .line 11357
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11358
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 11361
    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    .line 11364
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 11384
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    .line 11385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$j;->g:J

    .line 11386
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 11407
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->b()I

    .line 11408
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 11409
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j;->j()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 11411
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 11412
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$j;->g:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/tapjoy/internal/dj;->a(IJ)V

    .line 11414
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 11415
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 11419
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 11420
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11433
    :goto_0
    return v0

    .line 11422
    :cond_0
    const/4 v0, 0x0

    .line 11423
    iget v1, p0, Lcom/tapjoy/internal/gl$j;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 11424
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j;->j()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11427
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$j;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 11428
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$j;->g:J

    invoke-static {v4, v2, v3}, Lcom/tapjoy/internal/dj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11431
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 11432
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11389
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 11390
    if-ne v2, v0, :cond_0

    .line 11402
    :goto_0
    return v0

    .line 11391
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 11393
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 11394
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$j;->h:B

    move v0, v1

    .line 11395
    goto :goto_0

    .line 11397
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11398
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$j;->h:B

    move v0, v1

    .line 11399
    goto :goto_0

    .line 11401
    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$j;->h:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11332
    iget v1, p0, Lcom/tapjoy/internal/gl$j;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11445
    if-ne p1, p0, :cond_1

    .line 11464
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 11448
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$j;

    if-nez v0, :cond_2

    .line 11449
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 11451
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$j;

    .line 11453
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 11455
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11456
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 11459
    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v3

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 11460
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11461
    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/tapjoy/internal/gl$j;->g:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gl$j;->g:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    .line 11453
    goto :goto_1

    :cond_6
    move v0, v2

    .line 11456
    goto :goto_2

    :cond_7
    move v0, v2

    .line 11459
    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11338
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    .line 11339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11340
    check-cast v0, Ljava/lang/String;

    .line 11348
    :goto_0
    return-object v0

    .line 11342
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 11344
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 11345
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11346
    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11348
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 11374
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 11380
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$j;->g:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 11469
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->a:I

    if-eqz v0, :cond_0

    .line 11470
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->a:I

    .line 11485
    :goto_0
    return v0

    .line 11472
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 11474
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11475
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 11476
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11478
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11479
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 11480
    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$j;->g:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dm;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 11483
    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11484
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->a:I

    goto :goto_0
.end method
