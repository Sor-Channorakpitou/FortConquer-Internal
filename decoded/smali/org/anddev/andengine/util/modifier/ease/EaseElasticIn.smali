.class public Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;
.super Ljava/lang/Object;
.source "EaseElasticIn.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
.implements Lorg/anddev/andengine/util/constants/MathConstants;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    .line 38
    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    return-object v0
.end method

.method public static getValue(FFF)F
    .locals 8
    .param p0, "pSecondsElapsed"    # F
    .param p1, "pDuration"    # F
    .param p2, "pPercentage"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 59
    cmpl-float v5, p0, v3

    if-nez v5, :cond_0

    .line 70
    :goto_0
    return v3

    .line 62
    :cond_0
    cmpl-float v3, p0, p1

    if-nez v3, :cond_1

    move v3, v4

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const v3, 0x3e99999a    # 0.3f

    mul-float v0, p1, v3

    .line 67
    .local v0, "p":F
    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v0, v3

    .line 69
    .local v1, "s":F
    sub-float v2, p2, v4

    .line 70
    .local v2, "t":F
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    neg-float v3, v3

    mul-float v4, v2, p1

    sub-float/2addr v4, v1

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F

    .prologue
    .line 51
    div-float v0, p1, p2

    invoke-static {p1, p2, v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->getValue(FFF)F

    move-result v0

    return v0
.end method
