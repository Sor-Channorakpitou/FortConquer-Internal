.class public Lcom/droidhen/fortconquer/component/TripleBarEntity;
.super Lcom/droidhen/fortconquer/layer/Layer;
.source "TripleBarEntity.java"


# static fields
.field private static final D2C:F = 0.85f

.field private static final SPEED_BASE:F = 6.0f


# instance fields
.field private final SPEED:F

.field private curLen:F

.field private length:F

.field private mMinAffectMs:J

.field private mStartStamp:J

.field private mTask:Ljava/lang/Runnable;

.field private minLen:F

.field private sLeft:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sRight:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private speedScale:F

.field private totalLen:F


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rBar"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p4, "lenL"    # I
    .param p5, "lenR"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 52
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    .line 25
    iput-wide v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    .line 26
    iput-wide v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mStartStamp:J

    .line 28
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v1

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionX()I

    move-result v2

    .line 54
    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v3

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v5

    move v4, p4

    .line 53
    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 55
    .local v0, "rLeft":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    new-instance v1, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionX()I

    move-result v3

    add-int/2addr v3, p4

    .line 56
    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v4

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v5

    sub-int/2addr v5, p4

    sub-int/2addr v5, p5

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v6

    .line 55
    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 57
    .local v1, "rMiddle":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    new-instance v2, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v3

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v4

    sub-int/2addr v4, p5

    .line 58
    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v5

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v7

    move v6, p5

    .line 57
    invoke-direct/range {v2 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 59
    .local v2, "rRight":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    invoke-direct {p0, v0, v1, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->init(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 60
    iget v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->SPEED:F

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(FF)V

    .line 62
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rLeft"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p4, "rMiddle"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p5, "rRight"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    .line 25
    iput-wide v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    .line 26
    iput-wide v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mStartStamp:J

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0, p3, p4, p5}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->init(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 48
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    iget v1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->SPEED:F

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(FF)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V
    .locals 8
    .param p1, "rBar"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p2, "lenL"    # I
    .param p3, "lenR"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 35
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    .line 25
    iput-wide v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    .line 26
    iput-wide v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mStartStamp:J

    .line 28
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionX()I

    move-result v2

    .line 37
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v5

    move v4, p2

    .line 36
    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 38
    .local v0, "rLeft":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    new-instance v1, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v2

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionX()I

    move-result v3

    add-int/2addr v3, p2

    .line 39
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v4

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int/2addr v5, p3

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v6

    .line 38
    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 40
    .local v1, "rMiddle":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    new-instance v2, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v3

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v4

    sub-int/2addr v4, p3

    .line 41
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v5

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v7

    move v6, p3

    .line 40
    invoke-direct/range {v2 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 42
    .local v2, "rRight":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    invoke-direct {p0, v0, v1, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->init(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 43
    iget v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->SPEED:F

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 4
    .param p1, "rLeft"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p2, "rMiddle"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p3, "rRight"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    .line 25
    iput-wide v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    .line 26
    iput-wide v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mStartStamp:J

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->init(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 32
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    iget v1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->SPEED:F

    .line 33
    return-void
.end method

.method private init(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 4
    .param p1, "rLeft"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p2, "rMiddle"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p3, "rRight"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const/4 v3, 0x0

    .line 65
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v3, v3, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sLeft:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 66
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, p2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 67
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sRight:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 68
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    .line 69
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    invoke-virtual {p2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    .line 70
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    iput v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    .line 71
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 72
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sRight:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 73
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sLeft:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 74
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    iget v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sLeft:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sRight:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v3

    sub-float v0, v2, v3

    .line 78
    .local v0, "midLen":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    move v0, v1

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    .line 80
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setWidth(I)V

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sRight:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sLeft:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 86
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->sMiddle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setWidth(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSpeedScale()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    return v0
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->update()V

    .line 152
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 10
    .param p1, "pSecondsElapsed"    # F

    .prologue
    const-wide/16 v8, 0x0

    .line 90
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    iget v5, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 91
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    iget v5, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 92
    .local v1, "distance":F
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    iget v5, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    sub-float/2addr v4, v5

    div-float v3, v4, v1

    .line 93
    .local v3, "signal":F
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->SPEED:F

    mul-float/2addr v4, p1

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 94
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    iput v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    .line 103
    :goto_0
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->update()V

    .line 110
    .end local v1    # "distance":F
    .end local v3    # "signal":F
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/layer/Layer;->onManagedUpdate(F)V

    .line 111
    return-void

    .line 96
    .restart local v1    # "distance":F
    .restart local v3    # "signal":F
    :cond_1
    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->SPEED:F

    add-float/2addr v4, v5

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    mul-float v0, v4, v5

    .line 97
    .local v0, "change":F
    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    .line 98
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    iput v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    goto :goto_0

    .line 100
    :cond_2
    iget v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    mul-float v5, v3, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    goto :goto_0

    .line 104
    .end local v0    # "change":F
    .end local v1    # "distance":F
    .end local v3    # "signal":F
    :cond_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    iget-wide v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    iget-wide v6, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mStartStamp:J

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 106
    .local v2, "pTask":Ljava/lang/Runnable;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 107
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 108
    iput-wide v8, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    goto :goto_1
.end method

.method public setLength(F)V
    .locals 0
    .param p1, "length"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    .line 115
    return-void
.end method

.method public setLengthDirect(F)V
    .locals 0
    .param p1, "length"    # F

    .prologue
    .line 133
    iput p1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->length:F

    iput p1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->curLen:F

    .line 134
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->update()V

    .line 135
    return-void
.end method

.method public setPercent(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 118
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    iget v1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setLength(F)V

    .line 119
    return-void
.end method

.method public setPercent(FLjava/lang/Runnable;)V
    .locals 2
    .param p1, "percent"    # F
    .param p2, "pTask"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(FLjava/lang/Runnable;J)V

    .line 123
    return-void
.end method

.method public setPercent(FLjava/lang/Runnable;J)V
    .locals 3
    .param p1, "percent"    # F
    .param p2, "pTask"    # Ljava/lang/Runnable;
    .param p3, "minAffectMs"    # J

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mStartStamp:J

    .line 127
    iput-object p2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mTask:Ljava/lang/Runnable;

    .line 128
    iput-wide p3, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->mMinAffectMs:J

    .line 129
    invoke-virtual {p0, p1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(F)V

    .line 130
    return-void
.end method

.method public setPercentDirect(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    iget v1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->totalLen:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->minLen:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setLengthDirect(F)V

    .line 139
    return-void
.end method

.method public setSpeedScale(F)V
    .locals 0
    .param p1, "speedScale"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/droidhen/fortconquer/component/TripleBarEntity;->speedScale:F

    .line 147
    return-void
.end method
