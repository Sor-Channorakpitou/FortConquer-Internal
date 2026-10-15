.class public Lcom/droidhen/fortconquer/CCPrefs;
.super Ljava/lang/Object;
.source "CCPrefs.java"


# static fields
.field private static final ACHIEVEMENT_PREF:Ljava/lang/String; = "achievements_"

.field public static final ARENA_LOST:Ljava/lang/String; = "arena_lost"

.field private static final ARENA_RECORD:Ljava/lang/String; = "arena_record"

.field public static final ARENA_WON:Ljava/lang/String; = "arena_won"

.field private static final BEST_RECORD:I = 0x0

.field public static final BOUGHT_COIN:Ljava/lang/String; = "bought_coin"

.field private static final CARD:Ljava/lang/String; = "card"

.field private static final CARD_NUM:Ljava/lang/String; = "card_num"

.field public static final CATAPULT_LEVEL:Ljava/lang/String; = "CATAPULT_LEVEL"

.field public static final CHOSEN_PREFIX:Ljava/lang/String; = "CHOSEN_PREFIX"

.field private static final DEFAULT_COINS:I = 0x3e8

.field private static final DEFAULT_INT:I = 0x0

.field public static final FORT_LEVEL:Ljava/lang/String; = "Fort_LEVEL"

.field private static final GIFTPACKAGE_SHOW_TIME:Ljava/lang/String; = "giftpackage_show_time"

.field private static final GIFTPACKAGE_TYPE:Ljava/lang/String; = "giftpackage_type"

.field private static final GIFTPACKAGE_TYPE_DRAGON:Ljava/lang/String; = "giftpackage_type_dragon"

.field public static final GOOD:Ljava/lang/String; = "good_"

.field public static final GOOD_RECOED:Ljava/lang/String; = "good_recoed"

.field private static final LEVEL_PASSED:Ljava/lang/String; = "level_passed"

.field private static final LEVEL_SCORE:Ljava/lang/String; = "level_score_"

.field public static final MINERAL_LEVEL:Ljava/lang/String; = "MINERAL_LEVEL"

.field private static final MUSIC_ENABLED:Ljava/lang/String; = "music_enabled"

.field private static final NEW_CHECKED:Ljava/lang/String; = "NEW_CHECKED"

.field public static final NONE:I = 0x0

.field private static final NO_CARD:I = 0x0

.field private static final NO_PASSED_LEVEL:I = 0x0

.field private static final NO_RECORD:Z = false

.field public static final PACK_NUM:Ljava/lang/String; = "pack_number"

.field public static final PLAYER_EXP:Ljava/lang/String; = "player_exp"

.field public static final PLAYER_LEVEL:Ljava/lang/String; = "player_level"

.field public static final PLAYER_NAME:Ljava/lang/String; = "player_name"

.field public static final PLAYER_STAMINA:Ljava/lang/String; = "player_stamina"

.field private static final RECORD:Ljava/lang/String; = "record"

.field private static final SOUND_EFFECT_ENABLED:Ljava/lang/String; = "sound_enabled"

.field public static final TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final TOTAL_COIN:Ljava/lang/String; = "total_coin"

.field public static final TOTAL_CRYSTAL:Ljava/lang/String; = "TOTAL_CRYSTAL"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field private static final _MD5:Ljava/lang/String; = "_md5"

