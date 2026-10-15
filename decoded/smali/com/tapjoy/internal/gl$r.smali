.class public final Lcom/tapjoy/internal/gl$r;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$r$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$r;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:D

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:I

.field private o:J

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9504
    new-instance v0, Lcom/tapjoy/internal/gl$r$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$r;->b:Lcom/tapjoy/internal/ds;

    .line 11197
    new-instance v0, Lcom/tapjoy/internal/gl$r;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r;-><init>()V

    .line 11198
    sput-object v0, Lcom/tapjoy/internal/gl$r;->c:Lcom/tapjoy/internal/gl$r;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r;->M()V

    .line 11199
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9380
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 9930
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$r;->r:B

    .line 9986
    iput v0, p0, Lcom/tapjoy/internal/gl$r;->s:I

    .line 9380
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 9395
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 9930
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$r;->r:B

    .line 9986
    iput v0, p0, Lcom/tapjoy/internal/gl$r;->s:I

    .line 9396
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->M()V

    .line 9397
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v2

    .line 9400
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 9404
    const/4 v0, 0x0

    .line 9405
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 9406
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v4

    .line 9407
    sparse-switch v4, :sswitch_data_0

    .line 9412
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 9414
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 9410
    goto :goto_0

    .line 9419
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9420
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9421
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9501
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9494
    :catchall_0
    move-exception v0

    .line 9495
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9499
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    .line 9501
    :goto_1
    throw v0

    .line 9425
    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9426
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->e()I

    move-result v4

    iput v4, p0, Lcom/tapjoy/internal/gl$r;->g:I
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 9490
    :catch_1
    move-exception v0

    .line 9491
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

    .line 9430
    :sswitch_3
    :try_start_5
    iget v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9431
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gl$r;->h:D

    goto :goto_0

    .line 9435
    :sswitch_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9436
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9437
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    goto :goto_0

    .line 9441
    :sswitch_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9442
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9443
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    goto :goto_0

    .line 9447
    :sswitch_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9448
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9449
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9453
    :sswitch_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9454
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9455
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9459
    :sswitch_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9460
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9461
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9465
    :sswitch_9
    iget v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9466
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->e()I

    move-result v4

    iput v4, p0, Lcom/tapjoy/internal/gl$r;->n:I

    goto/16 :goto_0

    .line 9470
    :sswitch_a
    iget v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9471
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gl$r;->o:J

    goto/16 :goto_0

    .line 9475
    :sswitch_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9476
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9477
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9481
    :sswitch_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 9482
    iget v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/tapjoy/internal/gl$r;->e:I

    .line 9483
    iput-object v4, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 9495
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9499
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    .line 9500
    :goto_2
    return-void

    .line 9499
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 9407
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;B)V
    .locals 0

    .prologue
    .line 9371
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$r;-><init>(Lcom/tapjoy/internal/di;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 9377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 9930
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$r;->r:B

    .line 9986
    iput v1, p0, Lcom/tapjoy/internal/gl$r;->s:I

    .line 9378
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    .line 9379
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 9371
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$r;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method public static C()Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10243
    invoke-static {}, Lcom/tapjoy/internal/gl$r$a;->f()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method private E()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9550
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    .line 9551
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9552
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9555
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    .line 9558
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private F()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9622
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    .line 9623
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9624
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9627
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    .line 9630
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private G()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9664
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    .line 9665
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9666
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9669
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    .line 9672
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private H()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9706
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    .line 9707
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9708
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9711
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    .line 9714
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private I()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9748
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    .line 9749
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9750
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9753
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    .line 9756
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private J()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9790
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    .line 9791
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9792
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9795
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    .line 9798
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private K()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9862
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    .line 9863
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9864
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9867
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    .line 9870
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private L()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 9904
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    .line 9905
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9906
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 9909
    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    .line 9912
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private M()V
    .locals 2

    .prologue
    .line 9917
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    .line 9918
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$r;->g:I

    .line 9919
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$r;->h:D

    .line 9920
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    .line 9921
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    .line 9922
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    .line 9923
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    .line 9924
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    .line 9925
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gl$r;->n:I

    .line 9926
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$r;->o:J

    .line 9927
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    .line 9928
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    .line 9929
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$r;D)D
    .locals 1

    .prologue
    .line 9371
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$r;->h:D

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$r;I)I
    .locals 0

    .prologue
    .line 9371
    iput p1, p0, Lcom/tapjoy/internal/gl$r;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$r;J)J
    .locals 1

    .prologue
    .line 9371
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$r;->o:J

    return-wide p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10246
    invoke-static {}, Lcom/tapjoy/internal/gl$r$a;->f()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$r$a;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$r;I)I
    .locals 0

    .prologue
    .line 9371
    iput p1, p0, Lcom/tapjoy/internal/gl$r;->n:I

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$r;I)I
    .locals 0

    .prologue
    .line 9371
    iput p1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    return p1
