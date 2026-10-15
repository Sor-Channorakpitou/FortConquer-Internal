.class public Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;
.super Lorg/anddev/andengine/collision/ShapeCollisionChecker;
.source "RectangularShapeCollisionChecker.java"


# static fields
.field private static final LINE_VERTEX_COUNT:I = 0x2

.field private static final RECTANGULARSHAPE_VERTEX_COUNT:I = 0x4

.field private static final VERTICES_COLLISION_TMP_A:[F

.field private static final VERTICES_COLLISION_TMP_B:[F

.field private static final VERTICES_CONTAINS_TMP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 26
    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    .line 27
    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    .line 28
    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/primitive/Line;)Z
    .locals 4
    .param p0, "pRectangularShape"    # Lorg/anddev/andengine/entity/shape/RectangularShape;
    .param p1, "pLine"    # Lorg/anddev/andengine/entity/primitive/Line;

    .prologue
    .line 77
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    .line 78
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/LineCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/primitive/Line;[F)V

    .line 80
    const/16 v0, 0x8

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    const/4 v2, 0x4

    sget-object v3, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v1, v2, v3}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method

.method public static checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z
    .locals 3
    .param p0, "pRectangularShapeA"    # Lorg/anddev/andengine/entity/shape/RectangularShape;
    .param p1, "pRectangularShapeB"    # Lorg/anddev/andengine/entity/shape/RectangularShape;

    .prologue
    const/16 v2, 0x8

    .line 70
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    .line 71
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    .line 73
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v2, v0, v2, v1}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method

.method public static checkContains(Lorg/anddev/andengine/entity/shape/RectangularShape;FF)Z
    .locals 2
    .param p0, "pRectangularShape"    # Lorg/anddev/andengine/entity/shape/RectangularShape;
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 51
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    .line 52
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v0

    return v0
.end method

.method private static fillVertices(Lorg/anddev/andengine/engine/camera/Camera;[F)V
    .locals 3
    .param p0, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p1, "pVertices"    # [F

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    aput v1, p1, v0

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v1

    aput v1, p1, v0

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v1

    aput v1, p1, v0

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v1

    aput v1, p1, v0

    .line 111
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v1

    aput v1, p1, v0

    .line 112
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v1

    aput v1, p1, v0

    .line 114
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    aput v1, p1, v0

    .line 115
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v1

    aput v1, p1, v0

    .line 117
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getRotation()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 118
    return-void
.end method

.method public static fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V
    .locals 6
    .param p0, "pRectangularShape"    # Lorg/anddev/andengine/entity/shape/RectangularShape;
    .param p1, "pVertices"    # [F

    .prologue
    const/4 v5, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "left":F
    const/4 v3, 0x0

    .line 86
    .local v3, "top":F
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getWidth()F

    move-result v2

    .line 87
    .local v2, "right":F
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getHeight()F

    move-result v0

    .line 89
    .local v0, "bottom":F
    const/4 v4, 0x0

    aput v5, p1, v4

    .line 90
    const/4 v4, 0x1

    aput v5, p1, v4

    .line 92
    const/4 v4, 0x2

    aput v2, p1, v4

    .line 93
    const/4 v4, 0x3

    aput v5, p1, v4

    .line 95
    const/4 v4, 0x4

    aput v2, p1, v4

    .line 96
    const/4 v4, 0x5

    aput v0, p1, v4

    .line 98
    const/4 v4, 0x6

    aput v5, p1, v4

    .line 99
    const/4 v4, 0x7

    aput v0, p1, v4

    .line 101
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    .line 102
    return-void
.end method

.method public static isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/primitive/Line;)Z
    .locals 4
    .param p0, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p1, "pLine"    # Lorg/anddev/andengine/entity/primitive/Line;

    .prologue
    .line 63
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/engine/camera/Camera;[F)V

    .line 64
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/LineCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/primitive/Line;[F)V

    .line 66
    const/16 v0, 0x8

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    const/4 v2, 0x4

    sget-object v3, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v1, v2, v3}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z
    .locals 3
    .param p0, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p1, "pRectangularShape"    # Lorg/anddev/andengine/entity/shape/RectangularShape;

    .prologue
    const/16 v2, 0x8

    .line 56
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/engine/camera/Camera;[F)V

    .line 57
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    .line 59
    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v2, v0, v2, v1}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method
