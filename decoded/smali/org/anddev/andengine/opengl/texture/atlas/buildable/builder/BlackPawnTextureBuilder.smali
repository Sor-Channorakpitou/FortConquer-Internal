.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;
.super Ljava/lang/Object;
.source "BlackPawnTextureBuilder.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;,
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        "A::",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder",
        "<TT;TA;>;"
    }
.end annotation


# static fields
.field private static final TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mTextureAtlasSourceSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$1;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$1;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pTextureAtlasSourceSpacing"    # I

    .prologue
    .line 47
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder<TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->mTextureAtlasSourceSpacing:I

    .line 49
    return-void
.end method


# virtual methods
.method public pack(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder<TT;TA;>;"
    .local p1, "pTextureAtlas":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;, "TA;"
    .local p2, "pTextureAtlasSourcesWithLocationCallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TT;>;>;"
    const/4 v9, 0x0

    .line 61
    sget-object v6, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    new-instance v6, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v7

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;-><init>(IIII)V

    invoke-direct {v2, v6}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)V

    .line 65
    .local v2, "root":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 67
    .local v4, "textureSourceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 79
    return-void

    .line 68
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    .line 69
    .local v5, "textureSourceWithLocationCallback":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TT;>;"
    invoke-virtual {v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v3

    .line 71
    .local v3, "textureSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v6

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v7

    iget v8, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->mTextureAtlasSourceSpacing:I

    invoke-virtual {v2, v3, v6, v7, v8}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object v1

    .line 73
    .local v1, "inserted":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;"
    if-nez v1, :cond_1

    .line 74
    new-instance v6, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not pack: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_1
    invoke-static {v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    move-result-object v6

    invoke-static {v6}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)I

    move-result v6

    invoke-static {v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    move-result-object v7

    invoke-static {v7}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->access$1(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)I

    move-result v7

    invoke-interface {p1, v3, v6, v7}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    .line 77
    invoke-virtual {v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getCallback()Lorg/anddev/andengine/util/Callback;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
