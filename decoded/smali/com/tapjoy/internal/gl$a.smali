.class public final Lcom/tapjoy/internal/gl$a;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$a$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$a;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3127
    new-instance v0, Lcom/tapjoy/internal/gl$a$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$a$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$a;->b:Lcom/tapjoy/internal/ds;

    .line 4005
    new-instance v0, Lcom/tapjoy/internal/gl$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$a;-><init>()V

    .line 4006
    sput-object v0, Lcom/tapjoy/internal/gl$a;->c:Lcom/tapjoy/internal/gl$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$a;->u()V

    .line 4007
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3042
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 3333
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$a;->k:B

    .line 3364
    iput v0, p0, Lcom/tapjoy/internal/gl$a;->l:I

    .line 3042
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 3057
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 3333
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$a;->k:B

    .line 3364
    iput v0, p0, Lcom/tapjoy/internal/gl$a;->l:I

    .line 3058
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->u()V

    .line 3059
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v2

    .line 3062
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 3066
    const/4 v0, 0x0

    .line 3067
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3068
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v4

    .line 3069
    sparse-switch v4, :sswitch_data_0

    .line 3074
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 3076
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 3072
    goto :goto_0

    .line 3081
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 3082
    iget v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    .line 3083
    iput-object v4, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3124
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3117
    :catchall_0
    move-exception v0

    .line 3118
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3122
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    .line 3124
    :goto_1
    throw v0

    .line 3087
    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$a;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gl$a;->e:I

    .line 3088
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->e()I

    move-result v4

    iput v4, p0, Lcom/tapjoy/internal/gl$a;->g:I
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3113
    :catch_1
    move-exception v0

    .line 3114
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

    .line 3092
    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 3093
    iget v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    .line 3094
    iput-object v4, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    goto :goto_0

    .line 3098
    :sswitch_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 3099
    iget v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    .line 3100
    iput-object v4, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    goto :goto_0

    .line 3104
    :sswitch_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 3105
    iget v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/tapjoy/internal/gl$a;->e:I

    .line 3106
    iput-object v4, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3118
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3122
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    .line 3123
    :goto_2
    return-void

    .line 3122
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 3069
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;B)V
    .locals 0

    .prologue
    .line 3033
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/di;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3039
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 3333
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$a;->k:B

    .line 3364
    iput v1, p0, Lcom/tapjoy/internal/gl$a;->l:I

    .line 3040
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    .line 3041
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 3033
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$a;I)I
    .locals 0

    .prologue
    .line 3033
    iput p1, p0, Lcom/tapjoy/internal/gl$a;->g:I

    return p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 3529
    invoke-static {}, Lcom/tapjoy/internal/gl$a$a;->i()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3033
    iput-object p1, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$a;I)I
    .locals 0

    .prologue
    .line 3033
    iput p1, p0, Lcom/tapjoy/internal/gl$a;->e:I

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3033
    iput-object p1, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static c()Lcom/tapjoy/internal/gl$a;
    .locals 1

    .prologue
    .line 3046
    sget-object v0, Lcom/tapjoy/internal/gl$a;->c:Lcom/tapjoy/internal/gl$a;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3033
    iput-object p1, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3033
    iput-object p1, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public static o()Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 3526
    invoke-static {}, Lcom/tapjoy/internal/gl$a$a;->i()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    .line 3174
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3175
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 3178
    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    .line 3181
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private r()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    .line 3231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3232
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 3235
    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    .line 3238
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private s()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    .line 3273
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3274
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 3277
    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    .line 3280
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private t()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    .line 3315
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3316
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 3319
    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    .line 3322
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 3327
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    .line 3328
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gl$a;->g:I

    .line 3329
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    .line 3330
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    .line 3331
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    .line 3332
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3345
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->b()I

    .line 3346
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3347
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->q()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 3349
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3350
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->g:I

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dj;->a(II)V

    .line 3352
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3353
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->r()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 3355
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 3356
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->s()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 3358
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3359
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->t()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 3361
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 3362
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3366
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->l:I

    .line 3367
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3392
    :goto_0
    return v0

    .line 3369
    :cond_0
    const/4 v0, 0x0

    .line 3370
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3371
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->q()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3374
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3375
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->g:I

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3378
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3379
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->r()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3382
    :cond_3
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 3383
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->s()Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3386
    :cond_4
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->e:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 3387
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a;->t()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3390
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 3391
    iput v0, p0, Lcom/tapjoy/internal/gl$a;->l:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3335
    iget-byte v1, p0, Lcom/tapjoy/internal/gl$a;->k:B

    .line 3336
    if-ne v1, v0, :cond_0

    .line 3340
    :goto_0
    return v0

    .line 3337
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3339
    :cond_1
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$a;->k:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3149
    iget v1, p0, Lcom/tapjoy/internal/gl$a;->e:I

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

    .line 3404
    if-ne p1, p0, :cond_1

    .line 3438
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 3407
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$a;

    if-nez v0, :cond_2

    .line 3408
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 3410
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$a;

    .line 3412
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 3414
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3415
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 3418
    :cond_3
    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 3419
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3420
    if-eqz v0, :cond_b

    iget v0, p0, Lcom/tapjoy/internal/gl$a;->g:I

    iget v3, p1, Lcom/tapjoy/internal/gl$a;->g:I

    if-ne v0, v3, :cond_b

    move v0, v1

    .line 3423
    :cond_4
    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->i()Z

    move-result v3

    if-ne v0, v3, :cond_c

    move v0, v1

    .line 3424
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3425
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 3428
    :cond_5
    :goto_6
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->k()Z

    move-result v3

    if-ne v0, v3, :cond_e

    move v0, v1

    .line 3429
    :goto_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3430
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 3433
    :cond_6
    :goto_8
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->m()Z

    move-result v3

    if-ne v0, v3, :cond_10

    move v0, v1

    .line 3434
    :goto_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->m()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3435
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 3412
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 3415
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 3418
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 3420
    goto :goto_4

    :cond_c
    move v0, v2

    .line 3423
    goto :goto_5

    :cond_d
    move v0, v2

    .line 3425
    goto :goto_6

    :cond_e
    move v0, v2

    .line 3428
    goto :goto_7

    :cond_f
    move v0, v2

    .line 3430
    goto :goto_8

    :cond_10
    move v0, v2

    .line 3433
    goto :goto_9

    :cond_11
    move v1, v0

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    .line 3156
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3157
    check-cast v0, Ljava/lang/String;

    .line 3165
    :goto_0
    return-object v0

    .line 3159
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 3161
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 3162
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3163
    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3165
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 3191
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

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
    .line 3197
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->g:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 3443
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->a:I

    if-eqz v0, :cond_0

    .line 3444
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->a:I

    .line 3470
    :goto_0
    return v0

    .line 3446
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 3448
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3449
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 3450
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3452
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3453
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 3454
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/tapjoy/internal/gl$a;->g:I

    add-int/2addr v0, v1

    .line 3456
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3457
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 3458
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3460
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3461
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 3462
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3464
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3465
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 3466
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3468
    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$a;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3469
    iput v0, p0, Lcom/tapjoy/internal/gl$a;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 3206
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

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
    .line 3212
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    .line 3213
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3214
    check-cast v0, Ljava/lang/String;

    .line 3222
    :goto_0
    return-object v0

    .line 3216
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 3218
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 3219
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3220
    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3222
    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 3248
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

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
    .line 3254
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    .line 3255
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3256
    check-cast v0, Ljava/lang/String;

    .line 3264
    :goto_0
    return-object v0

    .line 3258
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 3260
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 3261
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3262
    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3264
    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 3290
    iget v0, p0, Lcom/tapjoy/internal/gl$a;->e:I

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
    .line 3296
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    .line 3297
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3298
    check-cast v0, Ljava/lang/String;

    .line 3306
    :goto_0
    return-object v0

    .line 3300
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 3302
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 3303
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3304
    iput-object v1, p0, Lcom/tapjoy/internal/gl$a;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3306
    goto :goto_0
.end method

.method public final p()Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 3531
    invoke-static {}, Lcom/tapjoy/internal/gl$a$a;->i()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method
