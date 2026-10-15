.class public Lorg/anddev/andengine/util/path/astar/AStarPathFinder;
.super Ljava/lang/Object;
.source "AStarPathFinder.java"

# interfaces
.implements Lorg/anddev/andengine/util/path/IPathFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/path/IPathFinder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAStarHeuristic:Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mAllowDiagonalMovement:Z

.field private final mMaxSearchDepth:I

.field private final mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

.field private final mOpenNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mVisitedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/path/ITiledMap;IZ)V
    .locals 1
    .param p2, "pMaxSearchDepth"    # I
    .param p3, "pAllowDiagonalMovement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/AStarPathFinder;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder<TT;>;"
    .local p1, "pTiledMap":Lorg/anddev/andengine/util/path/ITiledMap;, "Lorg/anddev/andengine/util/path/ITiledMap<TT;>;"
    new-instance v0, Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;

    invoke-direct {v0}, Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;-><init>(Lorg/anddev/andengine/util/path/ITiledMap;IZLorg/anddev/andengine/util/path/astar/IAStarHeuristic;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/path/ITiledMap;IZLorg/anddev/andengine/util/path/astar/IAStarHeuristic;)V
    .locals 5
    .param p2, "pMaxSearchDepth"    # I
    .param p3, "pAllowDiagonalMovement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;IZ",
            "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/AStarPathFinder;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder<TT;>;"
    .local p1, "pTiledMap":Lorg/anddev/andengine/util/path/ITiledMap;, "Lorg/anddev/andengine/util/path/ITiledMap<TT;>;"
    .local p4, "pAStarHeuristic":Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;, "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mVisitedNodes:Ljava/util/ArrayList;

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mOpenNodes:Ljava/util/ArrayList;

    .line 46
    iput-object p4, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAStarHeuristic:Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;

    .line 47
    iput-object p1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    .line 48
    iput p2, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mMaxSearchDepth:I

    .line 49
    iput-boolean p3, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAllowDiagonalMovement:Z

    .line 51
    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileRows()I

    move-result v3

    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileColumns()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    iput-object v3, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    .line 52
    iget-object v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    .line 53
    .local v0, "nodes":[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;
    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileColumns()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "x":I
    :goto_0
    if-gez v1, :cond_0

    .line 58
    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileRows()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "y":I
    :goto_1
    if-gez v2, :cond_1

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    :cond_1
    aget-object v3, v0, v2

    new-instance v4, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-direct {v4, v1, v2}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;-><init>(II)V

    aput-object v4, v3, v1

    .line 54
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public findPath(Ljava/lang/Object;IIIII)Lorg/anddev/andengine/util/path/Path;
    .locals 29
    .param p2, "pMaxCost"    # I
    .param p3, "pFromTileColumn"    # I
    .param p4, "pFromTileRow"    # I
    .param p5, "pToTileColumn"    # I
    .param p6, "pToTileRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIII)",
            "Lorg/anddev/andengine/util/path/Path;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/AStarPathFinder;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder<TT;>;"
    .local p1, "pEntity":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    move-object/from16 v25, v0

    .line 71
    .local v25, "tiledMap":Lorg/anddev/andengine/util/path/ITiledMap;, "Lorg/anddev/andengine/util/path/ITiledMap<TT;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lorg/anddev/andengine/util/path/ITiledMap;->isTileBlocked(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    const/16 v24, 0x0

    .line 170
    :goto_0
    return-object v24

    .line 76
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mOpenNodes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 77
    .local v23, "openNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mVisitedNodes:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 79
    .local v28, "visitedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    move-object/from16 v22, v0

    .line 80
    .local v22, "nodes":[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;
    aget-object v4, v22, p4

    aget-object v18, v4, p3

    .line 81
    .local v18, "fromNode":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    aget-object v4, v22, p6

    aget-object v27, v4, p5

    .line 83
    .local v27, "toNode":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAStarHeuristic:Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;

    .line 84
    .local v12, "aStarHeuristic":Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;, "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAllowDiagonalMovement:Z

    .line 85
    .local v13, "allowDiagonalMovement":Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mMaxSearchDepth:I

    move/from16 v19, v0

    .line 88
    .local v19, "maxSearchDepth":I
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    .line 89
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    .line 90
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    .line 92
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 95
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v15, 0x0

    .line 98
    .local v15, "currentDepth":I
    :cond_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    :cond_2
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    if-nez v4, :cond_a

    .line 158
    const/16 v24, 0x0

    goto :goto_0

    .line 100
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    .line 101
    .local v14, "current":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    move-object/from16 v0, v27

    if-eq v14, v0, :cond_2

    .line 105
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const/16 v16, -0x1

    .local v16, "dX":I
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v16

    if-gt v0, v4, :cond_1

    .line 109
    const/16 v17, -0x1

    .local v17, "dY":I
    :goto_2
    const/4 v4, 0x1

    move/from16 v0, v17

    if-le v0, v4, :cond_4

    .line 108
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 110
    :cond_4
    if-nez v16, :cond_6

    if-nez v17, :cond_6

    .line 109
    :cond_5
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 114
    :cond_6
    if-nez v13, :cond_7

    .line 115
    if-eqz v16, :cond_7

    if-nez v17, :cond_5

    .line 120
    :cond_7
    iget v4, v14, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    add-int v8, v16, v4

    .line 121
    .local v8, "neighborTileColumn":I
    iget v4, v14, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    add-int v9, v17, v4

    .local v9, "neighborTileRow":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    .line 123
    invoke-virtual/range {v4 .. v9}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->isTileBlocked(Ljava/lang/Object;IIII)Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    iget v10, v14, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    iget v6, v14, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    iget v7, v14, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    move-object/from16 v4, v25

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lorg/anddev/andengine/util/path/ITiledMap;->getStepCost(Ljava/lang/Object;IIII)F

    move-result v4

    add-float v21, v10, v4

    .line 125
    .local v21, "neighborCost":F
    aget-object v4, v22, v9

    aget-object v20, v4, v8

    .line 126
    .local v20, "neighbor":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    move-object/from16 v0, v25

    invoke-interface {v0, v8, v9}, Lorg/anddev/andengine/util/path/ITiledMap;->onTileVisitedByPathFinder(II)V

    .line 129
    move-object/from16 v0, v20

    iget v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    cmpg-float v4, v21, v4

    if-gez v4, :cond_9

    .line 131
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 132
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_8
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 135
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    :cond_9
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 140
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    .line 141
    move-object/from16 v0, v20

    iget v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    move/from16 v0, p2

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    move-object v5, v12

    move-object/from16 v6, v25

    move-object/from16 v7, p1

    move/from16 v10, p5

    move/from16 v11, p6

    .line 142
    invoke-interface/range {v5 .. v11}, Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;->getExpectedRestCost(Lorg/anddev/andengine/util/path/ITiledMap;Ljava/lang/Object;IIII)F

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    .line 143
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->setParent(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 144
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_3

    .line 162
    .end local v8    # "neighborTileColumn":I
    .end local v9    # "neighborTileRow":I
    .end local v14    # "current":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    .end local v16    # "dX":I
    .end local v17    # "dY":I
    .end local v20    # "neighbor":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    .end local v21    # "neighborCost":F
    :cond_a
    new-instance v24, Lorg/anddev/andengine/util/path/Path;

    invoke-direct/range {v24 .. v24}, Lorg/anddev/andengine/util/path/Path;-><init>()V

    .line 163
    .local v24, "path":Lorg/anddev/andengine/util/path/Path;
    aget-object v4, v22, p6

    aget-object v26, v4, p5

    .line 164
    .local v26, "tmp":Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;"
    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 168
    move-object/from16 v0, v24

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/util/path/Path;->prepend(II)V

    goto/16 :goto_0

    .line 165
    :cond_b
    move-object/from16 v0, v26

    iget v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    move-object/from16 v0, v26

    iget v5, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/anddev/andengine/util/path/Path;->prepend(II)V

    .line 166
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    move-object/from16 v26, v0

    goto :goto_4
.end method

.method protected isTileBlocked(Ljava/lang/Object;IIII)Z
    .locals 2
    .param p2, "pFromTileColumn"    # I
    .param p3, "pFromTileRow"    # I
    .param p4, "pToTileColumn"    # I
    .param p5, "pToTileRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/AStarPathFinder;, "Lorg/anddev/andengine/util/path/astar/AStarPathFinder<TT;>;"
    .local p1, "pEntity":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 178
    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    iget-object v1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    invoke-interface {v1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileColumns()I

    move-result v1

    if-ge p4, v1, :cond_0

    iget-object v1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    invoke-interface {v1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileRows()I

    move-result v1

    if-lt p5, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-ne p2, p4, :cond_2

    if-eq p3, p5, :cond_0

    .line 184
    :cond_2
    iget-object v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    invoke-interface {v0, p1, p4, p5}, Lorg/anddev/andengine/util/path/ITiledMap;->isTileBlocked(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method
