.class public Lorg/anddev/andengine/level/LevelParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LevelParser.java"

# interfaces
.implements Lorg/anddev/andengine/level/util/constants/LevelConstants;


# instance fields
.field private final mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

.field private final mEntityLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "pDefaultEntityLoader"    # Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "pEntityLoaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;>;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/anddev/andengine/level/LevelParser;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    .line 36
    iput-object p2, p0, Lorg/anddev/andengine/level/LevelParser;->mEntityLoaders:Ljava/util/HashMap;

    .line 37
    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "pUri"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQualifiedName"    # Ljava/lang/String;
    .param p4, "pAttributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lorg/anddev/andengine/level/LevelParser;->mEntityLoaders:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    .line 50
    .local v0, "entityLoader":Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p2, p4}, Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;->onLoadEntity(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/level/LevelParser;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/anddev/andengine/level/LevelParser;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    invoke-interface {v1, p2, p4}, Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;->onLoadEntity(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected tag: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
