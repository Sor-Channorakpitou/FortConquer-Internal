.class public Lcom/droidhen/fortconquer/component/LoadingCircle;
.super Lcom/droidhen/fortconquer/layer/Layer;
.source "LoadingCircle.java"


# instance fields
.field public final count:I

.field private curFrameLeft:F

.field private curIndex:I

.field private frameTime:F

.field private inAnimation:Z

.field protected final sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V
    .locals 14
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "rPoint"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p4, "radius"    # I
    .param p5, "count"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 18
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->inAnimation:Z

    .line 25
    move/from16 v0, p5

    iput v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->count:I

    .line 26
    move/from16 v0, p5

    new-array v5, v0, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 27
    add-int v5, p1, p4

    invoke-virtual/range {p3 .. p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 28
    .local v2, "centerX":I
    add-int v5, p2, p4

    invoke-virtual/range {p3 .. p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 29
    .local v3, "centerY":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curIndex:I

    .line 30
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/LoadingCircle;->updateAlpha()V

    .line 36
    return-void

    .line 31
    :cond_0
    iget-object v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    int-to-float v7, v2

    const-wide v8, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    move/from16 v0, p5

    int-to-double v10, v0

    div-double/2addr v8, v10

    int-to-double v10, v4

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    move/from16 v0, p4

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    int-to-float v8, v3

    const-wide v10, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    move/from16 v0, p5

    int-to-double v12, v0

    div-double/2addr v10, v12

    int-to-double v12, v4

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p3

    invoke-direct {v6, v7, v8, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v6, v5, v4

    .line 32
    iget-object v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/component/LoadingCircle;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 33
    iget-object v5, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v5, v5, v4

    const/16 v6, 0x302

    const/16 v7, 0x304

    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateAlpha()V
    .locals 5

    .prologue
    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->count:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->count:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->count:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    .line 41
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->sprites:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/component/LoadingCircle;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public animate(F)V
    .locals 1
    .param p1, "frameTime"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->frameTime:F

    iput p1, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curFrameLeft:F

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->inAnimation:Z

    .line 53
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curIndex:I

    .line 47
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/LoadingCircle;->updateAlpha()V

    .line 48
    return-void
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->inAnimation:Z

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curFrameLeft:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curFrameLeft:F

    .line 63
    iget v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curFrameLeft:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curFrameLeft:F

    iget v1, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->frameTime:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->curFrameLeft:F

    .line 65
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/LoadingCircle;->next()V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/layer/Layer;->onManagedUpdate(F)V

    .line 69
    return-void
.end method

.method public stopAnimate()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/component/LoadingCircle;->inAnimation:Z

    .line 57
    return-void
.end method
