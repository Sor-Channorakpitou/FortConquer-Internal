.class public Lorg/anddev/andengine/audio/sound/SoundFactory;
.super Ljava/lang/Object;
.source "SoundFactory.java"


# static fields
.field private static sAssetBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, ""

    sput-object v0, Lorg/anddev/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 6
    .param p0, "pSoundManager"    # Lorg/anddev/andengine/audio/sound/SoundManager;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAssetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/anddev/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    .line 66
    .local v1, "soundID":I
    new-instance v0, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    .line 67
    .local v0, "sound":Lorg/anddev/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    .line 68
    return-object v0
.end method

.method public static createSoundFromFileDescriptor(Lorg/anddev/andengine/audio/sound/SoundManager;Ljava/io/FileDescriptor;JJ)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 10
    .param p0, "pSoundManager"    # Lorg/anddev/andengine/audio/sound/SoundManager;
    .param p1, "pFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "pOffset"    # J
    .param p4, "pLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v8

    .line 80
    .local v8, "soundID":I
    new-instance v7, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v7, p0, v8}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    .line 81
    .local v7, "sound":Lorg/anddev/andengine/audio/sound/Sound;
    invoke-virtual {p0, v7}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    .line 82
    return-object v7
.end method

.method public static createSoundFromPath(Lorg/anddev/andengine/audio/sound/SoundManager;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 4
    .param p0, "pSoundManager"    # Lorg/anddev/andengine/audio/sound/SoundManager;
    .param p1, "pPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, "soundID":I
    new-instance v0, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    .line 60
    .local v0, "sound":Lorg/anddev/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    .line 61
    return-object v0
.end method

.method public static createSoundFromResource(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;I)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 4
    .param p0, "pSoundManager"    # Lorg/anddev/andengine/audio/sound/SoundManager;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pSoundResID"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 73
    .local v1, "soundID":I
    new-instance v0, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    .line 74
    .local v0, "sound":Lorg/anddev/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    .line 75
    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    invoke-static {v0}, Lorg/anddev/andengine/audio/sound/SoundFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static setAssetBasePath(Ljava/lang/String;)V
    .locals 2
    .param p0, "pAssetBasePath"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    sput-object p0, Lorg/anddev/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    .line 43
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