.end method

.method public static c()Lcom/tapjoy/internal/gl$r;
    .locals 1

    .prologue
    .line 9384
    sget-object v0, Lcom/tapjoy/internal/gl$r;->c:Lcom/tapjoy/internal/gl$r;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 9371
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .prologue
    .line 9880
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9886
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    .line 9887
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9888
    check-cast v0, Ljava/lang/String;

    .line 9896
    :goto_0
    return-object v0

    .line 9890
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9892
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9893
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9894
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->q:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9896
    goto :goto_0
.end method

.method public final D()Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 10248
    invoke-static {}, Lcom/tapjoy/internal/gl$r$a;->f()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$r$a;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9946
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->b()I

    .line 9947
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9948
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->E()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9950
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9951
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->g:I

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dj;->a(II)V

    .line 9953
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 9954
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$r;->h:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dj;->a(ID)V

    .line 9956
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 9957
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->F()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9959
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 9960
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->G()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9962
    :cond_4
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 9963
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->H()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9965
    :cond_5
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 9966
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->I()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9968
    :cond_6
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 9969
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->J()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9971
    :cond_7
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 9972
    const/16 v0, 0x9

    iget v1, p0, Lcom/tapjoy/internal/gl$r;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(II)V

    .line 9974
    :cond_8
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 9975
    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$r;->o:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dj;->a(IJ)V

    .line 9977
    :cond_9
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 9978
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->K()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9980
    :cond_a
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 9981
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->L()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 9983
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 9984
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9988
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->s:I

    .line 9989
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10042
    :goto_0
    return v0

    .line 9991
    :cond_0
    const/4 v0, 0x0

    .line 9992
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9993
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->E()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9996
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 9997
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->g:I

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10000
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 10001
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$r;->h:D

    invoke-static {v1}, Lcom/tapjoy/internal/dj;->d(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 10004
    :cond_3
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 10005
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->F()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10008
    :cond_4
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 10009
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->G()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10012
    :cond_5
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 10013
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->H()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10016
    :cond_6
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 10017
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->I()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10020
    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 10021
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->J()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10024
    :cond_8
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 10025
    const/16 v1, 0x9

    iget v2, p0, Lcom/tapjoy/internal/gl$r;->n:I

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10028
    :cond_9
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 10029
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$r;->o:J

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/dj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10032
    :cond_a
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 10033
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->K()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10036
    :cond_b
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 10037
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r;->L()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10040
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 10041
    iput v0, p0, Lcom/tapjoy/internal/gl$r;->s:I

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 9932
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$r;->r:B

    .line 9933
    if-ne v2, v0, :cond_0

    .line 9941
    :goto_0
    return v0

    .line 9934
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 9936
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9937
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$r;->r:B

    move v0, v1

    .line 9938
    goto :goto_0

    .line 9940
    :cond_2
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$r;->r:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9526
    iget v1, p0, Lcom/tapjoy/internal/gl$r;->e:I

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

    .line 10054
    if-ne p1, p0, :cond_1

    .line 10125
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 10057
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$r;

    if-nez v0, :cond_2

    .line 10058
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 10060
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$r;

    .line 10062
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v3

    if-ne v0, v3, :cond_f

    move v0, v1

    .line 10064
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10065
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 10068
    :cond_3
    :goto_2
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v3

    if-ne v0, v3, :cond_11

    move v0, v1

    .line 10069
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10070
    if-eqz v0, :cond_12

    iget v0, p0, Lcom/tapjoy/internal/gl$r;->g:I

    iget v3, p1, Lcom/tapjoy/internal/gl$r;->g:I

    if-ne v0, v3, :cond_12

    move v0, v1

    .line 10073
    :cond_4
    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v3

    if-ne v0, v3, :cond_13

    move v0, v1

    .line 10074
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10075
    if-eqz v0, :cond_14

    iget-wide v4, p0, Lcom/tapjoy/internal/gl$r;->h:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p1, Lcom/tapjoy/internal/gl$r;->h:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_14

    move v0, v1

    .line 10080
    :cond_5
    :goto_6
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v3

    if-ne v0, v3, :cond_15

    move v0, v1

    .line 10081
    :goto_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10082
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    .line 10085
    :cond_6
    :goto_8
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v3

    if-ne v0, v3, :cond_17

    move v0, v1

    .line 10086
    :goto_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10087
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 10090
    :cond_7
    :goto_a
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v3

    if-ne v0, v3, :cond_19

    move v0, v1

    .line 10091
    :goto_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 10092
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    .line 10095
    :cond_8
    :goto_c
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v3

    if-ne v0, v3, :cond_1b

    move v0, v1

    .line 10096
    :goto_d
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 10097
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 10100
    :cond_9
    :goto_e
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v3

    if-ne v0, v3, :cond_1d

    move v0, v1

    .line 10101
    :goto_f
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 10102
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 10105
    :cond_a
    :goto_10
    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v3

    if-ne v0, v3, :cond_1f

    move v0, v1

    .line 10106
    :goto_11
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 10107
    if-eqz v0, :cond_20

    iget v0, p0, Lcom/tapjoy/internal/gl$r;->n:I

    iget v3, p1, Lcom/tapjoy/internal/gl$r;->n:I

    if-ne v0, v3, :cond_20

    move v0, v1

    .line 10110
    :cond_b
    :goto_12
    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v3

    if-ne v0, v3, :cond_21

    move v0, v1

    .line 10111
    :goto_13
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 10112
    if-eqz v0, :cond_22

    iget-wide v4, p0, Lcom/tapjoy/internal/gl$r;->o:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gl$r;->o:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_22

    move v0, v1

    .line 10115
    :cond_c
    :goto_14
    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v3

    if-ne v0, v3, :cond_23

    move v0, v1

    .line 10116
    :goto_15
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 10117
    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    .line 10120
    :cond_d
    :goto_16
    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v3

    if-ne v0, v3, :cond_25

    move v0, v1

    .line 10121
    :goto_17
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 10122
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    move v1, v2

    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 10062
    goto/16 :goto_1

    :cond_10
    move v0, v2

    .line 10065
    goto/16 :goto_2

    :cond_11
    move v0, v2

    .line 10068
    goto/16 :goto_3

    :cond_12
    move v0, v2

    .line 10070
    goto/16 :goto_4

    :cond_13
    move v0, v2

    .line 10073
    goto/16 :goto_5

    :cond_14
    move v0, v2

    .line 10075
    goto/16 :goto_6

    :cond_15
    move v0, v2

    .line 10080
    goto/16 :goto_7

    :cond_16
    move v0, v2

    .line 10082
    goto/16 :goto_8

    :cond_17
    move v0, v2

    .line 10085
    goto/16 :goto_9

    :cond_18
    move v0, v2

    .line 10087
    goto/16 :goto_a

    :cond_19
    move v0, v2

    .line 10090
    goto/16 :goto_b

    :cond_1a
    move v0, v2

    .line 10092
    goto/16 :goto_c

    :cond_1b
    move v0, v2

    .line 10095
    goto/16 :goto_d

    :cond_1c
    move v0, v2

    .line 10097
    goto/16 :goto_e

    :cond_1d
    move v0, v2

    .line 10100
    goto/16 :goto_f

    :cond_1e
    move v0, v2

    .line 10102
    goto/16 :goto_10

    :cond_1f
    move v0, v2

    .line 10105
    goto/16 :goto_11

    :cond_20
    move v0, v2

    .line 10107
    goto/16 :goto_12

    :cond_21
    move v0, v2

    .line 10110
    goto/16 :goto_13

    :cond_22
    move v0, v2

    .line 10112
    goto/16 :goto_14

    :cond_23
    move v0, v2

    .line 10115
    goto :goto_15

    :cond_24
    move v0, v2

    .line 10117
    goto :goto_16

    :cond_25
    move v0, v2

    .line 10120
    goto :goto_17

    :cond_26
    move v1, v0

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9532
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    .line 9533
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9534
    check-cast v0, Ljava/lang/String;

    .line 9542
    :goto_0
    return-object v0

    .line 9536
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9538
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9539
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9540
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9542
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 9568
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

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

.method public final h()I
    .locals 1

    .prologue
    .line 9574
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->g:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 10130
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->a:I

    if-eqz v0, :cond_0

    .line 10131
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->a:I

    .line 10187
    :goto_0
    return v0

    .line 10133
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 10135
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10136
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 10137
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10139
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10140
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 10141
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/tapjoy/internal/gl$r;->g:I

    add-int/2addr v0, v1

    .line 10143
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10144
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 10145
    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$r;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dm;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 10148
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10149
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 10150
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10152
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10153
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 10154
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10156
    :cond_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10157
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 10158
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10160
    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10161
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 10162
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10164
    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10165
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 10166
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10168
    :cond_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 10169
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    .line 10170
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/tapjoy/internal/gl$r;->n:I

    add-int/2addr v0, v1

    .line 10172
    :cond_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 10173
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    .line 10174
    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$r;->o:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dm;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 10177
    :cond_a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 10178
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    .line 10179
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10181
    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 10182
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    .line 10183
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10185
    :cond_c
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$r;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10186
    iput v0, p0, Lcom/tapjoy/internal/gl$r;->a:I

    goto/16 :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 9583
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()D
    .locals 2

    .prologue
    .line 9589
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$r;->h:D

    return-wide v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 9598
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9604
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    .line 9605
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9606
    check-cast v0, Ljava/lang/String;

    .line 9614
    :goto_0
    return-object v0

    .line 9608
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9610
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9611
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9612
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9614
    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 9640
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9646
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    .line 9647
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9648
    check-cast v0, Ljava/lang/String;

    .line 9656
    :goto_0
    return-object v0

    .line 9650
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9652
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9653
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9654
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9656
    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 9682
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9688
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    .line 9689
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9690
    check-cast v0, Ljava/lang/String;

    .line 9698
    :goto_0
    return-object v0

    .line 9692
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9694
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9695
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9696
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9698
    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 9724
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9730
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    .line 9731
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9732
    check-cast v0, Ljava/lang/String;

    .line 9740
    :goto_0
    return-object v0

    .line 9734
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9736
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9737
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9738
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9740
    goto :goto_0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 9766
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9772
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    .line 9773
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9774
    check-cast v0, Ljava/lang/String;

    .line 9782
    :goto_0
    return-object v0

    .line 9776
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9778
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9779
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9780
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9782
    goto :goto_0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 9808
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 9814
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->n:I

    return v0
.end method

.method public final w()Z
    .locals 2

    .prologue
    .line 9823
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()J
    .locals 2

    .prologue
    .line 9829
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$r;->o:J

    return-wide v0
.end method

.method public final y()Z
    .locals 2

    .prologue
    .line 9838
    iget v0, p0, Lcom/tapjoy/internal/gl$r;->e:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9844
    iget-object v0, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    .line 9845
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9846
    check-cast v0, Ljava/lang/String;

    .line 9854
    :goto_0
    return-object v0

    .line 9848
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 9850
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 9851
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9852
    iput-object v1, p0, Lcom/tapjoy/internal/gl$r;->p:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 9854
    goto :goto_0
.end method
