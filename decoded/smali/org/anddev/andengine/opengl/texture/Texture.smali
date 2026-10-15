.class public abstract Lorg/anddev/andengine/opengl/texture/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/ITexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    }
.end annotation


# static fields
.field private static final HARDWARETEXTUREID_FETCHER:[I


# instance fields
.field protected mHardwareTextureID:I

.field protected mLoadedToHardware:Z

.field protected final mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field protected final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field protected final mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

.field protected mUpdateOnHardwareNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture;->HARDWARETEXTUREID_FETCHER:[I

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 1
    .param p1, "pPixelFormat"    # Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .param p3, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    .line 47
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    .line 48
    iput-object p2, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 49
    iput-object p3, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    .line 50
    return-void
.end method


# virtual methods
.method protected applyTextureOptions(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureOptions;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 158
    return-void
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 149
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->bindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 150
    return-void
.end method

.method protected bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 161
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->forceBindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 162
    return-void
.end method

.method protected deleteTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 165
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 166
    return-void
.end method

.method protected generateHardwareTextureID(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    .line 169
    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture;->HARDWARETEXTUREID_FETCHER:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 171
    sget-object v0, Lorg/anddev/andengine/opengl/texture/Texture;->HARDWARETEXTUREID_FETCHER:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 172
    return-void
.end method

.method public getHardwareTextureID()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    return v0
.end method

.method public getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    return-object v0
.end method

.method public getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    return-object v0
.end method

.method public getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    return-object v0
.end method

.method public hasTextureStateListener()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    return v0
.end method

.method public isUpdateOnHardwareNeeded()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    return v0
.end method

.method public loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 110
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->generateHardwareTextureID(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 112
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 114
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->applyTextureOptions(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 116
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    .line 121
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;->onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 124
    :cond_0
    return-void
.end method

.method public reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 144
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 145
    return-void
.end method

.method public setLoadedToHardware(Z)V
    .locals 0
    .param p1, "pLoadedToHardware"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    .line 69
    return-void
.end method

.method public setUpdateOnHardwareNeeded(Z)V
    .locals 0
    .param p1, "pUpdateOnHardwareNeeded"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    .line 79
    return-void
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 128
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 130
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->deleteTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    .line 136
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;->onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected abstract writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
