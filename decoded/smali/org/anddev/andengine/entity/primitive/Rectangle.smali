.class public Lorg/anddev/andengine/entity/primitive/Rectangle;
.super Lorg/anddev/andengine/entity/primitive/BaseRectangle;
.source "Rectangle.java"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFF)V

    .line 30
    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 47
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 48
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 49
    return-void
.end method
