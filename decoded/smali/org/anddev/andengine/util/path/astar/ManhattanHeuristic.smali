.class public Lorg/anddev/andengine/util/path/astar/ManhattanHeuristic;
.super Ljava/lang/Object;
.source "ManhattanHeuristic.java"

# interfaces
.implements Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/ManhattanHeuristic;, "Lorg/anddev/andengine/util/path/astar/ManhattanHeuristic<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedRestCost(Lorg/anddev/andengine/util/path/ITiledMap;Ljava/lang/Object;IIII)F
    .locals 2
    .param p3, "pTileFromX"    # I
    .param p4, "pTileFromY"    # I
    .param p5, "pTileToX"    # I
    .param p6, "pTileToY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;TT;IIII)F"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/ManhattanHeuristic;, "Lorg/anddev/andengine/util/path/astar/ManhattanHeuristic<TT;>;"
    .local p1, "pTiledMap":Lorg/anddev/andengine/util/path/ITiledMap;, "Lorg/anddev/andengine/util/path/ITiledMap<TT;>;"
    .local p2, "pEntity":Ljava/lang/Object;, "TT;"
    sub-int v0, p3, p5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p5, p6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method
