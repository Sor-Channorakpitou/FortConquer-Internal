.class public Lcom/droidhen/fortconquer/sounds/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field public static final BIPED_DIE:I = 0x10

.field public static final BUTTON:I = 0x0

.field public static final COIN:I = 0x1

.field public static final DLG_CANCEL:I = 0x18

.field public static final DLG_OK:I = 0x17

.field public static final DRAGON_DIE:I = 0x12

.field public static final EARTH_ATTACK:I = 0x8

.field public static final EVOLVE:I = 0xa

.field public static final FIRE_ATTACK:I = 0x5

.field public static final FIRE_EXPLODE:I = 0xf

.field public static final FORT_EXPLODE:I = 0x16

.field public static final FORT_RUIN:I = 0xc

.field public static final HOLY_FIRE:I = 0xe

.field public static final ICE_ATTACK:I = 0x7

.field public static final LEVEL_FAIL:I = 0x3

.field public static final LEVEL_PASS:I = 0x2

.field public static final LIGHT_ATTACK:I = 0x6

.field public static final LOGO:I = 0x14

.field public static final POISON_ATTACK:I = 0x9

.field public static final QUAD_DIE:I = 0x11

.field public static final SCENE_CHANGE:I = 0xd

.field public static final SELECTED:I = 0xb

.field public static final SOUND_ID_MAX:I = 0x19

.field public static final STAGE_START:I = 0x15

.field public static final WAVE_HORN:I = 0x13

.field public static final WIND_ATTACK:I = 0x4

.field public static mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;


# instance fields
.field protected mGame:Lcom/droidhen/fortconquer/GameActivity;

.field private mIsMusicOn:Z

.field private mIsSoundOn:Z

.field public mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

.field public mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

