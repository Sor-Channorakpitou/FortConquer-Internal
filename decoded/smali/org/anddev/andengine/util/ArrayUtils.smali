.class public Lorg/anddev/andengine/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([BI[BII)Z
    .locals 6
    .param p0, "pArrayA"    # [B
    .param p1, "pOffsetA"    # I
    .param p2, "pArrayB"    # [B
    .param p3, "pOffsetB"    # I
    .param p4, "pLength"    # I

    .prologue
    .line 152
    add-int v2, p1, p4

    .line 153
    .local v2, "lastIndexA":I
    array-length v4, p0

    if-le v2, v4, :cond_0

    .line 154
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 157
    :cond_0
    add-int v3, p3, p4

    .line 158
    .local v3, "lastIndexB":I
    array-length v4, p2

    if-le v3, v4, :cond_1

    .line 159
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 162
    :cond_1
    move v0, p1

    .local v0, "a":I
    move v1, p3

    .local v1, "b":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 168
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 163
    :cond_2
    aget-byte v4, p0, v0

    aget-byte v5, p2, v1

    if-eq v4, v5, :cond_3

    .line 164
    const/4 v4, 0x0

    goto :goto_1

    .line 162
    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static random([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "pArray"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static reverse([B)V
    .locals 4
    .param p0, "pArray"    # [B

    .prologue
    .line 40
    if-nez p0, :cond_1

    .line 53
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 46
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 47
    aget-byte v2, p0, v1

    .line 48
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 49
    aput-byte v2, p0, v0

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6
    .param p0, "pArray"    # [D

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 133
    :cond_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    .line 124
    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 126
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 127
    aget-wide v2, p0, v1

    .line 128
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 129
    aput-wide v2, p0, v0

    .line 130
    add-int/lit8 v1, v1, -0x1

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4
    .param p0, "pArray"    # [F

    .prologue
    .line 104
    if-nez p0, :cond_1

    .line 117
    :cond_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    .line 108
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 110
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 111
    aget v2, p0, v1

    .line 112
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 113
    aput v2, p0, v0

    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4
    .param p0, "pArray"    # [I

    .prologue
    .line 72
    if-nez p0, :cond_1

    .line 85
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 78
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 79
    aget v2, p0, v1

    .line 80
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 81
    aput v2, p0, v0

    .line 82
    add-int/lit8 v1, v1, -0x1

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6
    .param p0, "pArray"    # [J

    .prologue
    .line 88
    if-nez p0, :cond_1

    .line 101
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 94
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 95
    aget-wide v2, p0, v1

    .line 96
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 97
    aput-wide v2, p0, v0

    .line 98
    add-int/lit8 v1, v1, -0x1

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .param p0, "pArray"    # [Ljava/lang/Object;

    .prologue
    .line 136
    if-nez p0, :cond_1

    .line 149
    :cond_0
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x0

    .line 140
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 142
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 143
    aget-object v2, p0, v1

    .line 144
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 145
    aput-object v2, p0, v0

    .line 146
    add-int/lit8 v1, v1, -0x1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4
    .param p0, "pArray"    # [S

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 69
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 62
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 63
    aget-short v2, p0, v1

    .line 64
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 65
    aput-short v2, p0, v0

    .line 66
    add-int/lit8 v1, v1, -0x1

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
