.class public Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;
.super Ljava/lang/Object;
.source "LevelStatsDBConnector.java"


# static fields
.field private static final PREFERENCES_LEVELSTATSDBCONNECTOR_PLAYERID_ID:Ljava/lang/String; = "preferences.levelstatsdbconnector.playerid"


# instance fields
.field private final mPlayerID:I

.field private final mSecret:Ljava/lang/String;

.field private final mSubmitURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pSecret"    # Ljava/lang/String;
    .param p3, "pSubmitURL"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSecret:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSubmitURL:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lorg/anddev/andengine/util/SimplePreferences;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, "simplePreferences":Landroid/content/SharedPreferences;
    const-string v2, "preferences.levelstatsdbconnector.playerid"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "playerID":I
    if-eq v0, v3, :cond_0

    .line 57
    iput v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const v2, 0x3b9aca00

    const v3, 0x7fffffff

    invoke-static {v2, v3}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v2

    iput v2, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    .line 60
    invoke-static {p1}, Lorg/anddev/andengine/util/SimplePreferences;->getEditorInstance(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences.levelstatsdbconnector.playerid"

    iget v4, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSubmitURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    return v0
.end method

.method static synthetic access$2(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSecret:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public submitAsync(IZI)V
    .locals 1
    .param p1, "pLevelID"    # I
    .param p2, "pSolved"    # Z
    .param p3, "pSecondsElapsed"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->submitAsync(IZILorg/anddev/andengine/util/Callback;)V

    .line 74
    return-void
.end method

.method public submitAsync(IZILorg/anddev/andengine/util/Callback;)V
    .locals 7
    .param p1, "pLevelID"    # I
    .param p2, "pSolved"    # Z
    .param p3, "pSecondsElapsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;-><init>(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;IZILorg/anddev/andengine/util/Callback;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method
