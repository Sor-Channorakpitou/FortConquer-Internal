.class public Lcom/game/layout/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# static fields
.field public static final DESIGNED_HEIGHT:I = 0x1e0

.field public static final DESIGNED_WIDTH:I = 0x320

.field private static final INSTANCE:Lcom/game/layout/Screen;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _designedHeight:F

.field private _designedWidth:F

.field private _height:F

.field private _scaleMin:F

.field private _scaleX:F

.field private _scaleY:F

.field private _width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/game/layout/Screen;

    invoke-direct {v0}, Lcom/game/layout/Screen;-><init>()V

    sput-object v0, Lcom/game/layout/Screen;->INSTANCE:Lcom/game/layout/Screen;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/game/layout/Screen;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/game/layout/Screen;->INSTANCE:Lcom/game/layout/Screen;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/game/layout/Screen;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDesignedHeight()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/game/layout/Screen;->_designedHeight:F

    return v0
.end method

.method public getDesignedWidth()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/game/layout/Screen;->_designedWidth:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/game/layout/Screen;->_height:F

    float-to-int v0, v0

    return v0
.end method

.method public getScaleMin()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/game/layout/Screen;->_scaleMin:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/game/layout/Screen;->_scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/game/layout/Screen;->_scaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/game/layout/Screen;->_width:F

    float-to-int v0, v0

    return v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v4, 0x43f00000    # 480.0f

    .line 17
    iput-object p1, p0, Lcom/game/layout/Screen;->_activity:Landroid/app/Activity;

    .line 18
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/game/layout/Screen;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iput v3, p0, Lcom/game/layout/Screen;->_width:F

    .line 22
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iput v3, p0, Lcom/game/layout/Screen;->_height:F

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 24
    .local v2, "orientation":I
    const/4 v0, 0x1

    .line 25
    .local v0, "isLandscape":Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 29
    :cond_0
    if-eqz v0, :cond_1

    .line 30
    iput v5, p0, Lcom/game/layout/Screen;->_designedWidth:F

    .line 31
    iput v4, p0, Lcom/game/layout/Screen;->_designedHeight:F

    .line 36
    :goto_0
    iget v3, p0, Lcom/game/layout/Screen;->_width:F

    iget v4, p0, Lcom/game/layout/Screen;->_designedWidth:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/game/layout/Screen;->_scaleX:F

    .line 37
    iget v3, p0, Lcom/game/layout/Screen;->_height:F

    iget v4, p0, Lcom/game/layout/Screen;->_designedHeight:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/game/layout/Screen;->_scaleY:F

    .line 38
    iget v3, p0, Lcom/game/layout/Screen;->_scaleX:F

    iget v4, p0, Lcom/game/layout/Screen;->_scaleY:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/game/layout/Screen;->_scaleMin:F

    .line 39
    return-void

    .line 33
    :cond_1
    iput v4, p0, Lcom/game/layout/Screen;->_designedWidth:F

    .line 34
    iput v5, p0, Lcom/game/layout/Screen;->_designedHeight:F

    goto :goto_0
.end method
