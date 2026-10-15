.class public Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter;
.super Ljava/lang/Object;
.source "ITexture.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureStateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter;, "Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 70
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter;, "Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter<TT;>;"
    return-void
.end method

.method public onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 73
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter;, "Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter<TT;>;"
    return-void
.end method
