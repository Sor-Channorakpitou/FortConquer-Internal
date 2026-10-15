.class public final Lcom/tapjoy/internal/gl$n;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$n$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$n;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Lcom/tapjoy/internal/gl$l;

.field private g:Lcom/tapjoy/internal/gl$a;

.field private h:Lcom/tapjoy/internal/gl$x;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8673
    new-instance v0, Lcom/tapjoy/internal/gl$n$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$n;->b:Lcom/tapjoy/internal/ds;

    .line 9209
    new-instance v0, Lcom/tapjoy/internal/gl$n;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n;-><init>()V

    .line 9210
    sput-object v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$n;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n;->l()V

    .line 9211
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8578
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 8739
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 8770
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 8578
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;)V
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 8593
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 8739
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 8770
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 8594
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n;->l()V

    .line 8595
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v5

    .line 8598
    const/16 v0, 0x1000

    invoke-static {v5, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v6

    .line 8602
    const/4 v0, 0x0

    move v3, v0

    .line 8603
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 8604
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v0

    .line 8605
    sparse-switch v0, :sswitch_data_0

    .line 8610
    invoke-virtual {p1, v0, v6}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    .line 8612
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 8608
    goto :goto_0

    .line 8618
    :sswitch_1
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_7

    .line 8619
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$l;->N()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    move-object v1, v0

    .line 8621
    :goto_1
    sget-object v0, Lcom/tapjoy/internal/gl$l;->b:Lcom/tapjoy/internal/ds;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/ds;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$l;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    .line 8622
    if-eqz v1, :cond_1

    .line 8623
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    .line 8624
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l$a;->e()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    .line 8626
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$n;->e:I
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8670
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8663
    :catchall_0
    move-exception v0

    .line 8664
    :try_start_2
    invoke-virtual {v6}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8668
    invoke-virtual {v5}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    .line 8670
    :goto_2
    throw v0

    .line 8631
    :sswitch_2
    :try_start_3
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 8632
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a;->p()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    move-object v1, v0

    .line 8634
    :goto_3
    sget-object v0, Lcom/tapjoy/internal/gl$a;->b:Lcom/tapjoy/internal/ds;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/ds;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$a;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    .line 8635
    if-eqz v1, :cond_2

    .line 8636
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    .line 8637
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a$a;->e()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    .line 8639
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$n;->e:I
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 8659
    :catch_1
    move-exception v0

    .line 8660
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

    .line 8644
    :sswitch_3
    :try_start_5
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 8645
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->ad()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    move-object v1, v0

    .line 8647
    :goto_4
    sget-object v0, Lcom/tapjoy/internal/gl$x;->b:Lcom/tapjoy/internal/ds;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/ds;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$x;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    .line 8648
    if-eqz v1, :cond_3

    .line 8649
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$x$a;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x$a;

    .line 8650
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x$a;->e()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    .line 8652
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$n;->e:I
    :try_end_5
    .catch Lcom/tapjoy/internal/dn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 8664
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 8668
    invoke-virtual {v5}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    .line 8669
    :goto_5
    return-void

    .line 8668
    :catch_2
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :cond_5
    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto/16 :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_1

    .line 8605
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;B)V
    .locals 0

    .prologue
    .line 8569
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 8739
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 8770
    iput v1, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 8576
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    .line 8577
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 8569
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;I)I
    .locals 0

    .prologue
    .line 8569
    iput p1, p0, Lcom/tapjoy/internal/gl$n;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 8569
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a;
    .locals 0

    .prologue
    .line 8569
    iput-object p1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l;
    .locals 0

    .prologue
    .line 8569
    iput-object p1, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/gl$x;
    .locals 0

    .prologue
    .line 8569
    iput-object p1, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    return-object p1
.end method

.method public static c()Lcom/tapjoy/internal/gl$n;
    .locals 1

    .prologue
    .line 8582
    sget-object v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$n;

    return-object v0
.end method

.method public static k()Lcom/tapjoy/internal/gl$n$a;
    .locals 1

    .prologue
    .line 8906
    invoke-static {}, Lcom/tapjoy/internal/gl$n$a;->f()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 8735
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->c()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    .line 8736
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->c()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    .line 8737
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->c()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    .line 8738
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8757
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->b()I

    .line 8758
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8759
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dq;)V

    .line 8761
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8762
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dq;)V

    .line 8764
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8765
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dq;)V

    .line 8767
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 8768
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8772
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 8773
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8790
    :goto_0
    return v0

    .line 8775
    :cond_0
    const/4 v0, 0x0

    .line 8776
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8777
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dq;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8780
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8781
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dq;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8784
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 8785
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dq;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8788
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 8789
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8741
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 8742
    if-ne v2, v0, :cond_0

    .line 8752
    :goto_0
    return v0

    .line 8743
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 8745
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8746
    iget-object v2, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$x;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8747
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$n;->i:B

    move v0, v1

    .line 8748
    goto :goto_0

    .line 8751
    :cond_2
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$n;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8695
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8802
    if-ne p1, p0, :cond_1

    .line 8826
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 8805
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$n;

    if-nez v0, :cond_2

    .line 8806
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 8808
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$n;

    .line 8810
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 8812
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8813
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    iget-object v3, p1, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 8816
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 8817
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8818
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    iget-object v3, p1, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 8821
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->i()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 8822
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 8823
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    iget-object v3, p1, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 8810
    goto :goto_1

    :cond_7
    move v0, v2

    .line 8813
    goto :goto_2

    :cond_8
    move v0, v2

    .line 8816
    goto :goto_3

    :cond_9
    move v0, v2

    .line 8818
    goto :goto_4

    :cond_a
    move v0, v2

    .line 8821
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Lcom/tapjoy/internal/gl$l;
    .locals 1

    .prologue
    .line 8701
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 8710
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

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

.method public final h()Lcom/tapjoy/internal/gl$a;
    .locals 1

    .prologue
    .line 8716
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 8831
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->a:I

    if-eqz v0, :cond_0

    .line 8832
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->a:I

    .line 8850
    :goto_0
    return v0

    .line 8834
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 8836
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8837
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 8838
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8840
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8841
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 8842
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8844
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8845
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 8846
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8848
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8849
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 8725
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->e:I

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

.method public final j()Lcom/tapjoy/internal/gl$x;
    .locals 1

    .prologue
    .line 8731
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->h:Lcom/tapjoy/internal/gl$x;

    return-object v0
.end method
