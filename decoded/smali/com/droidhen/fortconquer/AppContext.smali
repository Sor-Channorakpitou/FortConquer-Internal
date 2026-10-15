.class public Lcom/droidhen/fortconquer/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/AppContext$FontType;
    }
.end annotation


# static fields
.field public static GAME_MODE_ARENA:I

.field public static GAME_MODE_STAGE:I

.field private static activity:Lcom/droidhen/fortconquer/GameActivity;

.field private static language:I

.field private static sGameMode:I

.field private static scaleYMakeup:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/droidhen/fortconquer/AppContext;->GAME_MODE_STAGE:I

    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/AppContext;->GAME_MODE_ARENA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Lcom/droidhen/fortconquer/GameActivity;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    return-object v0
.end method

.method public static getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "id":Ljava/lang/String;
    return-object v0
.end method

.method public static getGameMode()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/droidhen/fortconquer/AppContext;->sGameMode:I

    return v0
.end method

.method public static getLocale()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/droidhen/fortconquer/AppContext;->language:I

    return v0
.end method

.method public static getPlayer()Lcom/droidhen/fortconquer/units/Player;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    return-object v0
.end method

.method public static getScaleYMakeup()F
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/droidhen/fortconquer/AppContext;->scaleYMakeup:F

    return v0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I
    .param p1, "formats"    # [Ljava/lang/Object;

    .prologue
    .line 80
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0, p0, p1}, Lcom/droidhen/fortconquer/GameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeFace(IZ)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "type"    # I
    .param p1, "changeWithLocale"    # Z

    .prologue
    .line 89
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 91
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 101
    :goto_0
    return-object v0

    .line 93
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/CONSTAN.TTF"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/ArnoPro-Bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V
    .locals 1
    .param p0, "fonts"    # [Lorg/anddev/andengine/opengl/font/Font;

    .prologue
    .line 59
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 60
    return-void
.end method

.method public static varargs loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V
    .locals 1
    .param p0, "textures"    # [Lorg/anddev/andengine/opengl/texture/Texture;

    .prologue
    .line 55
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 56
    return-void
.end method

.method protected static setActivity(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    .line 47
    sput-object p0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    .line 48
    return-void
.end method

.method public static setGameMode(I)V
    .locals 0
    .param p0, "pGameMode"    # I

    .prologue
    .line 109
    sput p0, Lcom/droidhen/fortconquer/AppContext;->sGameMode:I

    .line 110
    return-void
.end method

.method public static setLocale(I)V
    .locals 0
    .param p0, "lan"    # I

    .prologue
    .line 35
    sput p0, Lcom/droidhen/fortconquer/AppContext;->language:I

    .line 36
    return-void
.end method

.method public static setScaleYMakeup(F)V
    .locals 0
    .param p0, "scaleYMakeup"    # F

    .prologue
    .line 71
    sput p0, Lcom/droidhen/fortconquer/AppContext;->scaleYMakeup:F

    .line 72
    return-void
.end method

.method public static varargs unloadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V
    .locals 1
    .param p0, "textures"    # [Lorg/anddev/andengine/opengl/texture/Texture;

    .prologue
    .line 51
    sget-object v0, Lcom/droidhen/fortconquer/AppContext;->activity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->unloadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 52
    return-void
.end method
