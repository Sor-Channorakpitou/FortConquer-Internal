.class public Lorg/anddev/andengine/audio/sound/Sound;
.super Lorg/anddev/andengine/audio/BaseAudioEntity;
.source "Sound.java"


# instance fields
.field private mLoopCount:I

.field private mRate:F

.field private final mSoundID:I

.field private mStreamID:I


# direct methods
.method constructor <init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V
    .locals 1
    .param p1, "pSoundManager"    # Lorg/anddev/andengine/audio/sound/SoundManager;
    .param p2, "pSoundID"    # I

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lorg/anddev/andengine/audio/BaseAudioEntity;-><init>(Lorg/anddev/andengine/audio/IAudioManager;)V

    .line 22
    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    .line 24
    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLoopCount:I

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRate:F

    .line 33
    iput p2, p0, Lorg/anddev/andengine/audio/sound/Sound;->mSoundID:I

    .line 34
    return-void
.end method


# virtual methods
.method protected bridge synthetic getAudioManager()Lorg/anddev/andengine/audio/IAudioManager;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lorg/anddev/andengine/audio/BaseAudioEntity;->getAudioManager()Lorg/anddev/andengine/audio/IAudioManager;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/audio/sound/SoundManager;

    return-object v0
.end method

.method public onMasterVolumeChanged(F)V
    .locals 2
    .param p1, "pMasterVolume"    # F

    .prologue
    .line 120
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLeftVolume:F

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRightVolume:F

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(FF)V

    .line 121
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public play()V
    .locals 8

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getMasterVolume()F

    move-result v7

    .line 70
    .local v7, "masterVolume":F
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLeftVolume:F

    mul-float v2, v0, v7

    .line 71
    .local v2, "leftVolume":F
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRightVolume:F

    mul-float v3, v0, v7

    .line 72
    .local v3, "rightVolume":F
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mSoundID:I

    const/4 v4, 0x1

    iget v5, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLoopCount:I

    iget v6, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRate:F

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    .line 73
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setLoopCount(I)V
    .locals 2
    .param p1, "pLoopCount"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLoopCount:I

    .line 42
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setLoop(II)V

    .line 45
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "pLooping"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/audio/sound/Sound;->setLoopCount(I)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRate(F)V
    .locals 2
    .param p1, "pRate"    # F

    .prologue
    .line 48
    iput p1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRate:F

    .line 49
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setRate(IF)V

    .line 52
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 5
    .param p1, "pLeftVolume"    # F
    .param p2, "pRightVolume"    # F

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/audio/BaseAudioEntity;->setVolume(FF)V

    .line 109
    iget v3, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getMasterVolume()F

    move-result v1

    .line 111
    .local v1, "masterVolume":F
    iget v3, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLeftVolume:F

    mul-float v0, v3, v1

    .line 112
    .local v0, "leftVolume":F
    iget v3, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRightVolume:F

    mul-float v2, v3, v1

    .line 114
    .local v2, "rightVolume":F
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v3

    iget v4, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 116
    .end local v0    # "leftVolume":F
    .end local v1    # "masterVolume":F
    .end local v2    # "rightVolume":F
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 80
    :cond_0
    return-void
.end method
