.class public final Lcom/tapjoy/internal/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dj$a;
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field final c:Ljava/io/OutputStream;

.field private final d:[B

.field private e:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/tapjoy/internal/dj;->e:I

    .line 86
    iput-object p1, p0, Lcom/tapjoy/internal/dj;->c:Ljava/io/OutputStream;

    .line 87
    iput-object p2, p0, Lcom/tapjoy/internal/dj;->d:[B

    .line 88
    iput v0, p0, Lcom/tapjoy/internal/dj;->b:I

    .line 89
    array-length v0, p2

    iput v0, p0, Lcom/tapjoy/internal/dj;->a:I

    .line 90
    return-void
.end method

.method constructor <init>([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Lcom/tapjoy/internal/dj;->e:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/dj;->c:Ljava/io/OutputStream;

    .line 80
    iput-object p1, p0, Lcom/tapjoy/internal/dj;->d:[B

    .line 81
    iput v1, p0, Lcom/tapjoy/internal/dj;->b:I

    .line 82
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dj;->a:I

    .line 83
    return-void
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dj;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/tapjoy/internal/dj;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dj;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static b(I)I
    .locals 2

    .prologue
    .line 681
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/internal/dj;->d(I)I

    move-result v0

    invoke-static {p0}, Lcom/tapjoy/internal/dj;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(II)I
    .locals 2

    .prologue
    .line 560
    invoke-static {p0}, Lcom/tapjoy/internal/dj;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/tapjoy/internal/dj;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 552
    invoke-static {p0}, Lcom/tapjoy/internal/dj;->d(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(ILcom/tapjoy/internal/dh;)I
    .locals 3

    .prologue
    .line 637
    invoke-static {p0}, Lcom/tapjoy/internal/dj;->d(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/internal/dj;->h(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/tapjoy/internal/dq;)I
    .locals 3

    .prologue
    .line 628
    invoke-static {p0}, Lcom/tapjoy/internal/dj;->d(I)I

    move-result v0

    invoke-interface {p1}, Lcom/tapjoy/internal/dq;->b()I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/internal/dj;->h(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 958
    iget-object v0, p0, Lcom/tapjoy/internal/dj;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/tapjoy/internal/dj$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/dj$a;-><init>()V

    throw v0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dj;->c:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tapjoy/internal/dj;->d:[B

    iget v2, p0, Lcom/tapjoy/internal/dj;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 966
    iput v3, p0, Lcom/tapjoy/internal/dj;->b:I

    .line 967
    return-void
.end method

.method private c(II)V
    .locals 1

    .prologue
    .line 1180
    invoke-static {p1, p2}, Lcom/tapjoy/internal/dx;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->e(I)V

    .line 1181
    return-void
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/dx;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dj;->h(I)I

    move-result v0

    return v0
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 395
    if-ltz p1, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dj;->e(I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/dj;->a(J)V

    goto :goto_0
.end method

.method private static g(I)I
    .locals 1

    .prologue
    .line 793
    if-ltz p0, :cond_0

    .line 794
    invoke-static {p0}, Lcom/tapjoy/internal/dj;->h(I)I

    move-result v0

    .line 797
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static h(I)I
    .locals 1

    .prologue
    .line 1210
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1214
    :goto_0
    return v0

    .line 1211
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1212
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1213
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1214
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/tapjoy/internal/dj;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 975
    invoke-direct {p0}, Lcom/tapjoy/internal/dj;->b()V

    .line 977
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 314
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dj;->f(I)V

    .line 315
    return-void
.end method

.method public final a(ID)V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 171
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/dj;->b(J)V

    .line 172
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 199
    invoke-direct {p0, p2}, Lcom/tapjoy/internal/dj;->f(I)V

    .line 200
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 192
    invoke-virtual {p0, p2, p3}, Lcom/tapjoy/internal/dj;->a(J)V

    .line 193
    return-void
.end method

.method public final a(ILcom/tapjoy/internal/dh;)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 264
    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/dj;->a(Lcom/tapjoy/internal/dh;)V

    .line 265
    return-void
.end method

.method public final a(ILcom/tapjoy/internal/dq;)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 256
    invoke-interface {p2}, Lcom/tapjoy/internal/dq;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->e(I)V

    invoke-interface {p2, p0}, Lcom/tapjoy/internal/dq;->a(Lcom/tapjoy/internal/dj;)V

    .line 257
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dj;->c(II)V

    .line 220
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 221
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 1220
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1221
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1222
    return-void

    .line 1224
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1225
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/dh;)V
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->e(I)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dj;->b(Lcom/tapjoy/internal/dh;)V

    .line 457
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 1256
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1257
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1258
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1259
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1260
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1261
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1262
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1263
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1264
    return-void
.end method

.method public final b(Lcom/tapjoy/internal/dh;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1047
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/dj;->a:I

    iget v2, p0, Lcom/tapjoy/internal/dj;->b:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/dj;->d:[B

    iget v2, p0, Lcom/tapjoy/internal/dj;->b:I

    invoke-virtual {p1, v1, v4, v2, v0}, Lcom/tapjoy/internal/dh;->b([BIII)V

    iget v1, p0, Lcom/tapjoy/internal/dj;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tapjoy/internal/dj;->b:I

    :goto_0
    iget v1, p0, Lcom/tapjoy/internal/dj;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dj;->e:I

    .line 1048
    return-void

    .line 1047
    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/dj;->a:I

    iget v2, p0, Lcom/tapjoy/internal/dj;->b:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tapjoy/internal/dj;->d:[B

    iget v3, p0, Lcom/tapjoy/internal/dj;->b:I

    invoke-virtual {p1, v2, v4, v3, v1}, Lcom/tapjoy/internal/dh;->b([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/tapjoy/internal/dj;->a:I

    iput v3, p0, Lcom/tapjoy/internal/dj;->b:I

    iget v3, p0, Lcom/tapjoy/internal/dj;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tapjoy/internal/dj;->e:I

    invoke-direct {p0}, Lcom/tapjoy/internal/dj;->b()V

    iget v1, p0, Lcom/tapjoy/internal/dj;->a:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/internal/dj;->d:[B

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/tapjoy/internal/dh;->b([BIII)V

    iput v0, p0, Lcom/tapjoy/internal/dj;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/dj;->c:Ljava/io/OutputStream;

    invoke-virtual {p1, v1, v2, v0}, Lcom/tapjoy/internal/dh;->a(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 4

    .prologue
    .line 1042
    int-to-byte v0, p1

    iget v1, p0, Lcom/tapjoy/internal/dj;->b:I

    iget v2, p0, Lcom/tapjoy/internal/dj;->a:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/internal/dj;->b()V

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/dj;->d:[B

    iget v2, p0, Lcom/tapjoy/internal/dj;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tapjoy/internal/dj;->b:I

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/tapjoy/internal/dj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dj;->e:I

    .line 1043
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 1194
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1195
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1196
    return-void

    .line 1198
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->c(I)V

    .line 1199
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
