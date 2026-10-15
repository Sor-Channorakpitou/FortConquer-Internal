.class public Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;
.super Ljava/lang/Object;
.source "EaseSineInOut.java"

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    .line 37
    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 4
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F

    .prologue
    .line 50
    div-float v0, p1, p2

    .line 52
    .local v0, "percentage":F
    const/high16 v1, -0x41000000    # -0.5f

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method