.field public mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 5
    .param p1, "pGameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mGame:Lcom/droidhen/fortconquer/GameActivity;

    .line 81
    const/16 v1, 0x19

    :try_start_0
    new-array v1, v1, [Lorg/anddev/andengine/audio/sound/Sound;

    iput-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    .line 83
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 84
    const-string v4, "mfx/3button.ogg"

    .line 83
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 87
    const-string v4, "mfx/6coin.ogg"

    .line 86
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 90
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 91
    const-string v4, "mfx/sound_pass_3.2.ogg"

    .line 90
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 93
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 94
    const-string v4, "mfx/sound_fail_3.3.ogg"

    .line 93
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 96
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 97
    const-string v4, "mfx/1-1wind.ogg"

    .line 96
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 98
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 103
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 104
    const-string v4, "mfx/1-2fire.ogg"

    .line 103
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 107
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 108
    const-string v4, "mfx/1-3light.ogg"

    .line 107
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 111
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 112
    const-string v4, "mfx/1-5earth.ogg"

    .line 111
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 115
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 116
    const-string v4, "mfx/1-4ice.ogg"

    .line 115
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 117
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 119
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x9

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 120
    const-string v4, "mfx/1-6poison.ogg"

    .line 119
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 121
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 123
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 124
    const-string v4, "mfx/2evolve.ogg"

    .line 123
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 126
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0xb

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 127
    const-string v4, "mfx/3selected.ogg"

    .line 126
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 129
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0xc

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 130
    const-string v4, "mfx/4fort_ruin.ogg"

    .line 129
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0xd

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 133
    const-string v4, "mfx/5scene.ogg"

    .line 132
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0xe

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 136
    const-string v4, "mfx/8fire_fly.ogg"

    .line 135
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0xf

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 139
    const-string v4, "mfx/8fire_explode.ogg"

    .line 138
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 141
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x10

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 142
    const-string v4, "mfx/9-1biped_die.ogg"

    .line 141
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x11

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 145
    const-string v4, "mfx/9-2quad_die.ogg"

    .line 144
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 147
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x12

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 148
    const-string v4, "mfx/9-3dragon_die.ogg"

    .line 147
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 149
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 150
    const-string v4, "mfx/droidhen_logo.ogg"

    .line 149
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 151
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x13

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 152
    const-string v4, "mfx/10horn.ogg"

    .line 151
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x15

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 155
    const-string v4, "mfx/sound_stage_start.ogg"

    .line 154
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 157
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x16

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 158
    const-string v4, "mfx/sound_bomb_4.6.ogg"

    .line 157
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 159
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(F)V

    .line 161
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x17

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 162
    const-string v4, "mfx/dlg_ok.ogg"

    .line 161
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 164
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    const/16 v2, 0x18

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v3

    .line 165
    const-string v4, "mfx/dlg_cancel.ogg"

    .line 164
    invoke-static {v3, p1, v4}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v3

    aput-object v3, v1, v2

    .line 167
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v1

    .line 168
    const-string v2, "mfx/bg_snow.ogg"

    .line 167
    invoke-static {v1, p1, v2}, Lorg/anddev/andengine/audio/music/MusicFactory;->createMusicFromAsset(Lorg/anddev/andengine/audio/music/MusicManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/music/Music;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

    .line 170
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->stop()V

    .line 173
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 174
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/music/Music;->setLooping(Z)V

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v1

    .line 178
    const-string v2, "mfx/bg_title.ogg"

    .line 177
    invoke-static {v1, p1, v2}, Lorg/anddev/andengine/audio/music/MusicFactory;->createMusicFromAsset(Lorg/anddev/andengine/audio/music/MusicManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/music/Music;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

    .line 180
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->stop()V

    .line 183
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 184
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/music/Music;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mIsMusicOn:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mIsSoundOn:Z

    return v0
.end method

.method public pauseBGMusic()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->switchBGMusic()V

    .line 285
    sget-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->pause()V

    .line 289
    :cond_0
    return-void
.end method

.method public playBGMusic()V
    .locals 3

    .prologue
    .line 265
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->stop()V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->switchBGMusic()V

    .line 268
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->isMusicEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/droidhen/fortconquer/GameActivity;->bHasFocus:Z

    if-eqz v1, :cond_1

    .line 270
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->stop()V

    .line 272
    :try_start_0
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :goto_0
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->play()V

    .line 279
    sget-object v1, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/music/Music;->setLooping(Z)V

    .line 281
    :cond_1
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(II)V

    .line 196
    return-void
.end method

.method public playSound(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "loopTimes"    # I

    .prologue
    .line 201
    const/16 v0, 0x19

    if-le p1, v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mIsSoundOn:Z

    if-eqz v0, :cond_0

    .line 209
    if-lez p2, :cond_2

    .line 211
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/audio/sound/Sound;->setLoopCount(I)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/Sound;->play()V

    goto :goto_0
.end method

.method public playSound(IZ)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "looping"    # Z

    .prologue
    .line 240
    const/16 v0, 0x19

    if-le p1, v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mIsSoundOn:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/audio/sound/Sound;->setLooping(Z)V

    .line 249
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/Sound;->play()V

    goto :goto_0
.end method

.method public setLoopCount(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "loopCount"    # I

    .prologue
    .line 229
    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/audio/sound/Sound;->setLoopCount(I)V

    goto :goto_0
.end method

.method public setMusicEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mIsMusicOn:Z

    .line 71
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mIsSoundOn:Z

    .line 61
    return-void
.end method

.method public stopAllSounds()V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 304
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/sound/Sound;->stop()V

    .line 299
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stopBGMusic()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->switchBGMusic()V

    .line 293
    sget-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->stop()V

    .line 295
    :cond_0
    return-void
.end method

.method public stopSound(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 218
    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundsPool:[Lorg/anddev/andengine/audio/sound/Sound;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/Sound;->stop()V

    goto :goto_0
.end method

.method public switchBGMusic()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mGame:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mGame:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameWar:Lorg/anddev/andengine/audio/music/Music;

    sput-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameTitle:Lorg/anddev/andengine/audio/music/Music;

    sput-object v0, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->mSoundGameBg:Lorg/anddev/andengine/audio/music/Music;

    goto :goto_0
.end method
