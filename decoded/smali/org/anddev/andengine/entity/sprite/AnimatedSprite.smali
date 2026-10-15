.class public Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
.super Lorg/anddev/andengine/entity/sprite/TiledSprite;
.source "AnimatedSprite.java"

# interfaces
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;
    }
.end annotation


# static fields
.field private static final LOOP_CONTINUOUS:I = -0x1


# instance fields
.field private mAnimationDuration:J

.field private mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

.field private mAnimationProgress:J

.field private mAnimationRunning:Z

.field private mFirstTileIndex:I

.field private mFrameCount:I

.field private mFrameEndsInNanoseconds:[J

.field private mFrames:[I

.field private mInitialLoopCount:I

.field private mLoopCount:I


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTileWidth"    # F
    .param p4, "pTileHeight"    # F
    .param p5, "pTiledTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTileWidth"    # F
    .param p4, "pTileHeight"    # F
    .param p5, "pTiledTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .param p6, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTiledTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTiledTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .param p4, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 49
    return-void
.end method

.method private calculateCurrentFrameIndex()I
    .locals 8

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 113
    .local v0, "animationProgress":J
    iget-object v3, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    .line 114
    .local v3, "frameEnds":[J
    iget v2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    .line 115
    .local v2, "frameCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 121
    add-int/lit8 v4, v2, -0x1

    .end local v4    # "i":I
    :cond_0
    return v4

    .line 116
    .restart local v4    # "i":I
    :cond_1
    aget-wide v6, v3, v4

    cmp-long v5, v6, v0

    if-gtz v5, :cond_0

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private init([JI[IIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6
    .param p1, "pFrameDurations"    # [J
    .param p2, "frameCount"    # I
    .param p3, "pFrames"    # [I
    .param p4, "pFirstTileIndex"    # I
    .param p5, "pLoopCount"    # I
    .param p6, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 218
    iput p2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    .line 219
    iput-object p6, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .line 220
    iput p5, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mInitialLoopCount:I

    .line 221
    iput p5, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    .line 222
    iput-object p3, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrames:[I

    .line 223
    iput p4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFirstTileIndex:I

    .line 225
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    iget-object v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 226
    :cond_0
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    .line 230
    .local v0, "frameEndsInNanoseconds":[J
    const-wide/32 v4, 0xf4240

    invoke-static {p1, v0, v4, v5}, Lorg/anddev/andengine/util/MathUtils;->arraySumInto([J[JJ)V

    .line 232
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    .line 233
    .local v2, "lastFrameEnd":J
    iput-wide v2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationDuration:J

    .line 235
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 238
    return-object p0
.end method


# virtual methods
.method public animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurationEach"    # J

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate(JI)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurationEach"    # J
    .param p3, "pLoopCount"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 3
    .param p1, "pFrameDurationEach"    # J
    .param p3, "pLoopCount"    # I
    .param p4, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileCount()I

    move-result v1

    new-array v0, v1, [J

    .line 142
    .local v0, "frameDurations":[J
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 143
    invoke-virtual {p0, v0, p3, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v1

    return-object v1
.end method

.method public animate(JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 3
    .param p1, "pFrameDurationEach"    # J
    .param p3, "pLoop"    # Z

    .prologue
    .line 129
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate(JZLorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurationEach"    # J
    .param p3, "pLoop"    # Z
    .param p4, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 137
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate([J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurations"    # [J

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JI)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurations"    # [J
    .param p2, "pLoopCount"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JIII)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6
    .param p1, "pFrameDurations"    # [J
    .param p2, "pFirstTileIndex"    # I
    .param p3, "pLastTileIndex"    # I
    .param p4, "pLoopCount"    # I

    .prologue
    .line 171
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 7
    .param p1, "pFrameDurations"    # [J
    .param p2, "pFirstTileIndex"    # I
    .param p3, "pLastTileIndex"    # I
    .param p4, "pLoopCount"    # I
    .param p5, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 205
    sub-int v0, p3, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An animation needs at least two tiles to animate between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    sub-int v0, p3, p2

    add-int/lit8 v2, v0, 0x1

    .line 210
    .local v2, "frameCount":I
    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFrameDurations must have the same length as pFirstTileIndex to pLastTileIndex."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->init([JI[IIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JIIZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6
    .param p1, "pFrameDurations"    # [J
    .param p2, "pFirstTileIndex"    # I
    .param p3, "pLastTileIndex"    # I
    .param p4, "pLoop"    # Z

    .prologue
    .line 167
    if-eqz p4, :cond_0

    const/4 v4, -0x1

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6
    .param p1, "pFrameDurations"    # [J
    .param p2, "pLoopCount"    # I
    .param p3, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 163
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 2
    .param p1, "pFrameDurations"    # [J
    .param p2, "pLoop"    # Z

    .prologue
    .line 151
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate([JZLorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurations"    # [J
    .param p2, "pLoop"    # Z
    .param p3, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 159
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate([J[II)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1
    .param p1, "pFrameDurations"    # [J
    .param p2, "pFrames"    # [I
    .param p3, "pLoopCount"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([J[IILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([J[IILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 7
    .param p1, "pFrameDurations"    # [J
    .param p2, "pFrames"    # [I
    .param p3, "pLoopCount"    # I
    .param p4, "pAnimationListener"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .prologue
    .line 187
    array-length v2, p2

    .line 188
    .local v2, "frameCount":I
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFrameDurations must have the same length as pFrames."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->init([JI[IIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 9
    .param p1, "pSecondsElapsed"    # F

    .prologue
    const/4 v8, -0x1

    .line 69
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->onManagedUpdate(F)V

    .line 70
    iget-boolean v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    if-eqz v1, :cond_2

    .line 71
    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v1, p1

    float-to-long v2, v1

    .line 72
    .local v2, "nanoSecondsElapsed":J
    iget-wide v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 74
    iget-wide v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget-wide v6, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationDuration:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 75
    iget-wide v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget-wide v6, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationDuration:J

    rem-long/2addr v4, v6

    iput-wide v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 76
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mInitialLoopCount:I

    if-eq v1, v8, :cond_0

    .line 77
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    .line 81
    :cond_0
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mInitialLoopCount:I

    if-eq v1, v8, :cond_1

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    if-ltz v1, :cond_4

    .line 82
    :cond_1
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->calculateCurrentFrameIndex()I

    move-result v0

    .line 84
    .local v0, "currentFrameIndex":I
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrames:[I

    if-nez v1, :cond_3

    .line 85
    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFirstTileIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 96
    .end local v0    # "currentFrameIndex":I
    .end local v2    # "nanoSecondsElapsed":J
    :cond_2
    :goto_0
    return-void

    .line 87
    .restart local v0    # "currentFrameIndex":I
    .restart local v2    # "nanoSecondsElapsed":J
    :cond_3
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrames:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_0

    .line 90
    .end local v0    # "currentFrameIndex":I
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 91
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-interface {v1, p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationEnd(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 104
    return-void
.end method

.method public stopAnimation(I)V
    .locals 1
    .param p1, "pTileIndex"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 108
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 109
    return-void
.end method
