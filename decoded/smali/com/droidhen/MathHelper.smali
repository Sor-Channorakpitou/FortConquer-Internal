.class public Lcom/droidhen/MathHelper;
.super Ljava/lang/Object;
.source "MathHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Norm_rand(DD)D
    .locals 12
    .param p0, "miu"    # D
    .param p2, "sigma"    # D

    .prologue
    .line 18
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 19
    .local v0, "N":D
    const-wide/16 v6, 0x0

    .local v6, "x":D
    move-wide v4, v0

    .line 21
    .local v4, "temp":D
    :cond_0
    const-wide/16 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    int-to-double v8, v2

    cmpg-double v3, v8, v0

    if-ltz v3, :cond_1

    .line 24
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v4, v8

    sub-double v8, v6, v8

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    div-double v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v6, v8, v10

    .line 25
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double v6, p0, v8

    .line 26
    const-wide/16 v8, 0x0

    .line 20
    cmpg-double v3, v6, v8

    if-lez v3, :cond_0

    .line 27
    return-wide v6

    .line 23
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static distance(DDDD)D
    .locals 6
    .param p0, "x0"    # D
    .param p2, "y0"    # D
    .param p4, "x1"    # D
    .param p6, "y1"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 40
    sub-double v0, p4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p6, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getMax([D)D
    .locals 7
    .param p0, "numbers"    # [D

    .prologue
    const/4 v4, 0x0

    .line 31
    aget-wide v0, p0, v4

    .line 32
    .local v0, "max":D
    array-length v5, p0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 36
    return-wide v0

    .line 32
    :cond_0
    aget-wide v2, p0, v4

    .line 33
    .local v2, "num":D
    cmpl-double v6, v2, v0

    if-lez v6, :cond_1

    .line 34
    move-wide v0, v2

    .line 32
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
