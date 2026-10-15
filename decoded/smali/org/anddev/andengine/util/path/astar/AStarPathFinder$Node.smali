.class Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;
.super Ljava/lang/Object;
.source "AStarPathFinder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/util/path/astar/AStarPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;",
        ">;"
    }
.end annotation


# instance fields
.field mCost:F

.field mDepth:I

.field mExpectedRestCost:F

.field mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

.field final mTileColumn:I

.field final mTileRow:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    .line 215
    iput p2, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    .line 216
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->compareTo(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I
    .locals 4

    .prologue
    .line 235
    .local p1, "pOther":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    iget v2, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    iget v3, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    add-float v0, v2, v3

    .line 236
    .local v0, "totalCost":F
    iget v2, p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    iget v3, p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    add-float v1, v2, v3

    .line 238
    .local v1, "totalCostOther":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 239
    const/4 v2, -0x1

    .line 243
    :goto_0
    return v2

    .line 240
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 241
    const/4 v2, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setParent(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I
    .locals 1

    .prologue
    .line 223
    .local p1, "parent":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    iget v0, p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    .line 224
    iput-object p1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    .line 226
    iget v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    return v0
.end method
