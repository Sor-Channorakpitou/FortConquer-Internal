.class public Lorg/anddev/andengine/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"

# interfaces
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSeconds(I)Ljava/lang/String;
    .locals 1
    .param p0, "pSecondsTotal"    # I

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/TimeUtils;->formatSeconds(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSeconds(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "pSecondsTotal"    # I
    .param p1, "pStringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 42
    div-int/lit8 v0, p0, 0x3c

    .line 43
    .local v0, "minutes":I
    rem-int/lit8 v1, p0, 0x3c

    .line 45
    .local v1, "seconds":I
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 49
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
