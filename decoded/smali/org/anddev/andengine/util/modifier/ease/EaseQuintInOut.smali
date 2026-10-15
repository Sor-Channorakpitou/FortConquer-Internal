.class public Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;
.super Ljava/lang/Object;
.source "EaseQuintInOut.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;

    .line 34
    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 4
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 47
    div-float v0, p1, p2

    .line 49
    .local v0, "percentage":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 50
    mul-float v1, v2, v0

    invoke-static {v1}, Lorg/anddev/andengine/util/modifier/ease/EaseQuintIn;->getValue(F)F

    move-result v1

    mul-float/2addr v1, v3

    .line 52
    :goto_0
    return v1

    :cond_0
    mul-float v1, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;->getValue(F)F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    goto :goto_0
.end method
