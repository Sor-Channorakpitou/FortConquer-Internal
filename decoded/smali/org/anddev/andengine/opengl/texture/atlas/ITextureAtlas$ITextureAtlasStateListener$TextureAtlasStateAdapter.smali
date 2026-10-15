.class public Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;
.super Ljava/lang/Object;
.source "ITextureAtlas.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasStateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 51
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    return-void
.end method

.method public onTextureAtlasSourceLoadExeption(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Ljava/lang/Throwable;)V
    .locals 0
    .param p3, "pThrowable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    .local p1, "pTextureAtlas":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p2, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    return-void
.end method

.method public onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;

    .prologue
    .line 57
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    return-void
.end method
