.class public Lorg/anddev/andengine/util/path/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/path/Path$Step;
    }
.end annotation


# instance fields
.field private final mSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/path/Path$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public append(II)V
    .locals 1
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 76
    new-instance v0, Lorg/anddev/andengine/util/path/Path$Step;

    invoke-direct {v0, p0, p1, p2}, Lorg/anddev/andengine/util/path/Path$Step;-><init>(Lorg/anddev/andengine/util/path/Path;II)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->append(Lorg/anddev/andengine/util/path/Path$Step;)V

    .line 77
    return-void
.end method

.method public append(Lorg/anddev/andengine/util/path/Path$Step;)V
    .locals 1
    .param p1, "pStep"    # Lorg/anddev/andengine/util/path/Path$Step;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public contains(II)Z
    .locals 4
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 92
    iget-object v2, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    .line 93
    .local v2, "steps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/util/path/Path$Step;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 99
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 94
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/util/path/Path$Step;

    .line 95
    .local v1, "step":Lorg/anddev/andengine/util/path/Path$Step;
    invoke-virtual {v1}, Lorg/anddev/andengine/util/path/Path$Step;->getTileColumn()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lorg/anddev/andengine/util/path/Path$Step;->getTileRow()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 96
    const/4 v3, 0x1

    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getDirectionToNextStep(I)Lorg/anddev/andengine/util/path/Direction;
    .locals 4
    .param p1, "pIndex"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/anddev/andengine/util/path/Path;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 55
    :goto_0
    return-object v2

    .line 53
    :cond_0
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 54
    .local v0, "dX":I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 55
    .local v1, "dY":I
    invoke-static {v0, v1}, Lorg/anddev/andengine/util/path/Direction;->fromDelta(II)Lorg/anddev/andengine/util/path/Direction;

    move-result-object v2

    goto :goto_0
.end method

.method public getDirectionToPreviousStep(I)Lorg/anddev/andengine/util/path/Direction;
    .locals 4
    .param p1, "pIndex"    # I

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 45
    :goto_0
    return-object v2

    .line 43
    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 44
    .local v0, "dX":I
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 45
    .local v1, "dY":I
    invoke-static {v0, v1}, Lorg/anddev/andengine/util/path/Direction;->fromDelta(II)Lorg/anddev/andengine/util/path/Direction;

    move-result-object v2

    goto :goto_0
.end method

.method public getFromTileColumn()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v0

    return v0
.end method

.method public getFromTileRow()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStep(I)Lorg/anddev/andengine/util/path/Path$Step;
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/path/Path$Step;

    return-object v0
.end method

.method public getTileColumn(I)I
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getStep(I)Lorg/anddev/andengine/util/path/Path$Step;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/util/path/Path$Step;->getTileColumn()I

    move-result v0

    return v0
.end method

.method public getTileRow(I)I
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getStep(I)Lorg/anddev/andengine/util/path/Path$Step;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/util/path/Path$Step;->getTileRow()I

    move-result v0

    return v0
.end method

.method public getToTileColumn()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v0

    return v0
.end method

.method public getToTileRow()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v0

    return v0
.end method

.method public prepend(II)V
    .locals 1
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 84
    new-instance v0, Lorg/anddev/andengine/util/path/Path$Step;

    invoke-direct {v0, p0, p1, p2}, Lorg/anddev/andengine/util/path/Path$Step;-><init>(Lorg/anddev/andengine/util/path/Path;II)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->prepend(Lorg/anddev/andengine/util/path/Path$Step;)V

    .line 85
    return-void
.end method

.method public prepend(Lorg/anddev/andengine/util/path/Path$Step;)V
    .locals 2
    .param p1, "pStep"    # Lorg/anddev/andengine/util/path/Path$Step;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    return-void
.end method
