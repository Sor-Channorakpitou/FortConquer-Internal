.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;
.super Ljava/lang/Exception;
.source "ITextureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasSourcePackingException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x413c5d0da2bf813fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