.field private static _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized enableMusic(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 101
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 102
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "music_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v2

    return-void

    .line 101
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized enableSound(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 73
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 74
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sound_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v2

    return-void

    .line 73
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static ensureInit(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    .line 65
    :cond_0
    return-void
.end method

.method public static declared-synchronized getArenaRecord(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 169
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "arena_record"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCard(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 246
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 247
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCardNum(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 181
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "card_num"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDragonType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 121
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "giftpackage_type_dragon"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getGiftPackageShowTime(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 133
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "giftpackage_show_time"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getGiftPackageType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 109
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "giftpackage_type"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getGood(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 263
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 264
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "good_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 191
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalt"    # I

    .prologue
    .line 200
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 201
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLevelPassed(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "world"    # I

    .prologue
    .line 313
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 314
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "level_passed"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLevelRecord(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 301
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 302
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "level_score_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalt"    # J

    .prologue
    .line 222
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 223
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRecord(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 145
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "record"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSafeInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    const-string v0, "total_coin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 328
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/droidhen/fortconquer/CCPrefs;->getSafeInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSafeInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 332
    const-class v5, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 333
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->getWifiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "deviceRecord":Ljava/lang/String;
    sget-object v4, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 335
    .local v3, "saved_value":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "record_md5":Ljava/lang/String;
    sget-object v4, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_md5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "saved_md5":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    .end local v3    # "saved_value":I
    :goto_0
    monitor-exit v5

    return v3

    .line 342
    .restart local v3    # "saved_value":I
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/droidhen/fortconquer/CCPrefs;->setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, p2

    .line 343
    goto :goto_0

    .line 332
    .end local v0    # "deviceRecord":Ljava/lang/String;
    .end local v1    # "record_md5":Ljava/lang/String;
    .end local v2    # "saved_md5":Ljava/lang/String;
    .end local v3    # "saved_value":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 251
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 252
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-class v4, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 86
    sget-object v3, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "newUserId":Ljava/lang/String;
    sget-object v3, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "user_id"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "newUserId":Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 85
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getWifiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const-class v0, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v0

    :try_start_0
    const-string v1, "InfiniteWar"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized hasNewChecked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 150
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "NEW_CHECKED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isAchieved(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 289
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 290
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "achievements_i"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isMusicEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 81
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "music_enabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isSoundEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-class v1, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "sound_enabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x10

    .line 369
    :try_start_0
    const-string v13, "UTF-8"

    invoke-virtual {p0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 375
    .local v10, "source":[B
    :goto_0
    const/4 v8, 0x0

    .line 376
    .local v8, "s":Ljava/lang/String;
    new-array v3, v14, [C

    fill-array-data v3, :array_0

    .line 378
    .local v3, "hexDigits":[C
    :try_start_1
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 379
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v7, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 380
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    .line 381
    .local v12, "tmp":[B
    const/16 v13, 0x20

    new-array v11, v13, [C

    .line 382
    .local v11, "str":[C
    const/4 v5, 0x0

    .line 383
    .local v5, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    :goto_1
    if-lt v4, v14, :cond_0

    .line 388
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "s":Ljava/lang/String;
    .local v9, "s":Ljava/lang/String;
    move-object v8, v9

    .line 392
    .end local v4    # "i":I
    .end local v6    # "k":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "str":[C
    .end local v12    # "tmp":[B
    .restart local v8    # "s":Ljava/lang/String;
    :goto_2
    return-object v8

    .line 370
    .end local v3    # "hexDigits":[C
    .end local v8    # "s":Ljava/lang/String;
    .end local v10    # "source":[B
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 372
    const/4 v13, 0x0

    new-array v10, v13, [B

    .restart local v10    # "source":[B
    goto :goto_0

    .line 384
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "hexDigits":[C
    .restart local v4    # "i":I
    .restart local v6    # "k":I
    .restart local v7    # "md":Ljava/security/MessageDigest;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "str":[C
    .restart local v12    # "tmp":[B
    :cond_0
    :try_start_2
    aget-byte v0, v12, v4

    .line 385
    .local v0, "byte0":B
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    ushr-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v3, v13

    aput-char v13, v11, v6

    .line 386
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "k":I
    .restart local v6    # "k":I
    and-int/lit8 v13, v0, 0xf

    aget-char v13, v3, v13

    aput-char v13, v11, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "byte0":B
    .end local v4    # "i":I
    .end local v6    # "k":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v11    # "str":[C
    .end local v12    # "tmp":[B
    :catch_1
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 376
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static declared-synchronized remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 282
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 283
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit v2

    return-void

    .line 282
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveGood(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I
    .param p2, "record"    # Ljava/lang/String;

    .prologue
    .line 268
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 269
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "good_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit v2

    return-void

    .line 268
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 210
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 211
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit v2

    return-void

    .line 210
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 232
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 233
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v2

    return-void

    .line 232
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "record"    # Ljava/lang/String;

    .prologue
    .line 256
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 257
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v2

    return-void

    .line 256
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setAchieved(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 294
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 295
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "achievements_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit v2

    return-void

    .line 294
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setArenaRecord(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasRecord"    # Z

    .prologue
    .line 173
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 174
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "arena_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v2

    return-void

    .line 173
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setCard(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I
    .param p2, "record"    # Ljava/lang/String;

    .prologue
    .line 275
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 276
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "card"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit v2

    return-void

    .line 275
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setCardNum(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 239
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 240
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "card_num"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v2

    return-void

    .line 239
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setDragonType(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 125
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 126
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "giftpackage_type_dragon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v2

    return-void

    .line 125
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setGiftPackageShowTime(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # I

    .prologue
    .line 137
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 138
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "giftpackage_show_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v2

    return-void

    .line 137
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setGiftPackageType(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 113
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 114
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "giftpackage_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v2

    return-void

    .line 113
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setLevelPassed(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "world"    # I
    .param p2, "record"    # I

    .prologue
    .line 318
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 319
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "level_passed"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit v2

    return-void

    .line 318
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setLevelRecord(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I
    .param p2, "record"    # I

    .prologue
    .line 306
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 307
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "level_score_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit v2

    return-void

    .line 306
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setNewChecked(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checked"    # Z

    .prologue
    .line 154
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 155
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "NEW_CHECKED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v2

    return-void

    .line 154
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setRecord(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasRecord"    # Z

    .prologue
    .line 161
    const-class v2, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 162
    sget-object v1, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v2

    return-void

    .line 161
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setSafeInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "record"    # I

    .prologue
    .line 348
    const-class v4, Lcom/droidhen/fortconquer/CCPrefs;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->getWifiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "deviceRecord":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {p0}, Lcom/droidhen/fortconquer/CCPrefs;->ensureInit(Landroid/content/Context;)V

    .line 352
    sget-object v3, Lcom/droidhen/fortconquer/CCPrefs;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 353
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "record_md5":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_md5"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit v4

    return-void

    .line 348
    .end local v0    # "deviceRecord":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "record_md5":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
