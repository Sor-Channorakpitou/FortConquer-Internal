.class public Lcom/gamepromote/offerwall/util/DataPreferences;
.super Ljava/lang/Object;
.source "DataPreferences.java"


# static fields
.field private static final FILENAME_OFFERWALL:Ljava/lang/String; = "ow_gamepromote"

.field private static final KEY_OFFERWALL_ACCEPTAD:Ljava/lang/String; = "offerwallacceptad_"

.field private static final KEY_OFFERWALL_DATAVERSION:Ljava/lang/String; = "offerwalldataversion"

.field public static prefsdata:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcceptAd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/gamepromote/offerwall/util/DataPreferences;->prefsdata:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offerwallacceptad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOfferWallDataVersion()I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/gamepromote/offerwall/util/DataPreferences;->prefsdata:Landroid/content/SharedPreferences;

    const-string v1, "offerwalldataversion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v0, Lcom/gamepromote/offerwall/util/DataPreferences;->prefsdata:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 17
    const-string v0, "ow_gamepromote"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/gamepromote/offerwall/util/DataPreferences;->prefsdata:Landroid/content/SharedPreferences;

    .line 19
    :cond_0
    return-void
.end method

.method public static setAcceptAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "userid"    # Ljava/lang/String;
    .param p1, "acceptAdStr"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v1, Lcom/gamepromote/offerwall/util/DataPreferences;->prefsdata:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offerwallacceptad_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static setOfferWallDataVersion(I)V
    .locals 2
    .param p0, "version"    # I

    .prologue
    .line 26
    sget-object v1, Lcom/gamepromote/offerwall/util/DataPreferences;->prefsdata:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "offerwalldataversion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method
