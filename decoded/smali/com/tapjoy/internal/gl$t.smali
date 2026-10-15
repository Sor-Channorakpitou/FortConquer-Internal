.class public final Lcom/tapjoy/internal/gl$t;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$t$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/ds;

.field private static final c:Lcom/tapjoy/internal/gl$t;


# instance fields
.field private final d:Lcom/tapjoy/internal/dh;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:J

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4132
    new-instance v0, Lcom/tapjoy/internal/gl$t$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$t;->b:Lcom/tapjoy/internal/ds;

    .line 4663
    new-instance v0, Lcom/tapjoy/internal/gl$t;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t;-><init>()V

    .line 4664
    sput-object v0, Lcom/tapjoy/internal/gl$t;->c:Lcom/tapjoy/internal/gl$t;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t;->m()V

    .line 4665
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4060
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 4225
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4258
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4060
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/di;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 4075
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;-><init>()V

    .line 4225
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4258
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4076
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t;->m()V

    .line 4077
    invoke-static {}, Lcom/tapjoy/internal/dh;->h()Lcom/tapjoy/internal/dh$b;

    move-result-object v2

    .line 4080
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;

    move-result-object v3

    .line 4084
    const/4 v0, 0x0

    .line 4085
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4086
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->a()I

    move-result v4

    .line 4087
    sparse-switch v4, :sswitch_data_0

    .line 4092
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/di;->a(ILcom/tapjoy/internal/dj;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 4094
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 4090
    goto :goto_0

    .line 4099
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->d()Lcom/tapjoy/internal/dh;

    move-result-object v4

    .line 4100
    iget v5, p0, Lcom/tapjoy/internal/gl$t;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$t;->e:I

    .line 4101
    iput-object v4, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4129
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4122
    :catchall_0
    move-exception v0

    .line 4123
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4127
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    .line 4129
    :goto_1
    throw v0

    .line 4105
    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$t;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gl$t;->e:I

    .line 4106
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gl$t;->g:J
    :try_end_3
    .catch Lcom/tapjoy/internal/dn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4118
    :catch_1
    move-exception v0

    .line 4119
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

    .line 4110
    :sswitch_3
    :try_start_5
    iget v4, p0, Lcom/tapjoy/internal/gl$t;->e:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/internal/gl$t;->e:I

    .line 4111
    invoke-virtual {p1}, Lcom/tapjoy/internal/di;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gl$t;->h:J
    :try_end_5
    .catch Lcom/tapjoy/internal/dn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 4123
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dj;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4127
    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    .line 4128
    :goto_2
    return-void

    .line 4127
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh$b;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    throw v0

    .line 4087
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/di;B)V
    .locals 0

    .prologue
    .line 4051
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$t;-><init>(Lcom/tapjoy/internal/di;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4057
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;-><init>(B)V

    .line 4225
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4258
    iput v1, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4058
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl$a;->c()Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    .line 4059
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl$a;B)V
    .locals 0

    .prologue
    .line 4051
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$t;-><init>(Lcom/tapjoy/internal/dl$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$t;I)I
    .locals 0

    .prologue
    .line 4051
    iput p1, p0, Lcom/tapjoy/internal/gl$t;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$t;J)J
    .locals 1

    .prologue
    .line 4051
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t;->g:J

    return-wide p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4399
    invoke-static {}, Lcom/tapjoy/internal/gl$t$a;->f()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$t$a;->a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4051
    iput-object p1, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$t;J)J
    .locals 1

    .prologue
    .line 4051
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$t;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public static c()Lcom/tapjoy/internal/gl$t;
    .locals 1

    .prologue
    .line 4064
    sget-object v0, Lcom/tapjoy/internal/gl$t;->c:Lcom/tapjoy/internal/gl$t;

    return-object v0
.end method

.method public static k()Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4396
    invoke-static {}, Lcom/tapjoy/internal/gl$t$a;->f()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/tapjoy/internal/dh;
    .locals 2

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    .line 4179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4180
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 4183
    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    .line 4186
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 4221
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    .line 4222
    iput-wide v2, p0, Lcom/tapjoy/internal/gl$t;->g:J

    .line 4223
    iput-wide v2, p0, Lcom/tapjoy/internal/gl$t;->h:J

    .line 4224
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dj;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4245
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->b()I

    .line 4246
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4247
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t;->l()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dj;->a(ILcom/tapjoy/internal/dh;)V

    .line 4249
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4250
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$t;->g:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/tapjoy/internal/dj;->a(IJ)V

    .line 4252
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4253
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->h:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dj;->a(IJ)V

    .line 4255
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 4256
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 4260
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4261
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4278
    :goto_0
    return v0

    .line 4263
    :cond_0
    const/4 v0, 0x0

    .line 4264
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4265
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t;->l()Lcom/tapjoy/internal/dh;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dj;->b(ILcom/tapjoy/internal/dh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4268
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 4269
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->g:J

    invoke-static {v4, v2, v3}, Lcom/tapjoy/internal/dj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4272
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 4273
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->h:J

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/dj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4276
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 4277
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4227
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4228
    if-ne v2, v0, :cond_0

    .line 4240
    :goto_0
    return v0

    .line 4229
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 4231
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4232
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$t;->i:B

    move v0, v1

    .line 4233
    goto :goto_0

    .line 4235
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4236
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$t;->i:B

    move v0, v1

    .line 4237
    goto :goto_0

    .line 4239
    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$t;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4154
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->e:I

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

    .line 4290
    if-ne p1, p0, :cond_1

    .line 4314
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 4293
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$t;

    if-nez v0, :cond_2

    .line 4294
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 4296
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$t;

    .line 4298
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 4300
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4301
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 4304
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 4305
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4306
    if-eqz v0, :cond_9

    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t;->g:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gl$t;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    move v0, v1

    .line 4309
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->i()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 4310
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4311
    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t;->h:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gl$t;->h:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 4298
    goto :goto_1

    :cond_7
    move v0, v2

    .line 4301
    goto :goto_2

    :cond_8
    move v0, v2

    .line 4304
    goto :goto_3

    :cond_9
    move v0, v2

    .line 4306
    goto :goto_4

    :cond_a
    move v0, v2

    .line 4309
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    .line 4161
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4162
    check-cast v0, Ljava/lang/String;

    .line 4170
    :goto_0
    return-object v0

    .line 4164
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dh;

    .line 4166
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->f()Ljava/lang/String;

    move-result-object v1

    .line 4167
    invoke-virtual {v0}, Lcom/tapjoy/internal/dh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4168
    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4170
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 4196
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->e:I

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
    .line 4202
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$t;->g:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 4319
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->a:I

    if-eqz v0, :cond_0

    .line 4320
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->a:I

    .line 4340
    :goto_0
    return v0

    .line 4322
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 4324
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4325
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 4326
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4328
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4329
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 4330
    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->g:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dm;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4333
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4334
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 4335
    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->h:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dm;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4338
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$t;->d:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4339
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 4211
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->e:I

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

.method public final j()J
    .locals 2

    .prologue
    .line 4217
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$t;->h:J

    return-wide v0
.end method
