.class public Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;
.super Ljava/lang/Object;
.source "EuclideanHeuristic.java"

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
    .line 14
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;, "Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedRestCost(Lorg/anddev/andengine/util/path/ITiledMap;Ljava/lang/Object;IIII)F
    .locals 4
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
    .line 37
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;, "Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic<TT;>;"
    .local p1, "pTileMap":Lorg/anddev/andengine/util/path/ITiledMap;, "Lorg/anddev/andengine/util/path/ITiledMap<TT;>;"
    .local p2, "pEntity":Ljava/lang/Object;, "TT;"
    sub-int v2, p5, p3

    int-to-float v0, v2

    .line 38
    .local v0, "dX":F
    sub-int v2, p6, p4

    int-to-float v1, v2

    .line 40
    .local v1, "dY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method
