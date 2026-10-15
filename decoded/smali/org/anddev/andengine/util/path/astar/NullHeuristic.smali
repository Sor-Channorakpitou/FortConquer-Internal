.class public Lorg/anddev/andengine/util/path/astar/NullHeuristic;
.super Ljava/lang/Object;
.source "NullHeuristic.java"

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
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/NullHeuristic;, "Lorg/anddev/andengine/util/path/astar/NullHeuristic<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedRestCost(Lorg/anddev/andengine/util/path/ITiledMap;Ljava/lang/Object;IIII)F
    .locals 1
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
    .local p0, "this":Lorg/anddev/andengine/util/path/astar/NullHeuristic;, "Lorg/anddev/andengine/util/path/astar/NullHeuristic<TT;>;"
    .local p1, "pTiledMap":Lorg/anddev/andengine/util/path/ITiledMap;, "Lorg/anddev/andengine/util/path/ITiledMap<TT;>;"
    .local p2, "pEntity":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method
