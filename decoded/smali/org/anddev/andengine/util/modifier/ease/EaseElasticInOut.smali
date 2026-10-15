.class public Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;
.super Ljava/lang/Object;
.source "EaseElasticInOut.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
.implements Lorg/anddev/andengine/util/constants/MathConstants;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    .line 36
    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 5
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 49
    div-float v0, p1, p2

    .line 51
    .local v0, "percentage":F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 52
    mul-float v1, v2, p1

    mul-float/2addr v2, v0

    invoke-static {v1, p2, v2}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->getValue(FFF)F

    move-result v1

    mul-float/2addr v1, v4

    .line 54
    :goto_0
    return v1

    :cond_0
    mul-float v1, p1, v2

    sub-float/2addr v1, p2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v1, p2, v2}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticOut;->getValue(FFF)F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v4

    goto :goto_0
.end method
