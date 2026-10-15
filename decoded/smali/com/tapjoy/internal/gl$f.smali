.class public final Lcom/tapjoy/internal/gl$f;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$f$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$f;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Lcom/tapjoy/internal/gl$i;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11907
    new-instance v0, Lcom/tapjoy/internal/gl$f$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$f;->b:Lcom/tapjoy/internal/ds;

    .line 12513
    new-instance v0, Lcom/tapjoy/internal/gl$f;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f;-><init>()V

    .line 12514
    sput-object v0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$f;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f;->o()V

    .line 12515
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11827
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 12027
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 12060
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 11827
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 11842
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 12027
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 12060
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 11843
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->o()V

    .line 11844
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v2

    .line 11847
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 11851
    const/4 v0, 0x0

    .line 11852
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 11853
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v4

    .line 11854
    sparse-switch v4, :sswitch_data_0

    .line 11859
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 11861
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 11857
    goto :goto_0

    .line 11866
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->e()I

    move-result v5

    .line 11867
    invoke-static {v5}, Lcom/tapjoy/internal/gl$i;->a(I)Lcom/tapjoy/internal/gl$i;

    move-result-object v6

    .line 11868
    if-nez v6, :cond_1

    .line 11869
    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/dj;->e(I)V

    .line 11870
    invoke-virtual {v3, v5}, Lcom/tapjoy/internal/dj;->e(I)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11904
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11897
    :catchall_0
    move-exception v0

    .line 11898
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11902
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    .line 11904
    :goto_1
    throw v0

    .line 11872
    :cond_1
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$f;->e:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tapjoy/internal/gl$f;->e:I

    .line 11873
    iput-object v6, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 11893
    :catch_1
    move-exception v0

    .line 11894
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

    .line 11878
    :sswitch_2
    :try_start_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 11879
    iget v5, p0, Lcom/tapjoy/internal/gl$f;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/tapjoy/internal/gl$f;->e:I

    .line 11880
    iput-object v4, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    goto :goto_0

    .line 11884
    :sswitch_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 11885
    iget v5, p0, Lcom/tapjoy/internal/gl$f;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/tapjoy/internal/gl$f;->e:I

    .line 11886
    iput-object v4, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 11898
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 11902
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    .line 11903
    :goto_2
    return-void

    .line 11902
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 11854
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;B)V
    .locals 0

    .prologue
    .line 11818
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$f;-><init>(Lcom/tapjoy/internal/di;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 11824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 12027
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 12060
    iput v1, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 11825
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    .line 11826
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 11818
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$f;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$f;I)I
    .locals 0

    .prologue
    .line 11818
    iput p1, p0, Lcom/tapjoy/internal/gl$f;->e:I

    return p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12200
    invoke-static {}, Lcom/tapjoy/internal/gl$f$a;->g()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$f;Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$i;
    .locals 0

    .prologue
    .line 11818
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 11818
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11818
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 11818
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static c()Lcom/tapjoy/internal/gl$f;
    .locals 1

    .prologue
    .line 11831
    sget-object v0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$f;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11818
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 11818
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public static k()Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12197
    invoke-static {}, Lcom/tapjoy/internal/gl$f$a;->g()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 11968
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 11969
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11970
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 11973
    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 11976
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private n()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 12010
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 12011
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12012
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 12015
    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 12018
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 12023
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    .line 12024
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 12025
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 12026
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 12047
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->b()I

    .line 12048
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12049
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$i;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->a(I)V

    .line 12051
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12052
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->m()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 12054
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 12055
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->n()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 12057
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 12058
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 12062
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 12063
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12080
    :goto_0
    return v0

    .line 12065
    :cond_0
    const/4 v0, 0x0

    .line 12066
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->e:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 12067
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dj;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 12070
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12071
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->m()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12074
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 12075
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->n()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12078
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 12079
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12029
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 12030
    if-ne v2, v0, :cond_0

    .line 12042
    :goto_0
    return v0

    .line 12031
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 12033
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12034
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$f;->i:B

    move v0, v1

    .line 12035
    goto :goto_0

    .line 12037
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12038
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$f;->i:B

    move v0, v1

    .line 12039
    goto :goto_0

    .line 12041
    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$f;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11929
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->e:I

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

    .line 12092
    if-ne p1, p0, :cond_1

    .line 12116
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 12095
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$f;

    if-nez v0, :cond_2

    .line 12096
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 12098
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$f;

    .line 12100
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 12102
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12103
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    iget-object v3, p1, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 12106
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->g()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 12107
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12108
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 12111
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->i()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 12112
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 12113
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 12100
    goto :goto_1

    :cond_7
    move v0, v2

    .line 12103
    goto :goto_2

    :cond_8
    move v0, v2

    .line 12106
    goto :goto_3

    :cond_9
    move v0, v2

    .line 12108
    goto :goto_4

    :cond_a
    move v0, v2

    .line 12111
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Lcom/tapjoy/internal/gl$i;
    .locals 1

    .prologue
    .line 11935
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 11944
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->e:I

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
    .line 11950
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 11951
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11952
    check-cast v0, Ljava/lang/String;

    .line 11960
    :goto_0
    return-object v0

    .line 11954
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 11956
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 11957
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11958
    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11960
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 12121
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->a:I

    if-eqz v0, :cond_0

    .line 12122
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->a:I

    .line 12141
    :goto_0
    return v0

    .line 12124
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 12126
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12127
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 12128
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gl$f;->f:Lcom/tapjoy/internal/gl$i;

    invoke-static {v1}, Lcom/tapjoy/internal/dm;->a(Lcom/tapjoy/internal/dm$a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12131
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12132
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 12133
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12135
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12136
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 12137
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12139
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12140
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 11986
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->e:I

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
    .line 11992
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 11993
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11994
    check-cast v0, Ljava/lang/String;

    .line 12002
    :goto_0
    return-object v0

    .line 11996
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 11998
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 11999
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12000
    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12002
    goto :goto_0
.end method

.method public final l()Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 12202
    invoke-static {}, Lcom/tapjoy/internal/gl$f$a;->g()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method
