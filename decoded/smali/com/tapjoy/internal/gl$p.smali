.class public final Lcom/tapjoy/internal/gl$p;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$p$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$p;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12652
    new-instance v0, Lcom/tapjoy/internal/gl$p$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$p;->b:Lcom/tapjoy/internal/ds;

    .line 13311
    new-instance v0, Lcom/tapjoy/internal/gl$p;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p;-><init>()V

    .line 13312
    sput-object v0, Lcom/tapjoy/internal/gl$p;->c:Lcom/tapjoy/internal/gl$p;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p;->p()V

    .line 13313
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12578
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 12799
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$p;->i:B

    .line 12824
    iput v0, p0, Lcom/tapjoy/internal/gl$p;->j:I

    .line 12578
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 12593
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 12799
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$p;->i:B

    .line 12824
    iput v0, p0, Lcom/tapjoy/internal/gl$p;->j:I

    .line 12594
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->p()V

    .line 12595
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v2

    .line 12598
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 12602
    const/4 v0, 0x0

    .line 12603
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 12604
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v4

    .line 12605
    sparse-switch v4, :sswitch_data_0

    .line 12610
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 12612
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 12608
    goto :goto_0

    .line 12617
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 12618
    iget v5, p0, Lcom/tapjoy/internal/gl$p;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$p;->e:I

    .line 12619
    iput-object v4, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12649
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12642
    :catchall_0
    move-exception v0

    .line 12643
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12647
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    .line 12649
    :goto_1
    throw v0

    .line 12623
    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 12624
    iget v5, p0, Lcom/tapjoy/internal/gl$p;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/tapjoy/internal/gl$p;->e:I

    .line 12625
    iput-object v4, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 12638
    :catch_1
    move-exception v0

    .line 12639
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

    .line 12629
    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 12630
    iget v5, p0, Lcom/tapjoy/internal/gl$p;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/tapjoy/internal/gl$p;->e:I

    .line 12631
    iput-object v4, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 12643
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 12647
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    .line 12648
    :goto_2
    return-void

    .line 12647
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 12605
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;B)V
    .locals 0

    .prologue
    .line 12569
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$p;-><init>(Lcom/tapjoy/internal/di;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 12575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 12799
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$p;->i:B

    .line 12824
    iput v1, p0, Lcom/tapjoy/internal/gl$p;->j:I

    .line 12576
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    .line 12577
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 12569
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$p;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$p;I)I
    .locals 0

    .prologue
    .line 12569
    iput p1, p0, Lcom/tapjoy/internal/gl$p;->e:I

    return p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 12963
    invoke-static {}, Lcom/tapjoy/internal/gl$p$a;->g()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$p$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 12569
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12569
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 12569
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public static c()Lcom/tapjoy/internal/gl$p;
    .locals 1

    .prologue
    .line 12582
    sget-object v0, Lcom/tapjoy/internal/gl$p;->c:Lcom/tapjoy/internal/gl$p;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12569
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 12569
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12569
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 12569
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public static k()Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 12960
    invoke-static {}, Lcom/tapjoy/internal/gl$p$a;->g()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 12698
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    .line 12699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12700
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 12703
    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    .line 12706
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private n()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 12740
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    .line 12741
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12742
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 12745
    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    .line 12748
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private o()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 12782
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    .line 12783
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12784
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 12787
    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    .line 12790
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 12795
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    .line 12796
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    .line 12797
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    .line 12798
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12811
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->b()I

    .line 12812
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12813
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->m()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 12815
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12816
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->n()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 12818
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 12819
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->o()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 12821
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 12822
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12826
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->j:I

    .line 12827
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12844
    :goto_0
    return v0

    .line 12829
    :cond_0
    const/4 v0, 0x0

    .line 12830
    iget v1, p0, Lcom/tapjoy/internal/gl$p;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12831
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->m()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 12834
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$p;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12835
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->n()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12838
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$p;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 12839
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p;->o()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12842
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 12843
    iput v0, p0, Lcom/tapjoy/internal/gl$p;->j:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12801
    iget-byte v1, p0, Lcom/tapjoy/internal/gl$p;->i:B

    .line 12802
    if-ne v1, v0, :cond_0

    .line 12806
    :goto_0
    return v0

    .line 12803
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 12805
    :cond_1
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$p;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12674
    iget v1, p0, Lcom/tapjoy/internal/gl$p;->e:I

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

    .line 12856
    if-ne p1, p0, :cond_1

    .line 12880
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 12859
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$p;

    if-nez v0, :cond_2

    .line 12860
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 12862
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$p;

    .line 12864
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 12866
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12867
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 12870
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 12871
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12872
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 12875
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 12876
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 12877
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 12864
    goto :goto_1

    :cond_7
    move v0, v2

    .line 12867
    goto :goto_2

    :cond_8
    move v0, v2

    .line 12870
    goto :goto_3

    :cond_9
    move v0, v2

    .line 12872
    goto :goto_4

    :cond_a
    move v0, v2

    .line 12875
    goto :goto_5

    :cond_b
    move v1, v0

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12680
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    .line 12681
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12682
    check-cast v0, Ljava/lang/String;

    .line 12690
    :goto_0
    return-object v0

    .line 12684
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 12686
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 12687
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12688
    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12690
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 12716
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->e:I

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

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12722
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    .line 12723
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12724
    check-cast v0, Ljava/lang/String;

    .line 12732
    :goto_0
    return-object v0

    .line 12726
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 12728
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 12729
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12730
    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12732
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 12885
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->a:I

    if-eqz v0, :cond_0

    .line 12886
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->a:I

    .line 12904
    :goto_0
    return v0

    .line 12888
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 12890
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12891
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 12892
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12894
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12895
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 12896
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12898
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12899
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 12900
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12902
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$p;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12903
    iput v0, p0, Lcom/tapjoy/internal/gl$p;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 12758
    iget v0, p0, Lcom/tapjoy/internal/gl$p;->e:I

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

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12764
    iget-object v0, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    .line 12765
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12766
    check-cast v0, Ljava/lang/String;

    .line 12774
    :goto_0
    return-object v0

    .line 12768
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 12770
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 12771
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12772
    iput-object v1, p0, Lcom/tapjoy/internal/gl$p;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12774
    goto :goto_0
.end method

.method public final l()Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 12965
    invoke-static {}, Lcom/tapjoy/internal/gl$p$a;->g()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$p$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method
