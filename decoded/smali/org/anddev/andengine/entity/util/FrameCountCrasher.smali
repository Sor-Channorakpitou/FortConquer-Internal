.class public Lorg/anddev/andengine/entity/util/FrameCountCrasher;
.super Ljava/lang/Object;
.source "FrameCountCrasher.java"

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# instance fields
.field private final mFrameLengths:[F

.field private mFramesLeft:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "pFrameCount"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    .line 33
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFrameLengths:[F

    .line 34
    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 4
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 46
    iget v2, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    .line 48
    iget-object v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFrameLengths:[F

    .line 49
    .local v0, "frameLengths":[F
    iget v2, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    if-ltz v2, :cond_0

    .line 50
    iget v2, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    aput p1, v0, v2

    .line 58
    return-void

    .line 52
    :cond_0
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 56
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Elapsed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
