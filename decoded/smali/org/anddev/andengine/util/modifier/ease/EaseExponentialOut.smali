.class public Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;
.super Ljava/lang/Object;
.source "EaseExponentialOut.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;

    .line 34
    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 6
    .param p0, "pPercentage"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F

    .prologue
    .line 47
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseExponentialOut;->getValue(F)F

    move-result v0

    return v0
.end method
