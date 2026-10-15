.class final Lcom/tapjoy/internal/du;
.super Lcom/tapjoy/internal/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/du$c;,
        Lcom/tapjoy/internal/du$b;,
        Lcom/tapjoy/internal/du$a;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private final d:I

.field private final e:Lcom/tapjoy/internal/dh;

.field private final f:Lcom/tapjoy/internal/dh;

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 97
    :goto_0
    if-lez v0, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 102
    goto :goto_0

    .line 106
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tapjoy/internal/du;->c:[I

    .line 108
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/tapjoy/internal/du;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 110
    sget-object v3, Lcom/tapjoy/internal/du;->c:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/tapjoy/internal/dh;-><init>()V

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/du;->i:I

    .line 130
    iput-object p1, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    .line 131
    iput-object p2, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    .line 132
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/du;->g:I

    .line 133
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    invoke-virtual {p2}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/du;->d:I

    .line 134
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->i()I

    move-result v0

    invoke-virtual {p2}, Lcom/tapjoy/internal/dh;->i()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/du;->h:I

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;B)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/du;-><init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)V

    return-void
.end method

.method static a(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x0

    .line 153
    instance-of v0, p0, Lcom/tapjoy/internal/du;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/du;

    .line 155
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :goto_1
    return-object p0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    if-nez v1, :cond_2

    move-object p0, p1

    .line 158
    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    if-ge v1, v5, :cond_3

    .line 164
    invoke-static {p0, p1}, Lcom/tapjoy/internal/du;->b(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dp;

    move-result-object p0

    goto :goto_1

    .line 165
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v5, :cond_4

    .line 177
    iget-object v1, v0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    invoke-static {v1, p1}, Lcom/tapjoy/internal/du;->b(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dp;

    move-result-object v1

    .line 178
    new-instance p0, Lcom/tapjoy/internal/du;

    iget-object v0, v0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/du;-><init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)V

    goto :goto_1

    .line 179
    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v2}, Lcom/tapjoy/internal/dh;->i()I

    move-result v2

    iget-object v3, v0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    invoke-virtual {v3}, Lcom/tapjoy/internal/dh;->i()I

    move-result v3

    if-le v2, v3, :cond_5

    iget v2, v0, Lcom/tapjoy/internal/du;->h:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->i()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 187
    new-instance v1, Lcom/tapjoy/internal/du;

    iget-object v2, v0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    invoke-direct {v1, v2, p1}, Lcom/tapjoy/internal/du;-><init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)V

    .line 188
    new-instance p0, Lcom/tapjoy/internal/du;

    iget-object v0, v0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/du;-><init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)V

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->i()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 193
    sget-object v2, Lcom/tapjoy/internal/du;->c:[I

    aget v0, v2, v0

    if-lt v1, v0, :cond_6

    .line 195
    new-instance v1, Lcom/tapjoy/internal/du;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/du;-><init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)V

    move-object p0, v1

    goto :goto_1

    .line 197
    :cond_6
    new-instance v3, Lcom/tapjoy/internal/du$a;

    invoke-direct {v3, v4}, Lcom/tapjoy/internal/du$a;-><init>(B)V

    invoke-virtual {v3, p0}, Lcom/tapjoy/internal/du$a;->a(Lcom/tapjoy/internal/dh;)V

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/du$a;->a(Lcom/tapjoy/internal/dh;)V

    iget-object v0, v3, Lcom/tapjoy/internal/du$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dh;

    move-object v1, v0

    :goto_2
    iget-object v0, v3, Lcom/tapjoy/internal/du$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/tapjoy/internal/du$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dh;

    new-instance v2, Lcom/tapjoy/internal/du;

    invoke-direct {v2, v0, v1, v4}, Lcom/tapjoy/internal/du;-><init>(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;B)V

    move-object v1, v2

    goto :goto_2

    :cond_7
    move-object p0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method private static b(Lcom/tapjoy/internal/dh;Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dp;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh;->a()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    .line 216
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 217
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/tapjoy/internal/dh;->b([BIII)V

    .line 218
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tapjoy/internal/dh;->b([BIII)V

    .line 219
    new-instance v0, Lcom/tapjoy/internal/dp;

    invoke-direct {v0, v2}, Lcom/tapjoy/internal/dp;-><init>([B)V

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/tapjoy/internal/du;->c:[I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    return v0
.end method

.method protected final a(III)I
    .locals 4

    .prologue
    .line 436
    add-int v0, p2, p3

    .line 437
    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    if-gt v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/dh;->a(III)I

    move-result v0

    .line 444
    :goto_0
    return v0

    .line 439
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    if-lt p2, v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tapjoy/internal/dh;->a(III)I

    move-result v0

    goto :goto_0

    .line 442
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int/2addr v0, p2

    .line 443
    iget-object v1, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tapjoy/internal/dh;->a(III)I

    move-result v1

    .line 444
    iget-object v2, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/tapjoy/internal/dh;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method protected final a([BIII)V
    .locals 4

    .prologue
    .line 360
    add-int v0, p2, p4

    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    if-gt v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/dh;->a([BIII)V

    .line 371
    :goto_0
    return-void

    .line 362
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    if-lt p2, v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/tapjoy/internal/dh;->a([BIII)V

    goto :goto_0

    .line 366
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int/2addr v0, p2

    .line 367
    iget-object v1, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/tapjoy/internal/dh;->a([BIII)V

    .line 368
    iget-object v1, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/tapjoy/internal/dh;->a([BIII)V

    goto :goto_0
.end method

.method protected final b(III)I
    .locals 4

    .prologue
    .line 567
    add-int v0, p2, p3

    .line 568
    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    if-gt v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/dh;->b(III)I

    move-result v0

    .line 575
    :goto_0
    return v0

    .line 570
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    if-lt p2, v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tapjoy/internal/dh;->b(III)I

    move-result v0

    goto :goto_0

    .line 573
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int/2addr v0, p2

    .line 574
    iget-object v1, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tapjoy/internal/dh;->b(III)I

    move-result v1

    .line 575
    iget-object v2, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/tapjoy/internal/dh;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/du;->e()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method final b(Ljava/io/OutputStream;II)V
    .locals 3

    .prologue
    .line 407
    add-int v0, p2, p3

    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    if-gt v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/dh;->b(Ljava/io/OutputStream;II)V

    .line 416
    :goto_0
    return-void

    .line 409
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    if-lt p2, v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    iget v1, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tapjoy/internal/dh;->b(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 412
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/du;->g:I

    sub-int/2addr v0, p2

    .line 413
    iget-object v1, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tapjoy/internal/dh;->b(Ljava/io/OutputStream;II)V

    .line 414
    iget-object v1, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    const/4 v2, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/dh;->b(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method public final c()Lcom/tapjoy/internal/dh$a;
    .locals 2

    .prologue
    .line 779
    new-instance v0, Lcom/tapjoy/internal/du$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/du$c;-><init>(Lcom/tapjoy/internal/du;B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 453
    if-ne p1, p0, :cond_1

    move v2, v7

    .line 480
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 456
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/dh;

    if-eqz v0, :cond_0

    .line 460
    check-cast p1, Lcom/tapjoy/internal/dh;

    .line 461
    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 464
    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    if-nez v0, :cond_2

    move v2, v7

    .line 465
    goto :goto_0

    .line 473
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/du;->i:I

    if-eqz v0, :cond_3

    .line 474
    invoke-virtual {p1}, Lcom/tapjoy/internal/dh;->k()I

    move-result v0

    .line 475
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/tapjoy/internal/du;->i:I

    if-ne v1, v0, :cond_0

    .line 480
    :cond_3
    new-instance v8, Lcom/tapjoy/internal/du$b;

    invoke-direct {v8, p0, v2}, Lcom/tapjoy/internal/du$b;-><init>(Lcom/tapjoy/internal/dh;B)V

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dp;

    new-instance v9, Lcom/tapjoy/internal/du$b;

    invoke-direct {v9, p1, v2}, Lcom/tapjoy/internal/du$b;-><init>(Lcom/tapjoy/internal/dh;B)V

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/dp;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    :goto_1
    invoke-virtual {v5}, Lcom/tapjoy/internal/dp;->a()I

    move-result v1

    sub-int v10, v1, v6

    invoke-virtual {v3}, Lcom/tapjoy/internal/dp;->a()I

    move-result v1

    sub-int v11, v1, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-nez v6, :cond_4

    invoke-virtual {v5, v3, v4, v12}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/dp;II)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_0

    add-int v1, v0, v12

    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    if-lt v1, v0, :cond_6

    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    if-ne v1, v0, :cond_5

    move v2, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v5, v6, v12}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/dp;II)Z

    move-result v1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    if-ne v12, v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dp;

    move-object v5, v0

    move v6, v2

    :goto_3
    if-ne v12, v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dp;

    move-object v3, v0

    move v4, v2

    move v0, v1

    goto :goto_1

    :cond_7
    add-int/2addr v6, v12

    goto :goto_3

    :cond_8
    add-int v0, v4, v12

    move v4, v0

    move v0, v1

    goto :goto_1
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 429
    iget-object v1, p0, Lcom/tapjoy/internal/du;->e:Lcom/tapjoy/internal/dh;

    iget v2, p0, Lcom/tapjoy/internal/du;->g:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/tapjoy/internal/dh;->a(III)I

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    iget-object v3, p0, Lcom/tapjoy/internal/du;->f:Lcom/tapjoy/internal/dh;

    invoke-virtual {v3}, Lcom/tapjoy/internal/dh;->a()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/tapjoy/internal/dh;->a(III)I

    move-result v1

    .line 431
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 547
    iget v0, p0, Lcom/tapjoy/internal/du;->i:I

    .line 549
    if-nez v0, :cond_1

    .line 550
    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    .line 551
    const/4 v1, 0x0

    iget v2, p0, Lcom/tapjoy/internal/du;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/tapjoy/internal/du;->b(III)I

    move-result v0

    .line 552
    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 555
    :cond_0
    iput v0, p0, Lcom/tapjoy/internal/du;->i:I

    .line 557
    :cond_1
    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/tapjoy/internal/du;->h:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/tapjoy/internal/du;->c()Lcom/tapjoy/internal/dh$a;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Z
    .locals 3

    .prologue
    .line 290
    iget v0, p0, Lcom/tapjoy/internal/du;->d:I

    sget-object v1, Lcom/tapjoy/internal/du;->c:[I

    iget v2, p0, Lcom/tapjoy/internal/du;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final k()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/tapjoy/internal/du;->i:I

    return v0
.end method
