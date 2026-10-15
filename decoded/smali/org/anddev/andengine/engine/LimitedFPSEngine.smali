.class public Lorg/anddev/andengine/engine/LimitedFPSEngine;
.super Lorg/anddev/andengine/engine/Engine;
.source "LimitedFPSEngine.java"


# instance fields
.field private final mPreferredFrameLengthNanoseconds:J


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;I)V
    .locals 4
    .param p1, "pEngineOptions"    # Lorg/anddev/andengine/engine/options/EngineOptions;
    .param p2, "pFramesPerSecond"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    .line 33
    const-wide/32 v0, 0x3b9aca00

    int-to-long v2, p2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/anddev/andengine/engine/LimitedFPSEngine;->mPreferredFrameLengthNanoseconds:J

    .line 34
    return-void
.end method


# virtual methods
.method public onUpdate(J)V
    .locals 9
    .param p1, "pNanosecondsElapsed"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    iget-wide v2, p0, Lorg/anddev/andengine/engine/LimitedFPSEngine;->mPreferredFrameLengthNanoseconds:J

    .line 47
    .local v2, "preferredFrameLengthNanoseconds":J
    sub-long v0, v2, p1

    .line 49
    .local v0, "deltaFrameLengthNanoseconds":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    .line 50
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    const-wide/32 v6, 0xf4240

    div-long v6, v0, v6

    long-to-int v4, v6

    .line 54
    .local v4, "sleepTimeMilliseconds":I
    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 55
    add-long v6, p1, v0

    invoke-super {p0, v6, v7}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    goto :goto_0
.end method
