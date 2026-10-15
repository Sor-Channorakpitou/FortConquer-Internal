.class public final Lcom/tapjoy/internal/gl$d;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$d$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$d;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:Ljava/util/List;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16527
    new-instance v0, Lcom/tapjoy/internal/gl$d$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$d;->b:Lcom/tapjoy/internal/ds;

    .line 16948
    new-instance v0, Lcom/tapjoy/internal/gl$d;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d;-><init>()V

    .line 16949
    sput-object v0, Lcom/tapjoy/internal/gl$d;->c:Lcom/tapjoy/internal/gl$d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    .line 16950
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 16460
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 16580
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 16605
    iput v0, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 16460
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 16475
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 16580
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 16605
    iput v1, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 16476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    .line 16478
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v3

    .line 16480
    const/16 v1, 0x1000

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v4

    move v1, v0

    .line 16485
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 16486
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v5

    .line 16487
    sparse-switch v5, :sswitch_data_0

    .line 16492
    invoke-virtual {p1, v5, v4}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v2

    .line 16494
    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 16490
    goto :goto_0

    .line 16499
    :sswitch_1
    and-int/lit8 v5, v0, 0x1

    if-eq v5, v2, :cond_1

    .line 16500
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    .line 16501
    or-int/lit8 v0, v0, 0x1

    .line 16503
    :cond_1
    iget-object v5, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    sget-object v6, Lcom/tapjoy/internal/gl$c;->b:Lcom/tapjoy/internal/ds;

    invoke-virtual {p1, v6, p2}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/ds;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 16524
    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16514
    :catchall_0
    move-exception v0

    :goto_1
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    .line 16515
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    .line 16518
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16522
    invoke-virtual {v3}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    .line 16524
    :goto_2
    throw v0

    .line 16514
    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    .line 16515
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    .line 16518
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16522
    invoke-virtual {v3}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    .line 16523
    :goto_3
    return-void

    .line 16522
    :catch_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 16510
    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 16511
    :try_start_4
    new-instance v5, Lcom/tapjoy/internal/dn;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tapjoy/internal/dn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16522
    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 16514
    :catchall_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    .line 16487
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;B)V
    .locals 0

    .prologue
    .line 16451
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gl$d;-><init>(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 16457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 16580
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 16605
    iput v1, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 16458
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    .line 16459
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 16451
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$d;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16451
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 16451
    iput-object p1, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$d;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 16451
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public static c()Lcom/tapjoy/internal/gl$d;
    .locals 1

    .prologue
    .line 16464
    sget-object v0, Lcom/tapjoy/internal/gl$d;->c:Lcom/tapjoy/internal/gl$d;

    return-object v0
.end method

.method public static f()Lcom/tapjoy/internal/gl$d$a;
    .locals 1

    .prologue
    .line 16712
    invoke-static {}, Lcom/tapjoy/internal/gl$d$a;->g()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 16561
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 3

    .prologue
    .line 16598
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$d;->b()I

    .line 16599
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 16600
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dq;

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dq;)V

    .line 16599
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 16602
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 16603
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 16607
    iget v1, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 16608
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 16617
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 16611
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 16612
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dq;

    invoke-static {v3, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dq;)I

    move-result v0

    add-int/2addr v2, v0

    .line 16611
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 16615
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->a()I

    move-result v0

    add-int/2addr v0, v2

    .line 16616
    iput v0, p0, Lcom/tapjoy/internal/gl$d;->g:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16582
    iget-byte v0, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 16583
    if-ne v0, v3, :cond_1

    move v2, v3

    .line 16593
    :cond_0
    :goto_0
    return v2

    .line 16584
    :cond_1
    if-eqz v0, :cond_0

    move v1, v2

    .line 16586
    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d;->g()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 16587
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16588
    iput-byte v2, p0, Lcom/tapjoy/internal/gl$d;->f:B

    goto :goto_0

    .line 16586
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 16592
    :cond_3
    iput-byte v3, p0, Lcom/tapjoy/internal/gl$d;->f:B

    move v2, v3

    .line 16593
    goto :goto_0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 16548
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 16629
    if-ne p1, p0, :cond_1

    .line 16640
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 16632
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/tapjoy/internal/gl$d;

    if-nez v1, :cond_2

    .line 16633
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 16635
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$d;

    .line 16637
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 16640
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 16645
    iget v0, p0, Lcom/tapjoy/internal/gl$d;->a:I

    if-eqz v0, :cond_0

    .line 16646
    iget v0, p0, Lcom/tapjoy/internal/gl$d;->a:I

    .line 16656
    :goto_0
    return v0

    .line 16648
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 16650
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d;->g()I

    move-result v1

    if-lez v1, :cond_1

    .line 16651
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 16652
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16654
    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16655
    iput v0, p0, Lcom/tapjoy/internal/gl$d;->a:I

    goto :goto_0
.end method
